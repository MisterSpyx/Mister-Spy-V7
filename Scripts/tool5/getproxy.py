import requests
from bs4 import BeautifulSoup
import random


def taz():
        url = 'https://www.sslproxies.org/'
        headers = {
            'Accept-Encoding': 'gzip, deflate, sdch',
            'Accept-Language': 'en-US,en;q=0.8',
            'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36',
            'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
            'Referer': 'http://www.wikipedia.org/',
            'Connection': 'keep-alive',
            }
        random_ip = []
        random_port = []

        r = requests.get(url=url, headers=headers)
        soup = BeautifulSoup(r.text, 'html.parser')

        # Get the Random IP Address
        for x in soup.findAll('td')[::8]:
            random_ip.append(x.get_text())

        # Get Their Port
        for y in soup.findAll('td')[1::8]:
            random_port.append(y.get_text())

        # Zip together
        z = list(zip(random_ip, random_port))

        # This will Fetch Random IP Address and corresponding PORT Number
        number = random.randint(0, len(z)-50)
        ip_random = z[number]

        # convert Tuple into String and formart IP and PORT Address
        ip_random_string = "{}:{}".format(ip_random[0],ip_random[1])

        # Create a Proxy
        proxy = {'https':ip_random_string}

        # return Proxy
        return proxy
		
tazx = taz()	

print tazx


