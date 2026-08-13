# Applies cooldown and reduce mana
scoreboard players operation @s meewizard.player.mana -= @s meewizard.spell.tornado_cost
scoreboard players operation @s meewizard.spell.tornado_cooldown = @s meewizard.spell.tornado_delay
