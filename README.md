It's a mod collection for Chinese. 这是中文整合包
# Inkit MOD整合包
 最近主要在做HOI4的整合包。 http://bbs.3dmgame.com/thread-5108890-1-1.html
 
## 使用方法 （选择下列方式之一）

百度云： http://pan.baidu.com/s/1pLxjUbT 

Github: https://github.com/inkitter/Stellaris_mod

## Steam Workshop 创意工坊： 

Inkitmod: http://steamcommunity.com/sharedfiles/filedetails/?id=722810600 
InkitmodPlus: http://steamcommunity.com/sharedfiles/filedetails/?id=722810756
More Chinese: http://steamcommunity.com/sharedfiles/filedetails/?id=687203571

--------

**更新时请删除原文件夹内容**

## 手动安装法
1. 解压所有的.mod文件与_Inkitmod、_morechn 文件夹 放在  文档\Paradox Interactive\Stellaris\mod\ 内。

**以下的方法安装与更新较方便，但有个要求：解压到的文件夹和“我的文档”文件夹在同一块物理硬盘上（分区可以不一样）。（双硬盘需注意）**
## 半自动安装法
1. 解压所有文件到某个妥当的文件夹 **（安装完也不要删除，会调用这个文件夹）**。
2. 运行 $1安装.bat。 （**若运行失败，用右键 “以管理员权限运行”**）

## Github 安装（用这个方式安装，更新起来最省事，而且能用到我的最新的版本，不过需要学习一下）
1. （已有的跳过）安装git软件： https://git-scm.com/download/win （安装时注意取消勾选windows explorer intergration以防在右键菜单加入不必要的功能）。 分流: http://pan.baidu.com/s/1cLsbaI
2. 命令提示符使用git安装： `` git clone https://github.com/inkitter/Stellaris_mod.git `` 或者使用我提供的 使用git安装.bat 文件。
3. 比如将 bat 文件放在 D:\Game 文件夹里，运行之后会有个窗口显示下载进度。 同时会在 D:\Game 文件夹里创建一个Stellaris_mod 文件夹，所有的mod文件都在这里。 之后就可以删除这个 使用git安装.bat 了
4. 然后运行 1安装.bat安装就完成了。
5. 更新方法： 运行 使用Git更新.bat 会将本地文件夹与我的github项目同步，你在本地做的任何修改都会被同步成远程的，同时会更新你的游戏mod文件夹里的.mod文件。

--------

## !Inkitmod
* Chinese font  （悦黑）简体中文字库v4.6  http://steamcommunity.com/sharedfiles/filedetails/?id=682681372
* 1.21版汉化 （3DM汉化包基础）  ``\localisation\*.yml`` http://steamcommunity.com/sharedfiles/filedetails/?id=683978765
http://steamcommunity.com/sharedfiles/filedetails/?id=687203571
* Complete Colors  种族设计界面有更多（RGB）可选颜色，注意这个多颜色选择会与其他的冲突，请不要再加载其他增加可选颜色的mod，这个已经是颜色最全的 flags\colors.txt及interface\zCompleteColors.gui 
* Color coded pop status icons 彩色的人口状态图标
* Reduce Aura Graphics 减轻单位光环的视觉效果。
* Beautiful Battles 中的gfx调整。
* 星区视觉效果调整。

## !More Chinese 
* !More Chinese  自制的一些工坊英文mod汉化包。 整合More Chinese Perfect： http://steamcommunity.com/sharedfiles/filedetails/?id=704525773

## !Inkitmod Plus 整合按以下原则：①基本不怎么更新②比较实用③兼容性比较好④会影响成就与联机
* Unique Resources 战略资源图标替换，战略资源图示更容易区别（比如原版两种蓝色的矿……）。
* Chinese name **汉语随机命名** 星系、帝国等多个部分用汉语命名。
* More Map Size  新建游戏时，星系大小有等多选择，从很少到很多的更多选项。且根据大小标记成不同的颜色。
* Ring World   种族设计界面：添加“圆环世界”，会有起始25格的行星，有三种圆环可选。 ``common\solar_system_initializers\ringworld_st_systems.txt``
* Change Capital Planet 改变首都。 __morechn已汉化__。
* Planetary Rally Points 设置舰队集结点。 __morechn已汉化__。
* Fox Leader Mod 领袖等级上限调整等领袖强化。
* Yet Another Traits Mod 更多领袖特性 __morechn已汉化__
* Extended Traits  更多的领袖特长。  __morechn已汉化__。

## 独立包 原则：①包含内容较多②可能存在冲突③mod本身可能存在bug
### 图案、界面替换 (不影响联机与成就)
* !More Flags 多个种族设计界面的纹章和背景整合。
* %%Remove Aura Graphics 移除单位光环的视觉效果。（主包已整合减轻效果，可不开启）

### 功能性
* +Easybuff 自制的政策界面作弊。前缀为“作弊”的一系列政策。已分离成单独mod。 
* +Expanded Spaceport 24格空间站 
* +Auto improve buildings 自动升级建筑 __morechn已汉化__
* +Colony Ship Start 殖民船开局 __morechn已汉化__

### 综合类
* -Alphamod 增加了许多资源和建筑的mod。
* -Civilian Trade __morechn已汉化__
* -COFH Exp 一个多方面内容的扩展mod。 __morechnperfect已汉化__
* -Crystallis Ship Modules Expansion 水晶船模块扩展 __morechn已汉化__
* -More events mod 更多的事件。 
* -More Spaceport Modules  更多的空间站模块。 __morechn已汉化__。
* -New Ship Classes & More 更多类型的船 __morechnperfect已汉化__
* -The Belt 可在不能殖民的星球殖民，此mod内容较多 __morechn已汉化__
* -More Technologies  更多的科技。 __morechn已汉化__。   这个包是多个增量mod的整合包，修改较多较复杂，不过挺好玩的。
* ZBeautiful Battles 漂亮的战斗。

--------

## 记录
* 160519 初次发布
* 160601 游戏更新1.1版
* 160620 整合包架构更新。
* 160712 更新1.21
