Includes = {
	"constants.fxh"
	"borders.fxh"
	"terra_incognita.fxh"
}

PixelShader =
{
	Samplers =
	{
		Diffuse = {
			Index = 0;
			MagFilter = "Linear";
			MinFilter = "Linear";
			AddressU = "Wrap";
			AddressV = "Wrap";
		}
		BorderID = {
			Index = 1;
			MagFilter = "point";
			MinFilter = "point";
			MipFilter = "none";
			AddressU = "Clamp";
			AddressV = "Clamp";
		}
		BorderColor = {
			Index = 2;
			MagFilter = "point";
			MinFilter = "point";
			MipFilter = "none";
			AddressU = "Clamp";
			AddressV = "Clamp";
		}
		TerraIncognitaTexture = 
		{
			Index = 3;
			MagFilter = "Linear";
			MinFilter = "Linear";
			AddressU = "Clamp"
			AddressV = "Clamp"
		}
	}
}

VertexStruct VS_INPUT
{
	float2  vPosition 	: POSITION;
	float2  vUV 		: TEXCOORD0;
};

VertexStruct VS_INPUT_STAR_PIN
{
	float2	vOffset		: POSITION;
	float	vGroundStarBlend : TEXCOORD0;
};

VertexStruct VS_OUTPUT_STAR_PIN
{
	float4 vPosition	: PDX_POSITION;
	float3 vPos			: TEXCOORD0;
};

VertexStruct VS_INPUT_FULLSCREEN
{
    int2 position	: POSITION;
};

VertexStruct VS_OUTPUT
{
    float4 vPosition 	: PDX_POSITION;
	float2 vUV			: TEXCOORD0;
	float2 vPos			: TEXCOORD2;
};

VertexStruct VS_INPUT_SECTOR
{
	float2	vPosition	: POSITION;
	float	vDistance	: TEXCOORD0;
};

VertexStruct VS_OUTPUT_SECTOR
{
	float4 	vPosition 	: PDX_POSITION;
	float2 	vUV			: TEXCOORD0;
	float 	vDistance	: TEXCOORD1;
};

ConstantBuffer( 0, 0 )	#Country borders
{
	float4x4	ViewProjectionMatrix;
	float3		vCamPos;
	float3		vCamLookAtDir;
	float3		vCamUpDir;
	float3		vCamRightDir;
	float2		vCamFOV;
	float 		vFade;
	float		vTextureSize;
};

ConstantBuffer( 0, 0 )	#Star pins
{
	float4x4	ViewProjectionMatrix_Duplicate1;
	float3		StarPos;
	float3		GroundPos;
	float4		vStarPinColor;
};

ConstantBuffer( 0, 0 )	#Sector borders
{
	float4x4	ViewProjectionMatrix_Duplicate2;
	float3		vCamPos_Duplicate1;
	float		vCamZoom;
	float4		Color;
	float		vPlayerID;
	float		vBorderIDTextureSize;
	float		vSelected;
	float		vTime;
}

VertexShader =
{
	MainCode VertexShader
	[[
		VS_OUTPUT main(const VS_INPUT v )
		{
			VS_OUTPUT Out;
			Out.vPosition  	= mul( ViewProjectionMatrix, float4( v.vPosition.x, 0.0f, v.vPosition.y, 1.0f ) );
			Out.vUV			= v.vUV;
			Out.vPos 		= v.vPosition.xy;
			return Out;
		}
		
	]]
	MainCode VertexShaderFullscreen
	[[
		VS_OUTPUT main(const VS_INPUT_FULLSCREEN v )
		{
			VS_OUTPUT Out;
			Out.vPosition  	= mul( ViewProjectionMatrix, float4( v.position.x * 1000.f, 0.0f, v.position.y * 1000.f, 1.0f ) );
			
			Out.vUV = ( v.position + 1.0f ) * 0.5f;
			Out.vPos = float2( v.position );
			return Out;
		}
		
	]]
	MainCode VertexShaderStarPin
	[[
		VS_OUTPUT_STAR_PIN main( const VS_INPUT_STAR_PIN v )
		{
			VS_OUTPUT_STAR_PIN Out;
			float3 vPos = lerp( GroundPos, StarPos, v.vGroundStarBlend );
			vPos.xz += v.vOffset;
			
			//float3 vPos = float3( v.vOffset.x, v.vGroundStarBlend * 100.f, v.vOffset.y );
			//vPos += StarPos;
			Out.vPosition  	= mul( ViewProjectionMatrix, float4( vPos, 1.0f ) );
			Out.vPos = vPos;
			return Out;
		}
	]]
	MainCode VertexShaderSector
	[[
		VS_OUTPUT_SECTOR main(const VS_INPUT_SECTOR v )
		{
			VS_OUTPUT_SECTOR Out;
			Out.vPosition  	= mul( ViewProjectionMatrix, float4( v.vPosition.x, 0.0f, v.vPosition.y, 1.0f ) );
			Out.vUV 		= ( v.vPosition / 2000.f ) + vec2( 0.5f );
			Out.vDistance	= v.vDistance;
			return Out;
		}
		
	]]
}

