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
  __  __                _____ ____            _      
 |  \/  |              / ____|___ \          | |     
 | \  / | __ _ ___ ___| (___   __) |_ __   __| |_ __ 
 | |\/| |/ _` / __/ __|\___ \ |__ <| '_ \ / _` | '__|
 | |  | | (_| \__ \__ \____) |___) | | | | (_| | |   
 |_|  |_|\__,_|___/___/_____/|____/|_| |_|\__,_|_|   
                                            Priv8 MrSpy         
		          Coded By Mister Spy
				  
_§§§§§___§§§§§§§__§§§§§§
§§§§§§§§§_______§§§§§§c§§
§§§§§§_____________§§§§d§
§§§§_________________§§§§
§§§___________________§§§
_§§___________________§§
_§_____________________§
_§__§§§___________§§§__§
§__§___§_________§___§__§
§_§_§§__§_______§__§§_§_§
§_§_§§§_§_______§_§§§_§_§
§_§_§§§_§_§§§§§_§_§§§_§_§
§__§___§__§§§§§__§___§__§
_§__§§§____§§§____§§§__§
_§_______§__§__§_______§
__§_______§§_§§_______§
___§§_______________§§
_____§§___________§§
____§§§§§§§§§§§§§§§§§
___§§_______________§§
__§§______§§§§§______§§
_§§§______§___§______§§§
§§§§§_____§___§_____§§§§§
§§§§§____§_____§____§§§§§
§§§§§____§_____§____§§§§§
_§§§§§§§§_______§§§§§§§§
__§§§§§§§_______§§§§§§§
__§§___§§_______§§___§§
__§§___§§_______§§___§§
__§§___§§_§§§§§_§§___§§
__§§§§§§§§_____§§§§§§§§
___§§§§§_________§§§§§
				  
				  
				  
				  
			                  """
        for N, line in enumerate(x.split("\n")):
            sys.stdout.write("\x1b[1;%dm%s%s\n" % (random.choice(colors), line, clear))
            time.sleep(0.05)
logo()


			
def olux(site):
	try:
		site = site.replace('\n', '').replace('\r', '')
		post_data = {'to': site,'subject': 'Update Inc ','message': data}
		r = requests.post(mailer, data=post_data)
		print site ,' done With ==>',mailer

	except:
		pass
letter = raw_input('Enter Letter .txt name :')
with open(letter, 'r') as myfile:
  data = myfile.read()

Email = raw_input('Enter Email .txt name :')								
with open(Email) as f:
	for site in f:
		filename=open('mailers.txt','r')
		mailer=random.choice(open('mailers.txt').readlines())
		mailer = mailer.replace('\n', '').replace('\r', '')
		filename.close()
		olux(site)
		
	
