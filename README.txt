
a simple daemon and log tool，write log file in local machine.

在你写的lua脚本中，可以定义如下几个变量：

APPNAME:	本脚本名称，会用在日志文件的命名上。默认为 'log'
LOGDIR: 	日志存放的路径。默认为 '/tmp'
LOGPAT:		日志记录时的形式。可以为'single'或'by_day'，默认为'single'。single意思是全记在一个文件里面，by_day意思是每天生成不同的日志文件。
DAEMON:		是否开启daemon功能。默认为true

以上4个变量，需要在引入bamboo-log之前写，切记，不然没效果。
如：
APPNAME = '123'
LOGDIR = '.'
require 'bamboo-log'
print('hhaa 123')

写日志就用print.

Good day!
