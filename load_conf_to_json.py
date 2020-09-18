# coding=utf8
import sdtables
import pprint
import json

source = "configuration_data.xlsx"
config = sdtables.load_xl_db(source)

with open('configuration_data.json', 'w') as json_file:
    json.dump(config, json_file)

print(f"[!] Configuration has been loaded from {source}")
