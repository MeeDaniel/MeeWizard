# Applies cooldown and reduce mana
scoreboard players operation @s meewizard.player.mana -= @s meewizard.spell.spew_cost
scoreboard players operation @s meewizard.spell.spew_cooldown = @s meewizard.spell.spew_delay
