# destroy if invalid
execute if entity @s[tag=mob_despawner] at @s unless predicate laika:mob_despawner_check run function laika:mob_despawner/events/destruction_96
# run mob despawner base ticks
execute if entity @s[tag=mob_despawner_base] run function laika:mob_despawner/ticks/base

###### creative ######
# particle
execute if entity @s[tag=mob_despawner_creative] run particle poof ~ ~ ~ 0 0.1 0 0.1 1 normal @a[gamemode=spectator]