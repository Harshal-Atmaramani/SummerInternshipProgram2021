#!/usr/bin/python3
import json
import json
import xmltodict
import parser
import os
import cgi
import subprocess

def vehicle_info(text):
    r = requests.get(f'http://regcheck.org.uk/api/reg.asmx/CheckIndia?RegistrationNumber={str(text)}&username=nikhilti
dke101')
    data= xmltodict.parse(r.content)
    jdata=json.dumps(data)
    df = json.loads(jdata)
    df1 = json.loads(df['Vehicle']['vehicleJson'])
    return df1

f=cgi.FieldStorage()
cmd=f.getvalue('x')
o=vehicle_info(cmd)
#o = subprocess.getoutput("cal")
print(o)