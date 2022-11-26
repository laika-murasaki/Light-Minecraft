# detect structure block
execute if entity @s[nbt={Item:{id:"minecraft:nether_star",Count:1b}}] unless entity @e[type=area_effect_cloud,tag=mob_despawner,distance=..128] if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}},limit=1,distance=..0.5] if block ~ ~-1 ~ lightning_rod[facing=up] if block ~ ~-2 ~ copper_block if block ~ ~-3 ~ shroomlight run function laika:mob_despawner/summon_despawner

# check if despawner is nearby
execute if entity @s[nbt={Item:{id:"minecraft:nether_star",Count:1b}}] if entity @e[type=area_effect_cloud,tag=mob_despawner,distance=..128] if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}},limit=1,distance=..0.5] if block ~ ~-1 ~ lightning_rod[facing=up] if block ~ ~-2 ~ copper_block if block ~ ~-3 ~ shroomlight run title @a[distance=..8] actionbar {"text":"Cannot build! Other nearby mob despawner detected.","color":"red"}
