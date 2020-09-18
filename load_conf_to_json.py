# coding=utf8
import sdtables
import json
import os

for config in os.listdir("configurations"):
    if config.endswith(".xlsx"):
        c = sdtables.load_xl_db("configurations/" + config)
        host = config[:-5]

        with open("output/" + host + '.json', 'w') as yaml_file:
            json.dump(c, yaml_file)

        print(f"[!] Configuration has been loaded for {host}")
    else:
        print("[-] Not a configuration file!")
