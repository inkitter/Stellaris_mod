It's a mod collection for Chinese. 这是中文整合包
# Inkit MOD整合包
 最近主要在做HOI4的整合包。 http://bbs.3dmgame.com/thread-5108890-1-1.html
 
## 使用方法 （选择下列方式之一）

百度云： http://pan.baidu.com/s/1pLxjUbT 

Github: https://github.com/inkitter/Stellaris_mod

创意工坊(仅Inkitmod)： http://steamcommunity.com/sharedfiles/filedetails/?id=696221547

**更新时请删除原文件夹内容**

## 手动安装法
1. 解压所有的.mod文件与_Inkitmod、 _InkitSEL、 _morechn 文件夹 放在  文档\Paradox Interactive\Stellaris\mod\ 内。
2. 需要可选包就运行一下 $2可选包.bat 。

**以下的方法安装与更新较方便，但有个要求：解压到的文件夹和“我的文档”文件夹在同一块物理硬盘上（分区可以不一样）。（双硬盘需注意）**
## 半自动安装法
1. 解压所有文件到某个妥当的文件夹 **（安装完也不要删除，会调用这个文件夹）**。
2. 运行 $1安装主包.bat $2可选包.bat。 （**若运行失败，用右键 “以管理员权限运行”**）
4. 需要清理时，则运行相应的清理的bat文件。
6. 更新时删除全部文件解压新的文件过来再运行一下bat即可。

## Github 安装（用这个方式安装，更新起来最省事，而且能用到我的最新的版本，不过需要学习一下）
1. （已有的跳过）安装git软件： https://git-scm.com/download/win （安装时注意取消勾选windows explorer intergration以防在右键菜单加入不必要的功能）。 分流: http://pan.baidu.com/s/1cLsbaI
2. 命令提示符使用git安装： `` git clone https://github.com/inkitter/Stellaris_mod.git `` 或者使用我提供的 使用git安装.bat 文件。
3. 比如将 bat 文件放在 D:\Game 文件夹里，运行之后会有个窗口显示下载进度。 同时会在 D:\Game 文件夹里创建一个Stellaris_mod 文件夹，所有的mod文件都在这里。 之后就可以删除这个 使用git安装.bat 了
4. 然后依次运行 1安装主包及可选包.bat 选择性运行 2安装测试mod.bat。安装就完成了。
5. 更新方法： 运行 使用Git更新.bat 会将本地文件夹与我的github项目同步，你在本地做的任何修改都会被同步成远程的，同时会更新你的游戏mod文件夹里的.mod文件。

--------

## 主包内容（不影响联机） !Inkitmod 与 !morechn
* !morechn   自制的一些工坊英文mod汉化包。 
* Chinese font  （悦黑）简体中文字库v4.6  http://steamcommunity.com/sharedfiles/filedetails/?id=682681372
* 3DM汉化包3.0  1.1版全汉化  ``\localisation\*.yml`` http://steamcommunity.com/sharedfiles/filedetails/?id=683978765
http://steamcommunity.com/sharedfiles/filedetails/?id=687203571
* Complete Colors  种族设计界面有更多（RGB）可选颜色，注意这个多颜色选择会与其他的冲突，请不要再加载其他增加可选颜色的mod，这个已经是颜色最全的 flags\colors.txt及interface\zCompleteColors.gui

* 汉语种族随机名  种族设计界面以汉语命名的可选类型，随机汉语船、人名等。 
* Color coded pop status icons 彩色的人口状态图标

## _Inkitmod
### 图案、界面替换 (不影响联机)
* %%-Reduce/Remove Aura Graphics  **二选一** 减轻/移除单位光环的视觉效果，更容易看到船而不是光环。
* %%More Flags 多个种族设计界面的纹章和背景整合：光环、日式、Flags:Emblems & Backgrounds、IT、星际之门、现实国家风格、刺客信条等。
* %%UI Overhaul 1080p UI重制，1080p版
* %%Unique Resources 战略资源图标替换，战略资源图示更容易区别（比如原版两种蓝色的矿……）。

