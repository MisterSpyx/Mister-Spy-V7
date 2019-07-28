import sys,os,re,socket,binascii,time,json,random,threading,Queue,pprint,urlparse,smtplib,telnetlib,os.path,hashlib,string,urllib2,glob,sqlite3,urllib,argparse,marshal,base64,requests
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

def logo():
        clear = "\x1b[0m"
        colors = [36, 32, 34, 35, 31, 37  ]

        x = """ 
          " " " " " " " " " " " " " " " " " " " "  "
          "                  ,__,                  "
          "                  (oo)____              "
          "                  (__)    )\            "
          "                     ||--|| *  V7       "
          "                                        "
          " " " " " " " " " " " " " " " " " " " "  "
+----------------------------------+----------------------------------+
 1) Smtp Cracker From Joomal List   | 12) Mass Domain To Ip 
 2) Mass Reverse Ip Unlimted        | 13) Mass Mail3er Send ( random info random mailer )
 3) Mass zone-h Poster              | 14) Mass Smtp Sender Random
 4) Grabb Smtp From Wso Shells      | 15) Mass Upload Shell In Wordpress
 5) Mass Free proxy                 | 16) Mass Upload Shell In Joomla
 6) Smtp Cracker combo              | 17) CMS Filter
 7) Smtp Tester Work Or No          | 18) By Pass 404 Config
 8) Email Filter                    | 19) Range ip 1 - 255
 9) zone-h Grabber                  | 20) Mass Shells Checker ( live or no )
10) Mass Mailst From Config         | 21) Mass Website List grabber from Dorks 
11) Mass Confi Grabber (Wso shells) | 22) Check Update
 +----------------------------------+----------------------------------+
               00) Beast Mode ( Bot Mass Shell Uploader )		  
		  
			                  """
        for N, line in enumerate(x.split("\n")):
            sys.stdout.write("\x1b[1;%dm%s%s\n" % (random.choice(colors), line, clear))
            time.sleep(0.05)


logo()


choice=raw_input('Put Number => ')
if choice=='1':
  print("""\n\033[91m Go to Scripts/tool1 and put ur list of sites there
	result will be in folder reasult with name SMTPGrabedFromJoomla.txt

 y = yes 
 n = no\033[0m""")
  t=raw_input('~>')
  if t=='y':
   if system() == 'Linux':
    os.system("cd Scripts/tool1 && chmod +x smtpgraber.pl && perl smtpgraber.pl")
   if system() == 'Windows':
    os.system('cd Scripts/tool1 && smtpgraber.pl')
   else:
    print('unknown error :| ')
  elif t=='n':
   main()
  else :
   print('unknown error :| ')
elif choice=='2':
  print("""\n\033[91m Go to Scripts/tool2 and put ur list of Ips  there
	result will be in folder reasult with name GrabedSites.txt
	
 y = yes 
 n = no\033[0m""")
  t=raw_input('~>')
  if t=='y':
   if system() == 'Linux':
    os.system("cd Scripts/tool2 && chmod +x api.py && python api.py")
   if system() == 'Windows':
    os.system('cd Scripts/tool2 && api.py')
   else:
    print('unknown error :| ')
  elif t=='n':
   main()
  else :
   print('unknown error :| ')
elif choice=='3':
  print("""\n\033[91m Go to Scripts/tool3 and put ur list of sites  there And Will Auto Deface	
 y = yes 
 n = no\033[0m""")
  t=raw_input('~>')
  if t=='y':
   if system() == 'Linux':
    os.system("cd Scripts/tool3 && chmod +x zh.py && python zh.py")
   if system() == 'Windows':
    os.system('cd Scripts/tool3 && zh.py')
   else:
    print('unknown error :| ')
  elif t=='n':
   main()
  else :
   print('unknown error :| ')
