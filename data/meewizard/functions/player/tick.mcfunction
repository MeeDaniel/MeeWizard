# Initialize defaults
function meewizard:setup/initialize_player_defaults

# Swap item (F key) detection
# TODO: fix second hand item disappearing bug
execute as @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag:{meewizard_wand:1b}}]}] run scoreboard players add @s meewizard.core.swap 1
execute as @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag:{meewizard_wand:1b}}]}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute as @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag:{meewizard_wand:1b}}]}] run item replace entity @s weapon.offhand with air

# Run wand logic if holding it
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{meewizard_wand:1b}}}] run function meewizard:player/wand/tick

function meewizard:player/mana/regen

# Run spells logic
function meewizard:spells/player_tick

# Reset core trackers
scoreboard players set @s meewizard.core.click 0
scoreboard players set @s meewizard.core.drop 0
scoreboard players set @s meewizard.core.sneak 0
scoreboard players set @s meewizard.core.swap 0
