# Applies cooldown and reduce mana
scoreboard players operation @s meewizard.player.mana -= @s meewizard.spell.toss_cost
scoreboard players operation @s meewizard.spell.toss_cooldown = @s meewizard.spell.toss_delay
