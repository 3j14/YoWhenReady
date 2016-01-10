import configparser
import requests
import os

conf_file = os.path.realpath(os.path.join('/usr/share/yo/','yo.conf'))
Config = configparser.RawConfigParser()
Config.read(conf_file)
key= Config.get('config','APIKey')
user= Config.get('config','Username')

print("Sending YO to %s" % user)

r=requests.post("http://api.justyo.co/yo/", data={'api_token': key, 'username': user})

if r.status_code == 200:
	print("YO!")
else:
	print("Failed (Error %s)" % r.status_code)
