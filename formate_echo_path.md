查看PATH变量
```
echo $PATH
```

输出的结果是
```
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
```
这个输出不方便阅读，如果能格式化一下就好了。
每个显示一行，就像下面这样：
```
/usr/local/sbin
/usr/local/bin

```
其实还真的是可以的格式化显示的
```
echo -e ${PATH//:/\\n}
```

最后讲这个制作成一个alias就很方便使用了。

```
alias echo_path='echo -e ${PATH//:/\\n}'
```

