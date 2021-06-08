# Python Scripting

## port_scanner.py

``` python
#!/usr/bin/python

import socket

ip = raw_input("Enter the ip: ")
port = input("Enter the port: ")

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

if s.connect_ex((ip, port)):
    print "Port", port, "is closed"
else:
    print "Port", port, "is open"
```

The python script prompts the user for an IP address and a port number, then calls on the socket module to check if the port is open or closed on the specified IP. 

If the port is closed it will print out a statement saying its closed. If the port is open it will print out a statement saying its open. 