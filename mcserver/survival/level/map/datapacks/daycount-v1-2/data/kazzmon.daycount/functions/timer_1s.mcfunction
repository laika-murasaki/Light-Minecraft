#Updates Gametime Statistics
execute store result score #kazzdc_daycount kazzdc.daycount run time query day
scoreboard players add #kazzdc_daycount kazzdc.daycount 1
execute unless score #kazzdc_daycount kazzdc.daycount = #kazzdc_stored kazzdc.daycount run tag @a remove kazzdc.shown
execute unless score #kazzdc_daycount kazzdc.daycount = #kazzdc_stored kazzdc.daycount run execute store result score #kazzdc_stored kazzdc.daycount run scoreboard players get #kazzdc_daycount kazzdc.daycount

#Says in Chat the Day Count
execute if score #kazzdc_style DayCount_Style matches 1 run tellraw @a[tag=!kazzdc.shown] [{"text":"Day ","color":"yellow","bold":true},{"score":{"name":"#kazzdc_daycount","objective":"kazzdc.daycount"},"color":"gold","bold":true}]

#Displays in Actionbar the Day Count
execute if score #kazzdc_style DayCount_Style matches 2 run title @a[tag=!kazzdc.shown] times 10 60 20
execute if score #kazzdc_style DayCount_Style matches 2 run title @a[tag=!kazzdc.shown] actionbar [{"text":"Day ","color":"yellow","bold":true},{"score":{"name":"#kazzdc_daycount","objective":"kazzdc.daycount"},"color":"gold","bold":true}]

#Displays on Screen the Day Count
execute if score #kazzdc_style DayCount_Style matches 3 run title @a[tag=!kazzdc.shown] times 10 60 20
execute if score #kazzdc_style DayCount_Style matches 3 run title @a[tag=!kazzdc.shown] title [{"text":"Day ","color":"yellow","bold":true},{"score":{"name":"#kazzdc_daycount","objective":"kazzdc.daycount"},"color":"gold","bold":true}]

#Sound Effect
execute as @a[tag=!kazzdc.shown] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 0.7
execute as @a[tag=!kazzdc.shown] at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 0.5

#Sets up Scoreboard
execute if score #kazzdc_style DayCount_Style matches 1 run scoreboard players set @a[tag=!kazzdc_style] DayCount_Style 1
execute if score #kazzdc_style DayCount_Style matches 2 run scoreboard players set @a[tag=!kazzdc_style] DayCount_Style 3

#Tags Players
tag @a[tag=!kazzdc.shown] add kazzdc.shown
tag @a[tag=!kazzdc_style] add kazzdc.style

#Loop
schedule function kazzmon.daycount:timer_1s 20t