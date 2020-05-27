enableSaving [false, false];

waitUntil {!isNull player};

if (TrainingCourse_Blocked) then{
removeAllActions player;
TrainingCourse_BulletPathTracing = false;
TrainingCourse_BulletCamera = false;
};
TrainingCourse_BulletCameraAbort = false;

player addEventHandler ["fired", {_this execVM "fnc_bullet_trace.sqf"}];
player addEventHandler ["fired", {_this execVM "fnc_bullet_camera.sqf"}];
Projectile_Impact_Aux = "Sign_Sphere10cm_F" createVehicle [0,0,0];


showChat true;
sleep 1;
showChat true;
sleep 5;
showChat true;