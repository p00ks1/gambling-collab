///scrMakeShapes(x,y,angle,edges,numprojectiles,speed,obj)
///spawns a custom shape
///argument0 - spawn X
///argument1 - spawn Y
///argument2 - starting angle
///argument3 - number of edges (3=triangle, 4=square, etc.)
///argument4 - projectile spawns per edge
///argument5 - speed
///argument6 - projectile to spawn

spawnX = argument0;
spawnY = argument1;
spawnAngle = argument2;
spawnEdges = argument3;
spawnNum = argument4;
spawnSpeed = argument5;
spawnObj = argument6;
th = 0;
xx = 0;
yy = 0;
ddx = 0;
ddy = 0;
dx = 0;
dy = 0;
a = 0;

th = degtorad(spawnAngle);

for (i = 0; i < spawnEdges; i += 1)
{
    xx[i] = cos(th + 2*pi * i/spawnEdges);
    yy[i] = sin(th + 2*pi * i/spawnEdges);
}

xx[spawnEdges] = xx[0];
yy[spawnEdges] = yy[0];

for (i = 0; i < spawnEdges; i += 1)
{
    ddx = xx[i+1]-xx[i];
    ddy = yy[i+1]-yy[i];

    for(j = 0; j < spawnNum; j += 1)
    {
        dx = xx[i]+ddx*j/spawnNum;
        dy = yy[i]+ddy*j/spawnNum;

        a = instance_create(spawnX+dx,spawnY+dy,spawnObj);
        a.direction = point_direction(0,0,dx,dy);
        a.speed = spawnSpeed*point_distance(0,0,dx,dy);
    }
}
