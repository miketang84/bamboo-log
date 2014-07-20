
require 'socket'

-- APPNAME and LOGDIR must be writen before require 'bamboo-log'
APPNAME = '123'
LOGDIR = '.'
require 'bamboo-log'

for i=1, 100 do
	print('hhaa', i)
	socket.sleep(1)
end

