

# Teleport X if positive or negative
execute if score @s dynamicteleporting.delta.x matches ..-1 run function dynamicteleporting:teleport/binary/negx
execute if score @s dynamicteleporting.delta.x matches 1.. run function dynamicteleporting:teleport/binary/x


# Teleport Y if positive or negative
execute if score @s dynamicteleporting.delta.y matches ..-1 run function dynamicteleporting:teleport/binary/negy
execute if score @s dynamicteleporting.delta.y matches 1.. run function dynamicteleporting:teleport/binary/y


# Teleport Z if positive or negative
execute if score @s dynamicteleporting.delta.z matches ..-1 run function dynamicteleporting:teleport/binary/negz
execute if score @s dynamicteleporting.delta.z matches 1.. run function dynamicteleporting:teleport/binary/z