## 以下会影响联机
### 功能增强
* +Chinese name **汉语随机命名** 星系、帝国等多个部分用汉语命名。
* +More Map Size  新建游戏时，星系大小有等多选择，从很少到很多的更多选项。且根据大小标记成不同的颜色。
* +Ring World   种族设计界面：添加“圆环世界”，会有起始25格的行星，有三种圆环可选。 ``common\solar_system_initializers\ringworld_st_systems.txt``
* +Change Capital Planet 改变首都。 __morechn已汉化__。
* +Better Sector Mod 星区不再消耗影响、星区视觉效果改善。
* +DZ Unique Starting Systems 创建种族时有更多的起始星系选择。 __morechn已汉化__。
* +Planetary Rally Points 设置舰队集结点。 __morechn已汉化__。

### 领袖增强
* 1Fox Leader Mod 领袖等级上限调整等领袖强化。
* 1Yet Another Traits Mod 更多领袖特性 __morechn已汉化__
* 1Extended Traits  更多的领袖特长。  __morechn已汉化__。

### 综合类
* -AI Rebalance AI平衡性调整。
* -New Ship Classes & More 更多类型的船
* -New Ships & Realistics Ships 更多类型的船
* -Crystallis Ship Modules Expansion 水晶船模块扩展 __morechn已汉化__
* -Expanded War Demands 更多的战争要求 __morechn已汉化__
* -More Technologies  更多的科技。 __morechn已汉化__。   这个包是多个增量mod的整合包，修改较多较复杂，不过挺好玩的。
* -Research All FTL  可以研究所有FTL迁跃理论。 
* yBeautiful Battles 有平衡性调整，配合Z使用。
* ZBeautiful Battles 漂亮的战斗。 提高了战斗的美观度，有不少战斗平衡性调整，例如舰船战斗阵形优化等。但此mod改变的数据较多，想体验原始战斗设计还是不开启较好。

### 贸易增强
* 0Bread Baskets 可以在行星间运输的食物 __morechn已汉化__
* 0Civilian Trade __morechn已汉化__
* 0Interstellar Trading System __morechn已汉化__

### 作弊
* ]Easybuff 自制的政策界面作弊。前缀为“作弊”的一系列政策。已分离成单独mod。 http://steamcommunity.com/sharedfiles/filedetails/?id=696221722


## 可选包 _InkitSEL
* Grow Borders  边界增长速度加快的星球政策，需要影响力。  __morechn已汉化__
* More Spaceport Modules  更多的空间站模块。 __morechn已汉化__。
* Auto improve buildings 自动升级建筑 __morechn已汉化__
* New Ship Classes & More 更多的舰船类型 __morechn已汉化__
* Colony Ship Start 殖民船开局 __morechn已汉化__
* Expanded Spaceport 24格空间站 
* More Army Attachments  更多的军队模块。  __morechn已汉化__
* Sector Defense Navy  会自动制造舰队的星区（星区选择第一种AI）
* Slvrbuu's Stellaris Cheat Menu 作弊菜单 __morechn已汉化__
* The Belt 可在不能殖民的星球殖民，此mod内容较多 __未汉化__

## 大文件包
* Zeon 机战吉恩公国  __morechn已汉化__
* Playable Robot 可玩的机器人 __morechn已汉化__
* The Elder's Notification 游戏默认语音替换为中文长者提示音
* Chinese Voice 3DM论坛中文男声
* 动物徽章EmblemsFauna 超多动物徽章
* New Ships & Realistics Ships 更多的船 __未汉化__
* Music Pack 音乐包
* Beautiful Universe 更美丽的宇宙 一些贴图替换
* More Planet Types 更多种类的行星

### 动漫人物
* Animaris
* Monster Girls
* Neptunia
* WarshipGirls

--------

## 记录
* 160519 初次发布
* 160601 游戏更新1.1版
* 160620 整合包架构更新。
