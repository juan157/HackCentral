#!/usr/bin/env python
import requests
from BeatifulSoup import BeatifulSoup
import urlparse
def request(url):
    try:
        return request.get("http://" + url)
    except requests.exceptions.ConnectionError:
        pass

target_url=""
response = request()

parsed_html = BeautifulSoup(response.content)
forms_list = parsed_html.findAll("form")

for form in forms_list:
    action = form.get("action")
    post_url = urlparse.urljoin()
    print(post_url)
    method = form.get("method")
    print(method)

    inputs_list = form.findAll("input")
    post_data = {}
    for input in inputs_list:
        input_name = input.get("name")
        inputype = input.get("type")
        if input_type == "text":
            input_value = "test"

        post_data[input_name] = input_value
    requess.post(post_url, data=post_data)
    print(result.content)
