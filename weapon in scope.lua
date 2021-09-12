menu.add_check_box("Weapon in scope")
function weapon_in_scope()
    console.set_int("sv_cheats", 1)
    if menu.get_bool("Weapon in scope") then
        console.execute("fov_cs_debug 90")
    else
        console.execute("fov_cs_debug 0")
    end
end
client.add_callback("on_paint", weapon_in_scope)
