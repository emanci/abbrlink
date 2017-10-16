
## Install Lua
这里我使用的是 Mac OS X 系统，其他平台自行搜索安装

```bash
curl -R -O http://www.lua.org/ftp/lua-5.3.0.tar.gz
tar zxf lua-5.3.0.tar.gz
cd lua-5.3.0
make macosx test
make install
```
接下来，在命令行输入 lua ，即可看到已经安装成功，以后我们也会使用 lua filaname.lua 格式来执行 Lua 文件。

##### 编辑文件
```bash
vi HelloLua.lua
```

##### 输出 Hello Lua
```bash
print("Hello Lua")
```

##### 执行文件
```bash
lua HelloLua.lua
```
