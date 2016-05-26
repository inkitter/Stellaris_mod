# Inkit MOD整合包

下载地址： http://pan.baidu.com/s/1pLxjUbT 

* 放在 ** 文档\Paradox Interactive\Stellaris\mod\ **文件夹内，并在游戏启动器里勾选Inkitmod、morechn以及其他需要的mod。
* 欢迎给我推荐值得加入的mod。另外有BUG请在帖子里留言。
* 主包主要是为了安装其他mod方便一些，这些不会强制性的影响游戏性，又是很常用而且不是很需要更新的mod。**会影响steam铁人成就**。
* 可选包是搬运Steam工坊里增加游戏内容的mod。至于加个种族换几张图片的mod我就不搬了。即使我这里的可选包也可能会有相互不兼容或者内容重复的可能性，因此不要无脑开启所有，选择性的加载比较妥。


##另外依然推广使用Github协作制作mod
https://github.com/inkitter/Stellaris_mod 

## 主包 Inkit MOD
整合了以下mod：

###汉化包
* Chinese font  简体中文字库v4.6  来自 http://steamcommunity.com/sharedfiles/filedetails/?id=682681372
* 3dmchn2.5  3DM汉化包  localisation\replace 文件夹内，若想使用其他汉化包，或者是升级直接把别的.yml文件覆盖进来即可。
* morechn   我自制的一些工坊英文mod汉化包。支持的mod详见morechn发布帖 http://bbs.3dmgame.com/thread-5095348-1-1.html 。

###改进
* Ring World   种族设计界面：添加“圆环世界”，会有起始25格的行星，有三种圆环可选。 common\solar_system_initializers\ringworld_st_systems.txt
* Complete Colors  种族设计界面有更多（RGB）可选颜色，注意这个多颜色选择会与其他的冲突，请不要再加载其他增加可选颜色的mod，这个已经是颜色最全的 flags\colors.txt
* Galaxies Unlimited  新建游戏时，星系大小有等多选择，从很少到很多的更多选项。
* Tech tab height  科技研发面板高度调整，可以一下子看到更多可选项，不再被滚动条所烦恼。
* Reduce Aura Graphics  减轻单位光环的视觉效果，更容易看到船而不是光环。
* 汉语种族随机名  种族设计界面以汉语命名的可选类型，随机汉语船、人名等。

###游戏性
* Leader level Uncap to 10  领袖最高等级从5调整到10  在 common\defines\00_skillcap.lua
* easybuf 自制的政策界面作弊。名为“简单模式增益”。在 common\edicts\00_easybuf.txt

## 选择性安装包
### 不保证选择性安装包的兼容性，一起开有可能产生未知后果。
* 多个种族设计界面的纹章和背景整合：光环、日式、Flags:Emblems & Backgrounds、IT、星际之门、现实国家风格、刺客信条等。 （更多的旗帜与背景整合.zip 压缩包）
* Unique Resources 战略资源图标替换，战略资源图示更容易区别（比如原版两种蓝色的矿……），但因样式修改较大，放在可选包。
* Chinese random country name **汉语随机命名** 多个部分用汉语命名，但考虑过于破坏原本游戏的未来太空感觉，放在可选包。
* Beautiful Battles  漂亮的战斗。 提高了战斗的美观度，有不少战斗平衡性调整，例如舰船战斗阵形优化等。但此mod改变的数据较多，想体验原始战斗设计还是不开启较好。
* More Technologies  更多的科技。 __morechn已汉化__。   这个包是Advanced Buildings等mod的整合包，修改较多较复杂，**启用了它就不要启用Advanced Buildings**。
* Advanced Buildings  高级建筑。 __morechn已汉化__。   More Technologies新增建筑的独立mod，**请不要同时开启**。
* Research All FTL  可以研究所有FTL迁跃理论。   More Technologies也有类似的科技，**请不要同时开启**
* More Spaceport Modules  更多的空间站模块。 __morechn已汉化__。
* Extended Traits  更多的领袖特长。  __morechn已汉化__。
* More Army Attachments  更多的军队模块。  __morechn已汉化__。
* More Edicts  更多的政策。  __morechn已汉化__。
* Sector Defense Navy  会自动制造舰队的星区（会占用你的军舰人口，而且AI的智商你懂的，不过可以少浪费些资源，不需要的舰队送掉或者解散掉吧。） 
* Grow Borders  边界增长速度加快的星球政策，需要影响力。  __morechn已汉化__
* Yet Another Traits Mod 更多领袖特性 __morechn已汉化__
* Bread Baskets 可以在行星间运输的食物 __morechn已汉化__ http://bbs.3dmgame.com/thread-5099700-1-1.html
* Expanded Spaceport 扩展的空间站，空间站有24格建筑空间
* Crystallis Ship Modules Expansion 水晶船模块扩展

## 纯搬运
* Zeon 机战吉恩公国  __morechn已汉化__
* Playable Robot 可玩的机器人 __morechn已汉化__

## 记录

### 160519 初次发布
### 更新日期160520：
1. 为了提高兼容性，修改了部分mod文件夹结构，本次更新需要删除原来的整合包。以后尽量避免需要删除旧版……
2. 考虑包的大小，单独把更多旗帜和背景贴图提取出来了。如果需要，把 flags 文件夹放在Inkitmod文件夹内即可。
3. 修改可选包中Advanced Buildings，More Army Attachments等mod以提高兼容性，原版mod因修改了原始文件使得兼容性极差。
4. 更新morechn汉化包，加入更多的mod支持（可选包里的）。因此包可能经常更新，也单独放出来，便于更新。启用时注意同时启用Inkitmod与morchn两个mod来保证额外的mod的汉化。

### 更新日期160522：
1. 更新更多旗帜贴图和背景，在 更多的旗帜与背景整合160522.zip 文件中。
2. 更新主包可选颜色为RGB版，基本是全颜色了。
3. 主包中加入汉语命名类型。
4. 更新部分morechn。
5. 可选包加入部分新内容，一些旧包的版本更新。
6. 可选包加入战略图标资源替换，可更好区别战略资源。
7. 不好意思之前的包为了加更多的种族颜色但是少删除了一个文件：Inkitmod\interface\xExpandedColors.gui 这个是原来120色的文件。手工删掉它。或者删除整个文件夹并安装 InkitModPack主包160522_2.zip

### 更新160523
1. More Technologies 汉化。
