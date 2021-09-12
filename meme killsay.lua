menu.add_check_box("Kill Say")

local couz
local killchat

function killsay(event)
    if menu.get_bool("Kill Say") then
    local attacker = engine.get_player_for_user_id(event:get_int("attacker"))
    local dead = engine.get_player_for_user_id(event:get_int("userid"))
    local me = engine.get_local_player_index()
        
        if attacker == me and dead ~= me then
        killchat = {"На большом воздушном шаре, трое в рот тебя ебали",
        "Нам татарам поебать, там где сядем - будем срать",
        "Если сильно зудит в жопе - ты находишься в Европе",
        "У тебя глазки, как у пидораски",
        "Лучше хуем бить об миску, чем ебать экономистку",
        "Думал будет день простой, но накрылось всё пиздой",
        "Тебя рожали, чтоб над тобою ржали",
        "Лёня-Лёня, Леонид, там где ходит, там пердит",
        "Нахуя нужна подруга, если рядом жопа друга?",
        "Бросай курить, начни ебаться, здоровье будет прибавляться",
        "ежедневный онанизм укрепляет организм",
        "Коль застрял в лесу глухом, вытри жопу свежим мхом"}
        couz = math.random (1,12)
        console.execute ("say " .. killchat[couz])
        end
    end
end

events.register_event("player_death", killsay)
