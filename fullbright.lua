menu.add_check_box("Fullbright")
function fb()
  if menu.get_bool("Fullbright") then
    console.set_int( "sv_cheats", 1 )
    console.set_int( "mat_fullbright", 2 )
    console.set_int( "mat_fullbright", 1 )
  else
    console.set_int( "mat_fullbright", 3 )
  end
end
client.add_callback("create_move", fb)
