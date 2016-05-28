# Tips

## 文件名
* 作为mod，添加的技能说明文字最好不要覆盖原语言文件（\localisation ），否则容易与其他内容冲突。
* 因此每个mod最好是建立独立的说明文字文件。
* 文件名需要有一定的格式诸如：XXXX_l_english.yml
* 如果是汉化其他的语言，除了使用mod替换原文件，另可以使用replace文件夹。
### Replace文件夹
在localisation文件夹中创建replace文件夹，将汉化的内容放在此文件夹中，可以获得更高的优先级。即 localisation\replace 。

## 文件储存格式
UTF-8 with BOM。使用vscode、npp、sublime等文本编辑器打开可以查看文件储存格式。

## 定义常用文本
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

## 文字颜色代码
使用Alt+小键盘数字键1、6、7 可以打出 § 这个特殊字符。后面跟一个相应的颜色字母就可以改变文本的颜色。
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

```
£influence
£minerals
£energy
£food
£society
£physics
£engineering
£blocker
£construction_ship
£colony_ship
£army_ship
£military_power
£science_ship
£Pop
£def
£resource_time
£m
£e
£anomaly_level
£navy_size
£space_creature

£ship_stats_hitpoints
ship_stats_armor
£ship_stats_shield
£ship_stats_speed
£ship_stats_evasion
£ship_stats_damage
£ship_stats_special
£ship_stats_power
£ship_stats_maintenance


```