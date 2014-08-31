
local APPNAME = APPNAME or 'log'
local LOGDIR = LOGDIR or '/tmp'
local LOGPAT = LOGPAT or 'single' -- single or by_day
local DAEMON = (type(DAEMON) ~= 'nil') and DAEMON

if DAEMON then
	require 'daemon'
	daemon.daemonize('nochdir,nostdfds,noumask0')
end

local file_log_driver = require "logging.file"
local log_dir = LOGDIR
local logfile = LOGPAT == 'single' and log_dir.."/"..APPNAME..".log" or log_dir.."/"..APPNAME.."_%s"..".log"
-- bambooapp date time pid
local logger = nil
if LOGPAT == 'single' then
	logger = file_log_driver(logfile)
else
	logger = file_log_driver(logfile, "%Y-%m-%d")
end


local oprint = print
_G.print = function (...)
	local params = {...}
	for i, v in ipairs(params) do
		v = tostring(v)
		params[i] = v
	end
	
	local info_str = table.concat(params, '\t');
	logger:info(info_str)
end

	
	




