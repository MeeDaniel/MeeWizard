# Applies cooldown and reduce mana
scoreboard players operation @s meewizard.player.mana -= @s meewizard.spell.earthquake_cost
scoreboard players operation @s meewizard.spell.earthquake_cooldown = @s meewizard.spell.earthquake_delay
