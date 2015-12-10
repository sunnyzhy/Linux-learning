Makefile的规则
　　目标 ： 需要的条件 （冒号两边有空格）
　　　　命令（前面用tab键开头）
说明：
　　目标：可以是一个或多个，可以是Object File，也可以是执行文件，甚至可以是一个标签。
　　需要的条件：生成目标所需要的文件或目标
　　命令：生成目标所需要执行的脚本
    反斜杠（/）:换行符

示例：
H : H.o Hello.o
	g++ H.o Hello.o -o H
Hello.o : Hello.cpp
	g++ -c Hello.cpp -o Hello.o
H.o : H.cpp
	g++ -c H.cpp -o H.o
clean : 
	rm H H.o /
           Hello.o