PixelShader =
{
	MainCode PixelShader
	[[
		float4 main( VS_OUTPUT v ) : PDX_COLOR
		{
			float4 vColor = GetBorderColor( v.vUV, BorderID, vTextureSize, BorderColor );
			clip( vColor.a - 0.01f );
			//vColor.a *= 0.3f;
			return vColor;
		}
		
	]]
	
	MainCode PixelShaderFullscreen
	[[
		float4 main( VS_OUTPUT v ) : PDX_COLOR
		{	
			float4 vBorderColor = GetBorderColor( v.vUV, BorderID, vTextureSize, BorderColor );
			//return float4( vBorderUV, 0.f, 0.5f );
			return vBorderColor;
		}
	]]
	
	MainCode PixelShaderCentroid
	[[
		float4 main( VS_OUTPUT v ) : PDX_COLOR
		{
			float4 vColor = tex2D( Diffuse, float2( -v.vUV.x, v.vUV.y ) );
			vColor.a *= vFade;
			return vColor;
		}
		
	]]
	MainCode PixelShaderStarPin
	[[
		float4 main( VS_OUTPUT_STAR_PIN v ) : PDX_COLOR
		{
			float4 vColor = vStarPinColor;
			vColor.a *= 0.2f;
			
			vColor = ApplyTerraIncognita( vColor, v.vPos.xz, 4.f, TerraIncognitaTexture );
			
			return vColor;
		}
	]]
	MainCode PixelShaderSector
	[[
		float4 main( VS_OUTPUT_SECTOR v ) : PDX_COLOR
		{
			float vDistance = v.vDistance;
			clip( vDistance - 0.0001f );
			
			float vBorderIntensity;
			float vBorderID = GetBorderID( v.vUV, vBorderIntensity, BorderID, vBorderIDTextureSize );
			
			clip( 0.1f - abs( vBorderID*255 - vPlayerID - 1 ) );
			
			float vBorderStart = 0.6f;
			float vBorderStop = 0.7f + 0.2 * ( vCamZoom - 100.f ) / 3000.f ;
			clip( vBorderIntensity - vBorderStart );
			float vDistancePerIntensity = ( 2000.f / vBorderIDTextureSize ) * ( vBorderStop - vBorderStart );
			vBorderIntensity = ( vBorderIntensity - vBorderStart ) / ( vBorderStop - vBorderStart );
			
			if( vBorderIntensity < vBorderStop )
				vDistance = min( vDistance, vBorderIntensity * vDistancePerIntensity );			
			
			float vThickness = 0.2f + vSelected * 0.5f + ( vCamZoom / 3000.f );
			float vInvThickness = 1.f / vThickness;
			
			//1 - ( (x - 0.25) * 4 ) ^ 2
			float vValue = 1.f - pow( ( vDistance - vThickness ) * vInvThickness, 2.f );
			
			if( v.vDistance > vThickness )
			{
				vValue = max( vValue, 0.1f );
			}
			vValue = saturate( vValue );
			
			float3 vColor = float3( 1.f, 1.f, 1.f );
			float3 Selected = float3( 1.f, 1.f, 1.0f );
			
			vValue += vSelected * ( sin( vTime * 3 ) * 0.15f + 0.15f );
			
			vColor = lerp( vColor, Selected, vSelected );
			
			return float4( vColor * vValue, 0.35f );
		}
		
	]]
}

BlendState BlendState
{
	BlendEnable = yes
	AlphaTest = no
	SourceBlend = "SRC_ALPHA"
	DestBlend = "INV_SRC_ALPHA"
	WriteMask = "RED|GREEN|BLUE|ALPHA"
}

BlendState BlendStateAdditiveBlend
{
	BlendEnable = yes
	SourceBlend = "SRC_ALPHA"
	DestBlend = "ONE"
	WriteMask = "RED|GREEN|BLUE|ALPHA"
}

DepthStencilState DepthStencilState
{
	DepthEnable = no
	DepthWriteMask = "depth_write_zero"
}

RasterizerState RasterizerState
{
	FillMode = "FILL_SOLID"
	CullMode = "CULL_NONE"
	FrontCCW = no
	
	#FillMode = "fill_wireframe"	
}

Effect Border
{
	VertexShader = "VertexShader"
	PixelShader = "PixelShader"
}

Effect BorderFullscreen
{
	VertexShader = "VertexShaderFullscreen"
	PixelShader = "PixelShaderFullscreen"
}

Effect BorderCentroid
{
	VertexShader = "VertexShader"
	PixelShader = "PixelShaderCentroid"
}

Effect StarPin
{
	VertexShader = "VertexShaderStarPin"
	PixelShader = "PixelShaderStarPin"
	
	BlendState = "BlendStateAdditiveBlend"
}

Effect Sector
{
	VertexShader = "VertexShaderSector"
	PixelShader = "PixelShaderSector"
	
	BlendState = "BlendStateAdditiveBlend"
}