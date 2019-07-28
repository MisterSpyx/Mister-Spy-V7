#!/usr/bin/python
 # -*-coding:Latin-1 -*
import sys,urllib2
from multiprocessing import Pool
from multiprocessing.dummy import Pool as ThreadPool
from colorama import Fore								
from colorama import Style								
from termcolor import colored
import requests, sys, re, os, time, random
from colorama import Fore, Back, Style


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

  ____  _          _ _  ____ _          _                 
 / ___|| |__   ___| | |/ ___| |__   ___| | _____ ___ _ __ 
 \___ \| '_ \ / _ \ | | |   | '_ \ / _ \ |/ / __/ _ \ '__|
  ___) | | | |  __/ | | |___| | | |  __/   < (_|  __/ |   
 |____/|_| |_|\___|_|_|\____|_| |_|\___|_|\_\___\___|_|   
                                                          
Miser Spy                                                                                                                         
"""
    for N, line in enumerate(x.split("\n")):
        sys.stdout.write("\x1b[1;%dm%s%s\n" % (random.choice(colors), line, clear))
        time.sleep(0.05)



cls()
print_logo()


def cms(url):
 try:
   op =urllib2.urlopen(url,timeout=7)
   if "file" in op.read():
     print("[+] Found",url)
     open("LifeTimeWorkingShells.txt","a").write(url)
     open("Found.txt","a").write(url)

  
 except:
    print("404",url)

    pass


def main():    
   
    for i in ListPass:
        try:
            i = i.strip()
            data=cms(i)
        except:
            pass
spy = raw_input('Enter List Shell Name:')
ListPass = open(spy, 'r').readlines()      
pool = ThreadPool(10)
pool.map(cms, ListPass)
pool.close()
pool.join()
 
if __name__ == '__main__':     
    print("Finished, success")
