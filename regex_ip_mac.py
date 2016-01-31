#coding=utf-8

import re

def isValidIp(ip):
    if re.match(r"^\s*\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\s*$", ip): return True
    return False

def isValidMac(mac):
    if re.match(r"^\s*([0-9a-fA-F]{2,2}:){5,5}[0-9a-fA-F]{2,2}\s*$", mac): return True
    return False
if __name__ == '__main__':

    print isValidMac("BC:5F:F4:6B:3E:6F")
    print isValidIp("192.168.2.105")