elif choice=='4':
  print("""\n\033[91m Go to Scripts/tool4 and put ur list of Shells Wso  there And Will Auto Dump Pass	
 y = yes 
 n = no\033[0m""")
  t=raw_input('~>')
  if t=='y':
   if system() == 'Linux':
    os.system("cd Scripts/tool4 && chmod +x smtp.py && python smtp.py")
   if system() == 'Windows':
    os.system('cd Scripts/tool4 && smtp.py')
   else:
    print('unknown error :| ')
  elif t=='n':
   main()
  else :
   print('unknown error :| ')
elif choice=='10':
  print("""\n\033[91m Go to Scripts/tool10 
you Will Found Script Name payload.php upload it in shell
Then U will Put Config Link + The Script Payload link in the same shell  
 y = yes 
 n = no\033[0m""")
  t=raw_input('~>')
  if t=='y':
   if system() == 'Linux':
    os.system("cd Scripts/tool10 && chmod +x maillist.py && python maillist.py")
   if system() == 'Windows':
    os.system('cd Scripts/tool10 && maillist.py')
   else:
    print('unknown error :| ')
  elif t=='n':
   main()
  else :
   print('unknown error :| ')
elif choice=='9':
  print("""\n\033[91m Go to Scripts/tool9 
you Will Found Rzlt Here About How To Use This Tool Check Mister Spy Chanelle
 y = yes 
 n = no\033[0m""")
  t=raw_input('~>')
  if t=='y':
   if system() == 'Linux':
    os.system("cd Scripts/tool9 && chmod +x zone.py && python zone.py")
   if system() == 'Windows':
    os.system('cd Scripts/tool9 && zone.py')
   else:
    print('unknown error :| ')
  elif t=='n':
   main()
  else :
   print('unknown error :| ')
elif choice=='14':
  print("""\n\033[91m Go to Scripts/tool4 
Put Ur Fiels Here and ur list of smtps in Valid.txt
 y = yes 
 n = no\033[0m""")
  t=raw_input('~>')
  if t=='y':
   if system() == 'Linux':
    os.system("cd Scripts/tool4 && chmod +x mass.py && python mass.py")
   if system() == 'Windows':
    os.system('cd Scripts/tool4 && mass.py')
   else:
    print('unknown error :| ')
  elif t=='n':
   main()
  else :
   print('unknown error :| ')
elif choice=='13':
  print("""\n\033[91m Go to Scripts/tool13 
Easy To Use Just Add ur Email and Mailers
you Will Found Your Mailer Script iN fOLDER
tOOL 13 Upload it in a Good Servers

 y = yes 
 n = no\033[0m""")
  t=raw_input('~>')
  if t=='y':
   if system() == 'Linux':
    os.system("cd Scripts/tool13 && chmod +x mailer.py && python mailer.py")
   if system() == 'Windows':
    os.system('cd Scripts/tool13 && mailer.py')
   else:
    print('unknown error :| ')
  elif t=='n':
   main()
  else :
   print('unknown error :| ')
elif choice=='12':
  print("""\n\033[91m Go to Scripts/tool13 
Easy To Use Just Add Ur Domain List There
Note Domain Without Http://
Exemple : google.com
 y = yes 
 n = no\033[0m""")
  t=raw_input('~>')
  if t=='y':
   if system() == 'Linux':
    os.system("cd Scripts/tool12 && chmod +x ipfromdomain.py && python ipfromdomain.py")
   if system() == 'Windows':
    os.system('cd Scripts/tool12 && ipfromdomain.py')
   else:
    print('unknown error :| ')
  elif t=='n':
   main()
  else :
   print('unknown error :| ')
elif choice == '19':
    print("""\n\033[91m Go to Scripts/tool19 
Easy To Use Just Add Your List Of Ips in tool19 folder 
Then  Run it
 y = yes 
 n = no\033[0m""")
    t = raw_input('~>')
    if t == 'y':
        if system() == 'Linux':
            os.system("cd Scripts/tool19 && chmod +x range.pl && perl range.pl ")
        if system() == 'Windows':
            os.system('cd Scripts/tool19 && range.pl')
        else:
            print('unknown error :| ')
    elif t == 'n':
        main()
    else:
        print('unknown error :| ')
