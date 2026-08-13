scoreboard players add @s meewizard.player.mana_regen 1
execute if score @s meewizard.player.mana_regen matches 20.. run scoreboard players add @s meewizard.player.mana 1
execute if score @s meewizard.player.mana_regen matches 20.. run scoreboard players set @s meewizard.player.mana_regen 0

execute if score @s meewizard.player.mana > @s meewizard.player.max_mana run scoreboard players operation @s meewizard.player.mana = @s meewizard.player.max_mana
