scoreboard players enable @a[gamemode=creative] DayCount_Style
scoreboard players enable @a DayCount_Check

#Display Settings
execute as @a[scores={DayCount_Style=0}] run scoreboard players set #kazzdc_style DayCount_Style 1
execute as @a[scores={DayCount_Style=0}] run tellraw @a [{"text":"Day ","color":"yellow","bold":true},{"text":"Count","color":"gold","bold":true}]
execute as @a[scores={DayCount_Style=0}] run scoreboard players set @a DayCount_Style 1

execute as @a[scores={DayCount_Style=2}] run scoreboard players set #kazzdc_style DayCount_Style 2
execute as @a[scores={DayCount_Style=2}] run title @a actionbar [{"text":"Day ","color":"yellow","bold":true},{"text":"Count","color":"gold","bold":true}]
execute as @a[scores={DayCount_Style=2}] run scoreboard players set @a DayCount_Style 3

execute as @a[scores={DayCount_Style=4}] run scoreboard players set #kazzdc_style DayCount_Style 3
execute as @a[scores={DayCount_Style=4}] run title @a title [{"text":"Day ","color":"yellow","bold":true},{"text":"Count","color":"gold","bold":true}]
execute as @a[scores={DayCount_Style=4}] run scoreboard players set @a DayCount_Style 5

execute as @a[scores={DayCount_Style=6..}] run scoreboard players set @s DayCount_Style 0

#Check Time
execute as @a[scores={DayCount_Check=1..}] run tag @s remove kazzdc.shown
execute as @a[scores={DayCount_Check=1..}] run scoreboard players set @s DayCount_Check 0

schedule function kazzmon.daycount:trigger_event 20t