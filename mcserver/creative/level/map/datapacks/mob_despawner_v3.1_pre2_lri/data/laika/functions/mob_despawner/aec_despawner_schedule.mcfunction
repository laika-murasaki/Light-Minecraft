# despawner particle
execute if entity @s[tag=mob_despawner_base,scores={despawner.enable=1,despawner.effect=1}] run particle wax_on ~ ~2 ~ 0.25 0.25 0.25 0.1 100

# despawn mobs
execute if entity @s[tag=mob_despawner,scores={despawner.enable=1}] run function laika:mob_despawner/events/despawning_entities_96