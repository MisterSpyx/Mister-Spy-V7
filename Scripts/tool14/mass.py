import string
import email.message
from time import strftime
import sys
from random import *
from optparse import OptionParser
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import smtplib,os,random,time
from colorama import *
def randomString(stringLength=10):
    """Generate a random string of fixed length """
    letters = string.ascii_lowercase
    return ''.join(random.choice(letters) for i in range(stringLength))

init()

la7mar  = '\033[91m'
lazra9  = '\033[94m'
la5dhar = '\033[92m'
movv    = '\033[95m'
lasfar  = '\033[93m'
ramadi  = '\033[90m'
blid    = '\033[1m'
star    = '\033[4m'
bigas   = '\033[07m'
bigbbs  = '\033[27m'
hell    = '\033[05m'
saker   = '\033[25m'
labyadh = '\033[00m'
cyan    = '\033[0;96m'
r = Fore.RED
g = Fore.GREEN
w = Fore.WHITE
b = Fore.BLUE
y = Fore.YELLOW
m = Fore.MAGENTA
la7mar  = '\033[91m'
lazra9  = '\033[94m'
la5dhar = '\033[92m'
movv    = '\033[95m'
lasfar  = '\033[93m'
ramadi  = '\033[90m'
blid    = '\033[1m'
star    = '\033[4m'
bigas   = '\033[07m'
bigbbs  = '\033[27m'
hell    = '\033[05m'
saker   = '\033[25m'
labyadh = '\033[00m'
cyan    = '\033[0;96m'



def cls():
    linux = 'clear'
    windows = 'cls'
    os.system([linux, windows][os.name == 'nt'])


def print_logo():
    clear = "\x1b[0m"
    colors = [36, 32, 34, 35, 31, 37]

    x = """

___  ___               _____           _         _____                _  _____      
|  \/  |              /  ___|         | |       /  ___|              | ||____ |     
| .  . | __ _ ___ ___ \ `--. _ __ ___ | |_ _ __ \ `--.  ___ _ __   __| |    / /_ __ 
| |\/| |/ _` / __/ __| `--. \ '_ ` _ \| __| '_ \ `--. \/ _ \ '_ \ / _` |    \ \ '__|
| |  | | (_| \__ \__ \/\__/ / | | | | | |_| |_) /\__/ /  __/ | | | (_| |.___/ / |   
\_|  |_/\__,_|___/___/\____/|_| |_| |_|\__| .__/\____/ \___|_| |_|\__,_|\____/|_|   
                                          | |                                       
                                          |_|                                       
Note : domain|ip|user|pass



"""
    for N, line in enumerate(x.split("\n")):
        sys.stdout.write("\x1b[1;%dm%s%s\n" % (random.choice(colors), line, clear))
        time.sleep(0.05)



cls()
print_logo()


def sendiyaspy(site):
  ur = smtp.rstrip()
  ch= ur.split('\n')[0].split('|')
  serveraddr=ch[0]
  toaddr=site
  fromaddr=ch[2]
  serverport=ch[1]
  SMTP_USER=ch[2]
  SMTP_PASS=ch[3]
  msg = MIMEMultipart()
  msg['Subject'] = Subject +' (ID:'+randomString(4)+'-'+randomString(4)+')'
  msg['From'] = Name
  msg['To'] = toaddr
  msg.add_header('Content-Type','text/html')
  msg.attach(MIMEText(data, 'html', 'utf-8'))

  server = smtplib.SMTP()
  try:
   server.connect(serveraddr, serverport)
  except:
   print "FAILED ===> "+ur
   pass
  try: 
   server.ehlo()
   server.ehlo()
  except:
  	 pass
  if SMTP_USER != "": 
   try: 
    server.login(SMTP_USER, SMTP_PASS)
   except:
     print  'FAILED ===> '+ur 
	 
     pass
  server.sendmail(fromaddr, [msg['To']], msg.as_string())
  print 'SUCCESS ===> '+toaddr+ 'With >'+ur
  server.quit()
letter = raw_input('Enter Letter .txt name :')
with open(letter, 'r') as myfile:
	data = myfile.read()

Email = raw_input('Enter Emails.txt :')	
Subject = raw_input('Enter Subject :')	
Name = raw_input('Enter Name :')	
				
with open(Email) as f:
	for site in f:
		filename=open('Valid.txt','r')
		smtp=random.choice(open('Valid.txt').readlines())
		smtp = smtp.replace('\n', '').replace('\r', '')
		filename.close()
		sendiyaspy(site)
	
