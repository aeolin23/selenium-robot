import requests
import json
from robot.api.deco import keyword
import os

baseURL = 'https://testapi.kelasotomesyen.com'

tokenFilePath = os.path.join(os.path.dirname(__file__), 'token.json')
with open(tokenFilePath) as tokenFile:
    token = json.loads(tokenFile.read())
bearerToken = {'Authorization': f'Bearer {token}'}

def api_get_items():
    resp = requests.get(f'{baseURL}/items', headers=bearerToken)
    print(resp.status_code)
    json_resp = json.loads(resp.text)
    print(json_resp)
    return json_resp

def api_get_item(id):
    resp = requests.get(f'{baseURL}/items/{id}', headers=bearerToken)
    print(resp.status_code)
    json_resp = json.loads(resp.text)
    print(json_resp)
    return json_resp

@keyword('Delete Item with API')
def api_delete(id):
    resp = requests.delete(f'{baseURL}/items/{id}', headers=bearerToken)
    print(resp.status_code)
    json_resp = json.loads(resp.text)
    print(json_resp)
    return json_resp

@keyword('Add Item with API')
def add_item(name, desc, qty):
    body = {
        "name": name,
        "description": desc,
        "quantity": int(qty)
    }
    resp = requests.post(f'{baseURL}/items', json=body, headers=bearerToken)
    print(resp.status_code)
    json_resp = json.loads(resp.text)
    print(json_resp)
    return json_resp

@keyword('Edit Item with API')
def edit_item(id, name, desc, qty):
    body = {
        "name": name,
        "description": desc,
        "quantity": int(qty)
    }
    resp = requests.put(f'{baseURL}/items/{id}', json=body, headers=bearerToken)
    print(resp.status_code)
    json_resp = json.loads(resp.text)
    print(json_resp)
    return json_resp

@keyword('Edit Qty with API')
def edit_qty(id, qty):
    body = {
        "quantity": int(qty)
    }
    resp = requests.patch(f'{baseURL}/items/{id}', json=body, headers=bearerToken)
    print(resp.status_code)
    json_resp = json.loads(resp.text)
    print(json_resp)
    return json_resp