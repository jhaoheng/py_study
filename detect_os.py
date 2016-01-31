#coding=utf-8


import platform

def TestPlatform( ):
    print ("----------Operation System--------------------------")
    #   取得 python 版本
    print '取得 python 版本 : ' + platform.python_version()

    #   取得操作系統可執行結構 : ex('64bit','WindowsPE')
    print "取得操作系統可執行結構 : ex('64bit','WindowsPE')"
    print platform.architecture()

    #   電腦目前網路群組名稱
    print '電腦目前網路群組名稱' + platform.node()

    #   獲取操作系統名稱及版本號，‘Windows-7-6.1.7601-SP1’
    print '獲取操作系統名稱及版本號 : ' + platform.platform()

    #   電腦處理器資訊，’Intel64 Family 6 Model 42 Stepping 7, GenuineIntel’
    print '電腦處理器資訊 : ' + platform.processor()

    #   獲取操作系統中 Python 的構建日期
    print "獲取操作系統中 Python 的構建日期"
    print platform.python_build()

    #  獲取系統中 python 解釋器的信息
    print '獲取系統中 python 解釋器的信息 : ' + platform.python_compiler()

    if platform.python_branch()=="":
        print platform.python_implementation()
        print platform.python_revision()
    print "platform.release : " + platform.release()
    print "platform.system : " + platform.system()

    #print platform.system_alias()
    #  獲取操作系統版本
    print '獲取操作系統版本 : ' + platform.version()

    #  上述所有訊息集合
    # print '上述所有訊息集合 : ' + platform.uname()

def UsePlatform( ):
    sysstr = platform.system()
    if(sysstr =="Windows"):
        print ("Call Windows tasks")
    elif(sysstr == "Linux"):
        print ("Call Linux tasks")
    elif(sysstr == "Darwin"):
        print ("Call Mac os : Darwin")
    else:
        print ("Other System tasks")




if __name__ == "__main__" :

    TestPlatform( )

    UsePlatform( )
