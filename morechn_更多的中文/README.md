为一些mod提供汉化，支持的mod如下：

已汉化:

 * More Spaceport Modules http://steamcommunity.com/sharedfiles/filedetails/?id=682659220
 * Ringworld Start http://steamcommunity.com/sharedfiles/filedetails/?id=681864454
 * Slvrbuu's Stellaris Cheat Menu http://steamcommunity.com/sharedfiles/filedetails/?id=681947845
 * Zeon flag, race, and portraits（90%） http://steamcommunity.com/sharedfiles/filedetails/?id=682212690

待汉化:

 * More Technologies (0%) http://steamcommunity.com/sharedfiles/filedetails/?id=683851819
 
 
###Tips
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
