# coding=utf8
import sdtables
import pprint
import yaml
import os

for config in os.listdir("configurations"):
    if config.endswith(".xlsx"):
        c = sdtables.load_xl_db("configurations/" + config)
        host = config[:-5]

        with open("output/" + host + '.yaml', 'w') as yaml_file:
            yaml.dump(c, yaml_file)

        print(f"[!] Configuration has been loaded for {host}")
    else:
        print("[-] Not a configuration file!")
