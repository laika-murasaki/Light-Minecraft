# run schedule
execute as @e[type=area_effect_cloud] at @s run function laika:mob_despawner/aec_despawner_schedule

# run loop
schedule function laika:mob_despawner/despawner_schedule 240t