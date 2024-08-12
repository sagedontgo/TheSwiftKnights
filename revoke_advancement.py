import os

# Directory containing advancements
advancement_directory = 'data/tsk/advancement/rewards/kill_mob/tier7'

# Function file to create
function_file = 'data/tsk/function/clear_tier7_advancements.mcfunction'

# List all files in the directory
advancements = [f for f in os.listdir(advancement_directory) if f.endswith('.json')]

# Create function file content
with open(function_file, 'w') as file:
    for advancement in advancements:
        advancement_name = os.path.splitext(advancement)[0]  # Remove .json extension
        command = f"advancement revoke @s only tsk:rewards/kill_mob/tier1/{advancement_name}\n"
        file.write(command)

print(f"Function file {function_file} created successfully!")