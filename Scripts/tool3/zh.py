import urllib, urllib2, httplib
#!/usr/bin/python
 # -*-coding:Latin-1 -*
import sys,urllib2
from colorama import *

from multiprocessing import Pool
from multiprocessing.dummy import Pool as ThreadPool
from colorama import Fore								
from colorama import Style								
from termcolor import colored
import requests, sys, re, os, time, random
from colorama import Fore, Back, Style
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


def cls():
    linux = 'clear'
    windows = 'cls'
    os.system([linux, windows][os.name == 'nt'])


def print_logo():
    clear = "\x1b[0m"
    colors = [36, 32, 34, 35, 31, 37]

    x = """


                            _       ____           _            
  _______  _ __   ___      | |__   |  _ \ ___  ___| |_ ___ _ __ 
 |_  / _ \| '_ \ / _ \_____| '_ \  | |_) / _ \/ __| __/ _ \ '__|
  / / (_) | | | |  __/_____| | | | |  __/ (_) \__ \ ||  __/ |   
 /___\___/|_| |_|\___|     |_| |_| |_|   \___/|___/\__\___|_|   
                                                                
   
                                  MisterSpy   
                                                          
Miser Spy                                                                                                                         
"""
    for N, line in enumerate(x.split("\n")):
        sys.stdout.write("\x1b[1;%dm%s%s\n" % (random.choice(colors), line, clear))
        time.sleep(0.05)



cls()
print_logo()
name = raw_input('Enter Defacer Name :')
def mirror(url):
    try:
        print 'Mirroring', url, 'on z-h'
        data = urllib.urlencode({'defacer':name, 'domain1':url, 'hackmode':'1', 'reason':'1'})
        req = urllib2.Request('http://www.zone-h.org/notify/single', data)
        response = urllib2.urlopen(req)
        if 'OK' in response.read():
            print 'Z-H DONE Succes Defaced Mister Spy!'
        elif 'banned' in response.read():
            print '[X] OMG!you are banned!'
        else:
            print 'Sorry :( No'
    except:
        pass
try:
    if 'banned' in 'http://www.zone-h.org/notify/single':
        print 'Your IP address was banned by zone-h'
        exit(0)
except:
    pass
spy = raw_input('Enter Your List Of Deface Name : ')
go = open(spy, 'r').readlines()
for i in go:
    i = i.replace('\n','')
    if 'https://' not in i:
        if 'http://' not in i:
            i = 'http://' + i
    mirror(i)