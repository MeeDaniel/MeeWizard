# Casting
execute if score @s meewizard.core.click matches 1.. run function meewizard:spells/cast_active

# Cycling spells (sneak+swap goes back, normal swap goes forward)
execute if score @s meewizard.core.swap matches 1.. if score @s meewizard.core.sneak matches 1.. run scoreboard players remove @s meewizard.player.active_slot 1
execute if score @s meewizard.core.swap matches 1.. unless score @s meewizard.core.sneak matches 1.. run scoreboard players add @s meewizard.player.active_slot 1

# Wrap slot (1-3)
execute if score @s meewizard.player.active_slot matches ..0 run scoreboard players set @s meewizard.player.active_slot 3
execute if score @s meewizard.player.active_slot matches 4.. run scoreboard players set @s meewizard.player.active_slot 1

# Holographic Menu
execute if score @s meewizard.core.drop matches 1.. if score @s meewizard.core.sneak matches 1.. run function meewizard:player/wand/hologram_begin_hook

# Prevent dropping the wand
execute if score @s meewizard.core.drop matches 1.. run give @s minecraft:carrot_on_a_stick{meewizard_wand: 1b}

scoreboard players set @s meewizard.core.click 0
scoreboard players set @s meewizard.core.swap 0

function meewizard:player/hud/display
