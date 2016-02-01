# https://imsardine.wordpress.com/tech/shell-scripting-in-python/

import subprocess, sys

def Test( ):
    # subprocess.call(shlex.split('./test.sh param1 param2'))
    """
    retcode = subprocess.call(['./tbash.sh'])
    print "test"
    """

    cmd = 'ls -l'
    retcode = subprocess.call(cmd, shell=True)
    if retcode != 0: sys.exit(retcode)

if __name__ == "__main__" :

    Test( )
