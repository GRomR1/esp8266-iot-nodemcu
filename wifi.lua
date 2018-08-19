--WiFi Setup
wifi.sta.disconnect()
wifi.setmode(wifi.STATION)
local cfg={}
cfg.ssid="Rus"
cfg.pwd="12345678"
wifi.sta.config(cfg)
wifi.sta.autoconnect(1)
wifi.sta.connect()
tmr.create():alarm(10000, tmr.ALARM_SINGLE, function() 
    print('IP:', wifi.sta.getip()) 
    dofile("mqtt.lua")
end)
cfg = nil
collectgarbage()


