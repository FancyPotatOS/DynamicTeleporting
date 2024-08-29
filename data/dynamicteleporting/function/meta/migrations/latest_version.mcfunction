#
#   Migration File V1
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#

tellraw @a ["",{"text":"[Dynamic Teleporting Datapack - V1]","bold":true,"color":"dark_blue"}," - Setup"]

# Apply last migration
#execute unless score version dynamicteleporting.master matches 1.. run function dynamicteleporting:meta/migrate/migration_v0

# Set the version
scoreboard players set version dynamicteleporting.master 1

# Where to teleport X
scoreboard objectives add dynamicteleporting.delta.x dummy
# Where to teleport Y
scoreboard objectives add dynamicteleporting.delta.y dummy
# Where to teleport Z
scoreboard objectives add dynamicteleporting.delta.z dummy
# Where to teleport Dimension
scoreboard objectives add dynamicteleporting.delta.dimension dummy


