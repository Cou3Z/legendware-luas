--coded by CouZ (vk.com/log.couz)
menu.add_check_box("Inverter on shot")
menu.add_combo_box("Inverter on shot mode", {"None", "On_shot", "On_hit"})
function on_shot(shot_info)
    if menu.get_bool("Inverter on shot") then
        if menu.get_int("Inverter on shot mode") == 1 then
            if menu.get_key_bind_state("anti_aim.invert_desync_key") then
                menu.set_bool("anti_aim.invert_desync_key", false)
            else
                menu.set_bool("anti_aim.invert_desync_key", true)
            end
        end

        if menu.get_int("Inverter on shot mode") == 2 then
            if shot_info.result == "Hit" then
                if menu.get_key_bind_state("anti_aim.invert_desync_key") then
                    menu.set_bool("anti_aim.invert_desync_key", false)
                else
                    menu.set_bool("anti_aim.invert_desync_key", true)
                end
            end
        end
    end
end
client.add_callback("on_shot", on_shot)
