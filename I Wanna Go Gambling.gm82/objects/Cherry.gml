#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/15;
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat(30) {
    a = instance_create(x,y,Cherry2);
    a.direction = random(360)
    a.speed = random_range(1,10)
}
#define Other_11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat(10) {
    a = instance_create(x,y,Cherry2);
    a.direction = random(360)
    a.speed = random_range(1,5)
    a.gravity_direction = random(360)
    a.gravity = 0.1
    a.image_index = image_index
}
#define Other_12
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat(10) {
    a = instance_create(random(800),0,Cherry2);
    a.vspeed = random_range(1,10)
    a.image_index = image_index
}
#define Other_13
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat(20) {
    a = instance_create(x,y,Cherry2);
    a.direction = random(360)
    a.speed = 4
    a.image_index = image_index
}
#define Other_14
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat(3) {
    scrMakeCircle(random_range(100,700),random_range(64,196),random(360),12,random_range(3,6),Cherry3)
}
#define Other_15
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat(3) {
    scrMakeShapes(random_range(100,700),random_range(64,196),random(360),irandom_range(3,5),5,random_range(3,6),Cherry3)
}
#define Other_16
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat(15) {
    a = instance_create(x,y,Cherry2);
    a.hspeed = random_range(-7,7)
    a.vspeed = random_range(-7,7)
    a.image_index = image_index
}
#define Other_17
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat(5) {
    a = instance_create(800,random(608),Cherry2);
    a.hspeed = random_range(-1,-4)
    a.image_index = image_index
}
#define Other_18
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat(20) {
    a = instance_create(random(800),random(304),Cherry2);
    a.gravity_direction = random(360)
    a.gravity = random_range(0.02,0.2)
    a.image_index = image_index
}
#define Other_19
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat(10) {
    a = instance_create(0,random(608),Cherry2);
    a.hspeed = random_range(1,4)
    a.image_index = image_index
}
#define Other_20
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat(3) {
    scrMakeCircle(x,y,random(360),14,random_range(3,8),Cherry5)
}
#define Other_21
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat(3) {
    scrMakeShapes(x,y,random(360),irandom_range(3,5),5,random_range(3,5),Cherry6)
}
#define Other_22
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat(20) {
    a = instance_create(x,y,Cherry2);
    a.direction = random_range(45,135)
    a.speed = random_range(1,10)
    a.gravity = 0.05
    a.image_index = image_index
}
#define Other_23
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scrMakeCircle(x,y,random(360),32,4,Cherry7)
#define Other_24
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scrMakeShapes(x,y,random(360),choose(4,5,6),4,4,Cherry8)
