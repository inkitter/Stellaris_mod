# More Chinese · 更多的中文
## 需要中文字库支持

在GitHub上维护： https://github.com/inkitter/Stellaris_mod

创意工坊： http://steamcommunity.com/sharedfiles/filedetails/?id=687203571

同时我做了一个轻量的mod整合包： http://bbs.3dmgame.com/thread-5096002-1-1.html 已经集成本mod。

欢迎提建议便于加入更多汉化支持。
为一些mod提供汉化，，支持的mod如下：


已汉化:

 * More Spaceport Modules http://steamcommunity.com/sharedfiles/filedetails/?id=682659220
 * Ringworld Start http://steamcommunity.com/sharedfiles/filedetails/?id=681864454
 * Slvrbuu's Stellaris Cheat Menu http://steamcommunity.com/sharedfiles/filedetails/?id=681947845
 * Zeon flag, race, and portraits（90%） http://steamcommunity.com/sharedfiles/filedetails/?id=682212690
 * Galaxies Unlimited http://steamcommunity.com/sharedfiles/filedetails/?id=682835797
 * Advanced Buildings http://steamcommunity.com/sharedfiles/filedetails/?id=682592666
 * More Army Attachments http://steamcommunity.com/sharedfiles/filedetails/?id=682270145
 * More Edicts http://steamcommunity.com/sharedfiles/filedetails/?id=686166072
 * Extended Traits http://steamcommunity.com/sharedfiles/filedetails/?id=681816257
 * Grow Borders With Influence http://steamcommunity.com/sharedfiles/filedetails/?id=685223286
 * More Technologies http://steamcommunity.com/sharedfiles/filedetails/?id=683851819


待汉化:
 * Yet Another Traits Mod http://steamcommunity.com/sharedfiles/filedetails/?id=682239360
 * Fight For Universe: Infinite Legacy (0%) http://steamcommunity.com/sharedfiles/filedetails/?id=685233391
 * Playable Robots (0%) http://steamcommunity.com/sharedfiles/filedetails/?id=681553348
 
 
### Tips
#### 定义常用文本
 汉化会经常用到同一个词，比如cnMoreSpaceportModules_l_english.yml文件中
```
#### DEFINE PART ####
 sm_solar_panel_networkd:0 "太阳能面板网络"
 sm_hydroponic_farmsd:0 “轨道水培农场”
#### Translate ####
 sm_solar_panel_network2:0 "中型$sm_solar_panel_networkd$"
 sm_solar_panel_network3:0 "大型$sm_solar_panel_networkd$"
 sm_solar_panel_network4:0 "巨型$sm_solar_panel_networkd$"
 sm_hydroponic_farms2:0 "中型$sm_hydroponic_farmsd$"
 sm_hydroponic_farms3:0 "大型$sm_hydroponic_farmsd$"
 sm_hydroponic_farms4:0 "巨型$sm_hydroponic_farmsd$"
```
 其中“太阳能面板网络”会用到很多次，因此定义了另一个变量sm_solar_panel_networkd，在后面使用 " $  $ " 把变量命引用过来，就可以一个名称使用很多次了，这样便于统一翻译。
#### 文字颜色代码
```
§W W白色
§R R红色
§L L暗金
§S S土黄
§H H金黄
§Y Y黄色
§G G绿色
§E E青色
§B B深蓝
§M M紫色
§g g灰色
§! !上个颜色
```