#!/usr/bin/env python3

##############
#
# download_mc_assets.py
#
# A script for downloading and properly handling
# Minecraft assets. This is used as a replacement
# for Forge's own downloader as it's non-functional.
#
# Copyright (c) 2023 Abstrat Technologies Limited
# An ABSTRAT GROUP Company
#
# </> with ♥ by Arek "AGDeveloper" Kwapis
# 	  and massive help from the team at Abstrat
#
##############

##############
# IMPORTS
##############

import os
import json
import requests

##############
# VARIABLES
##############

# Setup the variable
root_folder = "G:/Minecraft Modding/1.6.4/forge_965/mcp/jars/assets" #MCP folder
server_url = "https://resources.download.minecraft.net" #MC Resource server
json_file_url = "http://127.0.0.1:25566/Minecraft.Download/indexes/legacy.json" #Resource URL

# And now the constants (mainly json handling)
response = requests.get(json_file_url)
data = json.loads(response.text)
objects = data['objects']

##############
# CODE
##############

# Loop through all JSON entries
for filename, file_info in objects.items():
	hash_value = file_info['hash']
	folder_name = hash_value[:2]
	folder_path = os.path.join(root_folder, os.path.dirname(filename))
	file_path = os.path.join(folder_path, hash_value)
	renamed_file_path = os.path.join(folder_path, os.path.basename(filename))

	if not os.path.exists(folder_path): # Check if folder exists
		os.makedirs(folder_path)

	if not os.path.exists(file_path): # Check if file doesn't exist
		file_url = f"{server_url}/{folder_name}/{hash_value}"
		response = requests.get(file_url)
		with open(file_path, 'wb') as f:
			f.write(response.content)
		os.rename(file_path, renamed_file_path)
		print(f"File {filename} downloaded and renamed.") # Output
	else:
		print(f"File {filename} already exists.") # Already exists