elif choice == '21':
    print("""\n\033[91m Go to Scripts/tool21 Check this video
	https://www.youtube.com/watch?v=S72WX748gmg
	Go tO Tool21 To Pur Ur List 
Then  Run it
 y = yes 
 n = no\033[0m""")
    t = raw_input('~>')
    if t == 'y':
        if system() == 'Linux':
            os.system("cd Scripts/tool21 && chmod +x priv8dorker.py && python priv8dorker.py ")
        if system() == 'Windows':
            os.system('cd Scripts/tool21 && priv8dorker.py')
        else:
            print('unknown error :| ')
    elif t == 'n':
        main()
    else:
        print('unknown error :| ')
elif choice == '18':
    print("""\n\033[91m Go to Scripts/too18 Check this video
	https://www.youtube.com/watch?v=EfJ0vAxNt1k
	Go tO tool18 To Pur Ur List and edit ur script
	You will Found Script name bypass.php u Shoud Upload
Then  Run it
 y = yes 
 n = no\033[0m""")
    t = raw_input('~>')
    if t == 'y':
        if system() == 'Linux':
            os.system("cd Scripts/tool18 && chmod +x pass.pl && perl pass.pl ")
        if system() == 'Windows':
            os.system('cd Scripts/tool18 && pass.pl')
        else:
            print('unknown error :| ')
    elif t == 'n':
        main()
    else:
        print('unknown error :| ')
elif choice == '20':
    print("""\n\033[91m Go to Scripts/tool20 
	Go tO tool20 To Pur Ur List There
Then  Run it
 y = yes 
 n = no\033[0m""")
    t = raw_input('~>')
    if t == 'y':
        if system() == 'Linux':
            os.system("cd Scripts/tool20 && chmod +x checker.py && python checker.py ")
        if system() == 'Windows':
            os.system('cd Scripts/tool20 && checker.py')
        else:
            print('unknown error :| ')
    elif t == 'n':
        main()
    else:
        print('unknown error :| ')
elif choice == '8':
    print("""\n\033[91m Go to Scripts/tool8 
	Put Ur Email Lit Then Rzlt Saved In Filtred
 y = yes 
 n = no\033[0m""")
    t = raw_input('~>')
    if t == 'y':
        if system() == 'Linux':
            os.system("cd Scripts/tool8 && chmod +x filter.py && python filter.py ")
        if system() == 'Windows':
            os.system('cd Scripts/tool8 && filter.py')
        else:
            print('unknown error :| ')
    elif t == 'n':
        main()
    else:
        print('unknown error :| ')
   
elif choice == '6':
    print("""\n\033[91m Go to Scripts/tool6 
	Put Ur Combo Lit Then Rzlt Saved In Cracked.txt
 y = yes 
 n = no\033[0m""")
    t = raw_input('~>')
    if t == 'y':
        if system() == 'Linux':
            os.system("cd Scripts/tool6 && chmod +x crack.py && python crack.py 401 ")
        if system() == 'Windows':
            os.system('cd Scripts/tool6 && crack.py 401')
        else:
            print('unknown error :| ')
    elif t == 'n':
        main()
    else:
        print('unknown error :| ')   
elif choice == '16':
    print("""\n\033[91m Go to Scripts/tool16 
	Put Ur  Lit : http://www.site.com/administrator/index.php&user&~password#
 y = yes 
 n = no\033[0m""")
    t = raw_input('~>')
    if t == 'y':
        if system() == 'Linux':
            os.system("cd Scripts/tool16 && chmod +x shelljm.py && python shelljm.py")
        if system() == 'Windows':
            os.system('cd Scripts/tool16 && shelljm.py')
        else:
            print('unknown error :| ')
    elif t == 'n':
        main()
    else:
        print('unknown error :| ')   
