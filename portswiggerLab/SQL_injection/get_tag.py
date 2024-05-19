from bs4 import BeautifulSoup

def extract_th_contents(html_file):
    with open(html_file, 'r') as file:
        html_content = file.read()

    soup = BeautifulSoup(html_content, 'html.parser')

    th_contents = []
    for th in soup.find_all('th'):
        th_contents.append(th.text.strip())

    return th_contents

html_file = "files/th_tag.html"
th_contents = extract_th_contents(html_file)

for item in th_contents:
    print(item)