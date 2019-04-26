import json
# import time
import urllib.request as req


with req.urlopen('https://www.moonsighting.org.uk/scripts/hijri.php?return=json&country=BD&apikey=***') as date_uform:
    date_json = date_uform.read()

date_dict = json.loads(date_json)
#print(date_dict)

islamic = date_dict["islamic"]
#print(islamic)
day = islamic[0]
day_n = islamic[1]
month = islamic[2]
year = islamic[3]
#print(day, day_n, month, year)

with open('/home/mlabib/hijri.txt', 'w') as f:
    f.write(day+', '+day_n+'.'+month+'.'+year)
