import http.client

host = "seznam.cz"
conn = http.client.HTTPSConnection(host)
conn.request("GET", "/")
response = conn.getresponse()
print(response.status, response.reason)