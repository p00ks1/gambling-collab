#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
sound_play("lets_go_gambling");

t = 0

spins = 0

roll_1 = -1
roll_2 = -1
roll_3 = -1

active = false

alarm[0] = 75
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if active == true && instance_exists(Player) {

t += 1

if t == 1 {
    sound_play("slots");
    image_index = 1

    roll_1 = irandom(14)
    a = instance_create(402,170,Cherry);
    a.sprite_index = sprCherryRainbow
    a.image_index = roll_1
    a.image_speed = 0
}

if t == 6 {
    roll_2 = irandom(14)
    a = instance_create(432,170,Cherry);
    a.sprite_index = sprCherryRainbow
    a.image_index = roll_2
    a.image_speed = 0
}

if t == 11 {
    roll_3 = irandom(14)
    a = instance_create(462,170,Cherry);
    a.sprite_index = sprCherryRainbow
    a.image_index = roll_3
    a.image_speed = 0
}

if t == 16 {
    if roll_1 == roll_2 && roll_2 == roll_3 {
        t = 71
        with(Cherry2) {
            instance_destroy()
        }

    } else {
        sound_play("aw_dangit");
        image_index = 2

    }
}

if t == 38 {
    image_index = 3
    with(Cherry) {
        event_user(image_index)
    }
}

if t == 70 {
    t = 0
    with(PlayerKiller) {
        instance_destroy()
    }
}

if t == 100 {
    sound_play("YYEAA");
    image_index = 3
}

if t >= 100 {
    repeat(20) {
        a = instance_create(320,96,Cherry2);
        a.image_index = irandom(14)
        a.direction = random(360)
        a.speed = random_range(24,48)
    }
    repeat(20) {
        a = instance_create(320,96,Cherry2);
        a.image_index = irandom(14)
        a.direction = random(360)
        a.speed = random(24)
    }
}

if t > 120 {
    with(PlayerKiller) {
        instance_destroy()
    }
    a = instance_create(384,480,Warp);
    a.room_to = rSampleClear

}

}
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop("lets_go_gambling");
sound_stop("YYEAA");
sound_stop("slots");
sound_stop("aw_dangit");
