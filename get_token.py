import requests
import json

baseURL = 'https://testapi.kelasotomesyen.com'
body = {"username": "admin", "password": "uHuY12#$"}

def api_get_token():
    resp = requests.post(f'{baseURL}/login', json=body)
    print(resp.status_code)
    json_resp = json.loads(resp.text)
    token = json_resp['token']
    
    with open('libs/token.json', 'w') as tokenFile:
        json.dump(token, tokenFile)

api_get_token()