
#!/bin/bash
set -e


PORT=9222


if [ -z "$DEVECO_SDK_HOME" ]; then
    echo "DEVECO_SDK_HOME 未设置"; exit 1
fi

HDC="$DEVECO_SDK_HOME/default/openharmony/toolchains/hdc"
PORT=9222

if [ ! -x "$HDC" ]; then
    echo "hdc 不存在或不可执行"; exit 1
fi

LINE=$("$HDC" shell "cat /proc/net/unix | grep devtools_remote" | head -n 1)
[ -z "$LINE" ] && { echo "未找到 devtools_remote"; exit 1; }

SOCK=$(echo "$LINE" | awk '{print $NF}' | sed 's/@//')
[ -z "$SOCK" ] && { echo "未解析到 socket 名称"; exit 1; }

RES=$("$HDC" fport tcp:$PORT localabstract:$SOCK)
[[ "$RES" != *"OK"* ]] && { echo "端口转发失败"; exit 1; }

echo "端口转发成功，请在 Chrome 打开 chrome://inspect/#devices，配置 localhost:$PORT"
