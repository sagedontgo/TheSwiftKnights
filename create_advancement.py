import json
import os

def create_advancement(killed_mob, rewards_function):
    advancement = {
        "criteria": {
            f"": {
                "trigger": "player_killed_entity",
                "conditions": {
                    "entity": {
                        "type": f"minecraft:{killed_mob}"
                    }
                }
            }
        },
        "rewards": {
            "function": rewards_function
        }
    }
    return advancement

def write_advancements(mobs, rewards_function, output_dir):
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    for mob in mobs:
        advancement = create_advancement(mob, rewards_function)
        file_name = f"kill_{mob}.json"
        file_path = os.path.join(output_dir, file_name)

        with open(file_path, 'w') as file:
            json.dump(advancement, file, indent=4)

        print(f"Created advancement for killing {mob} at {file_path}")

# Example usage
mobs_to_track = ["ender_dragon",
        "wither",
        "warden"]     # List of mobs you want to track
rewards_function = "tsk:advancements/rewards/kill_mob_first_time/tier7"  # Specify the rewards function here
output_directory = "data\\tsk\\advancement\\rewards\\kill_mob_first_time\\tier7"  # Directory where advancements will be saved

write_advancements(mobs_to_track, rewards_function, output_directory)
