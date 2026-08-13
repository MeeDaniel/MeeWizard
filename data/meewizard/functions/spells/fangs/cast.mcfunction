# Launches spell if the player has unlocked the spell, has enough mana and cooldown is gone
execute if score @s meewizard.spell.fangs_cooldown matches ..0 if score @s meewizard.player.mana >= @s meewizard.spell.fangs_cost if score @s meewizard.spell.fangs_unlocked matches 1.. run function meewizard:spells/fangs/core
