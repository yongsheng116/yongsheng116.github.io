查看PATH
```bash
echo $PATH
```

输出的结果
```
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
```
不方便阅读，期望格式化显示；
每个显示一行，就像下面这样：
```
/usr/local/sbin
/usr/local/bin

```
格式化显示的command如下：
```bash
echo -e ${PATH//:/\\n}
```

作为alias就很方便使用了

```bash
alias echo_path='echo -e ${PATH//:/\\n}'
```

