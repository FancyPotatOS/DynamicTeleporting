
# Ensure the master scoreboard exists
scoreboard objectives add dynamicteleporting.master dummy

# Apply migration if required
execute unless score version dynamicteleporting.master matches 1.. run function dynamicteleporting:meta/migrations/latest_version
