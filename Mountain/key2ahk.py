code = "#SingleInstance, Force\nSendMode Input\nSetWorkingDir, %A_ScriptDir%\n\nMedia_Play_Pause::\n"
filename = input("请输入文件名：")
keys = input("请输入按键顺序：")
for key in keys:
    if key == ' ':
        code += "\nSleep 500\n\n"
    else:
        code += "Send, {}\nSleep 300\n".format(key)
code += "Return\n"
with open(filename, "w+") as f:
    f.write(code)

print(code)