# http
How-To
假設你的電腦 IP 位址為 192.168.0.1，而想要分享 /home/seal 中的資料，則先切換到該目錄中：

```
# cd /home/folder
```

再啟動 Python 的網頁伺服器：

```
# python -m SimpleHTTPServer
```

就這樣一行指令就完成了！非常方便。執行這行指令應該會看到這樣的輸出訊息：
```
Serving HTTP on 0.0.0.0 port 8000 ...
```

這個訊息是告訴你網頁伺服器所開啟的 port 是 8000，這時候你可以開啟瀏覽器測試一下，再瀏覽器上輸入網址 http://個人分配ip:8000/ 這樣就可以看到分享的網頁了。

如果被分享的目錄中有 index.html 這個網頁檔，則開啟這個目錄時，預設就會顯示這個網頁檔，而如果這個檔案不存在，則會自動顯示該目錄中的檔案列表。

如果你想要更改伺服器所使用的 port，則可以直接在指令的最後面指定 port number：

```
# python -m SimpleHTTPServer 8080
```

在預設的狀況下，伺服器會傾聽所有的網路位址，如果只想要傾聽本機的位址（localhost），就要自己撰寫指令稿（script）了：
view plaincopy to clipboardprint?

```
#/usr/bin/python
import sys
import BaseHTTPServer
from SimpleHTTPServer import SimpleHTTPRequestHandler

HandlerClass = SimpleHTTPRequestHandler
ServerClass  = BaseHTTPServer.HTTPServer
Protocol     = "HTTP/1.0"

if sys.argv[1:]:
  port = int(sys.argv[1])
else:
  port = 8000
server_address = ('127.0.0.1', port)

HandlerClass.protocol_version = Protocol
httpd = ServerClass(server_address, HandlerClass)

sa = httpd.socket.getsockname()
print "Serving HTTP on", sa[0], "port", sa[1], "..."
httpd.serve_forever()
```