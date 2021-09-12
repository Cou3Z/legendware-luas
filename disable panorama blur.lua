menu.add_check_box("Disable blur")

function PaintTraverse()
  if menu.get_bool("Disable blur") then
  console.set_int("@panorama_disable_blur", 1) -- coded by couz (vk.com/couz)
  else
  console.set_int("@panorama_disable_blur", 0) -- coded by couz (vk.com/couz)
  end
end
client.add_callback("on_paint", PaintTraverse)
-- Get good. Get legendware.
