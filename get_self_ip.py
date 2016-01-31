import socket # get_ip
import uuid # get_mac_address

def get_mac_address():
    mac = uuid.UUID(int = uuid.getnode()).hex[-12:]

    print ":".join([mac[e:e+2] for e in range(0,11,2)])

def get_ip( ):
    myname = socket.getfqdn(socket.gethostname( ))
    myaddr = socket.gethostbyname(myname)
    print myname
    print myaddr


if __name__ == "__main__" :

    get_ip( )
    get_mac_address( )
