# Applies cooldown and reduce mana
scoreboard players operation @s meewizard.player.mana -= @s meewizard.spell.leap_cost
scoreboard players operation @s meewizard.spell.leap_cooldown = @s meewizard.spell.leap_delay
