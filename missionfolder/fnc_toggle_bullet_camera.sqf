if (TrainingCourse_Blocked) exitwith{

	hint "Bullet Path Tracing blocked by Admin";
	Action_BulletTracing = false;
	removeAllActions actio_bc;
	hint "Bullet Camera blocked by Admin";
	TrainingCourse_BulletCamera = false;
};
TrainingCourse_BulletCamera = !TrainingCourse_BulletCamera;

if (TrainingCourse_BulletCamera) then
{
	hint "Bullet Camera enabled";
	//vehicle player addEventHandler ["fired", {_this execVM "fnc_bullet_camera.sqf"}];
} else
{
	hint "Bullet Camera disabled";
};
