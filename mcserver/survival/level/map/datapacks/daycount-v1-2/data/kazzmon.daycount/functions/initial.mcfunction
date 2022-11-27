#Message
tellraw @a [{"text":"[DayCount]: ","color":"yellow"},{"text":"Kazzmon's DayCount is now active!","color":"green"}]

#Initialize Day Count and Stored Statistics
scoreboard players set #kazzdc_daycount kazzdc.daycount 0
scoreboard players set #kazzdc_stored kazzdc.daycount 0
scoreboard players set @a[tag=!kazzdc_style] DayCount_Style 0
execute if score #kazzdc_style DayCount_Style matches 1 run scoreboard players set @a[tag=!kazzdc_style] DayCount_Style 1
execute if score #kazzdc_style DayCount_Style matches 2 run scoreboard players set @a[tag=!kazzdc_style] DayCount_Style 3
execute if score #kazzdc_style DayCount_Style matches 3 run scoreboard players set @a[tag=!kazzdc_style] DayCount_Style 5

#Tags on Players
tag @a remove kazzdc.shown
tag @a add kazzdc.style

#Loop until there is a Player
execute unless entity @a run schedule function kazzmon.daycount:initial 1t