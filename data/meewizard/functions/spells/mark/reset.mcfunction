# Applies cooldown and reduce mana
scoreboard players operation @s meewizard.player.mana -= @s meewizard.spell.mark_cost
scoreboard players operation @s meewizard.spell.mark_cooldown = @s meewizard.spell.mark_delay
