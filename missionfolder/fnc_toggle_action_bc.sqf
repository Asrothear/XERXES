if (TrainingCourse_Blocked) exitwith{
	
	hint "Bullet Path Tracing blocked by Admin";
	Action_BulletTracing = false;
	removeAllActions player;
};
Action_BulletCamera = !Action_BulletCamera;

if (Action_BulletCamera) then
{
	hint "Bullet Camera Action added";
	actio_bc = player addaction [("<t color=""#44AACC"">" + "Bullet Cam" + "</t>"), "fnc_toggle_bullet_camera.sqf", "", 0, false, false];

} else
{
	hint "Bullet Camera Action Removed";
	player removeAction actio_bc;
	TrainingCourse_BulletCamera = false;
};