menu.add_check_box("Enable anti-afk")
-- coded by CouZ
local tick              = 0
local delay             = 600 -- put your own delay here if u want
local delay_to_stopmove = 5   -- put here ur own delay to stopmove if u want
local use               = 0
-- coded by CouZ
function afk()
    
    local enabled  = menu.get_bool("Enable anti-afk")
    local not_zero = globals.get_curtime() 


    if enabled then
        if not_zero > 0 then 
            tick = tick + 1
        end
        if tick == delay and use == 0 then 
            console.execute("+forward")
            print("[ DEBUG ] used +forward")
            tick = 0
            use = 1
        end
        if use == 1 then 
            if tick == delay_to_stopmove then 
                console.execute("-forward")
                print("[ DEBUG ] used -forward")
                use = 0
                tick = 0
            end
        end
    end
end
-- coded by CouZ
function unload()
    console.execute("clear")
    console.execute("-forward")
end
-- coded by CouZ
client.add_callback("on_paint", afk)
client.add_callback("unload", unload)