elif choice == '15':
    print("""\n\033[91m Go to Scripts/tool15 
	Put Ur  Lit : https://site.com/wp-login.php@user#&pass@
 y = yes 
 n = no\033[0m""")
    t = raw_input('~>')
    if t == 'y':
        if system() == 'Linux':
            os.system("cd Scripts/tool15 && chmod +x up.py && python up.py")
        if system() == 'Windows':
            os.system('cd Scripts/tool15 && up.py')
        else:
            print('unknown error :| ')
    elif t == 'n':
        main()
    else:
        print('unknown error :| ')   
      
elif choice == '7':
    print("""\n\033[91m Go to Scripts/tool7 
	Put Ur  Lst  : domain|ip|user|pass

 y = yes 
 n = no\033[0m""")
    t = raw_input('~>')
    if t == 'y':
        if system() == 'Linux':
            os.system("cd Scripts/tool7 && chmod +x smtp.py && python smtp.py")
        if system() == 'Windows':
            os.system('cd Scripts/tool7 && smtp.py')
        else:
            print('unknown error :| ')
    elif t == 'n':
        main()
    else:
        print('unknown error :| ')     
elif choice == '11':
    print("""\n\033[91m Go to Scripts/tool11
	Put Ur  List of Shells

 y = yes 
 n = no\033[0m""")
    t = raw_input('~>')
    if t == 'y':
        if system() == 'Linux':
            os.system("cd Scripts/tool11 && chmod +x config.py && python config.py")
        if system() == 'Windows':
            os.system('cd Scripts/tool11 && config.py')
        else:
            print('unknown error :| ')
    elif t == 'n':
        main()
    else:
        print('unknown error :| ')     
elif choice == '17':
    print("""\n\033[91m Go to Scripts/tool17
	Put Ur  List of Sites in tool17

 y = yes 
 n = no\033[0m""")
    t = raw_input('~>')
    if t == 'y':
        if system() == 'Linux':
            os.system("cd Scripts/tool17 && chmod +x cms.py && python cms.py")
        if system() == 'Windows':
            os.system('cd Scripts/tool17 && cms.py')
        else:
            print('unknown error :| ')
    elif t == 'n':
        main()
    else:
        print('unknown error :| ')    
   
elif choice == '5':
    print("""\n\033[91m GoAuto Genrate Free Prxoy

 y = yes 
 n = no\033[0m""")
    t = raw_input('~>')
    if t == 'y':
        if system() == 'Linux':
            os.system("cd Scripts/tool5 && chmod +x getproxy.py && python getproxy.py")
        if system() == 'Windows':
            os.system('cd Scripts/tool5 && getproxy.py')
        else:
            print('unknown error :| ')
    elif t == 'n':
        main()
    else:
        print('unknown error :| ')      
elif choice == '00':
    print("""\n\033[91m Go TO Scripts / boot andd Add Your List

 y = yes 
 n = no\033[0m""")
    t = raw_input('~>')
    if t == 'y':
        if system() == 'Linux':
            os.system("cd Scripts/Boot && chmod +x Attack.py && python Attack.py bazooka && Tomahawk.py")
        if system() == 'Windows':
            os.system('cd Scripts/Boot && run.bat')
        else:
            print('unknown error :| ')
    elif t == 'n':
        main()
    else:
        print('unknown error :| ')     
   
elif choice == '22':   
	rzlt = requests.get('https://github.com/MisterSpyx/MistrSpyV7/raw/master/update.txt',  headers = {'User-agent': 'Mozilla/5.0'} ,timeout=7).text
	if 'update Avaible Now' in rzlt :
		print 'Update Avaible Contact Mister Spy Welcome To the New Hell'
	else :
		print '\n No Update Yet For More Tools Contact Me Icq: 712083179\n'   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
