if (TrainingCourse_Blocked) exitwith{

	hint "Bullet Path Tracing blocked by Admin";
	Action_BulletTracing = false;
	removeAllActions actio_bt;
	hint "Bullet Path Tracing blocked by Admin";
	TrainingCourse_BulletPathTracing = false;
};
TrainingCourse_BulletPathTracing = !TrainingCourse_BulletPathTracing;

if (TrainingCourse_BulletPathTracing) then
{
	hint "Bullet Path Tracing enabled";
	//vehicle player addEventHandler ["fired", {_this execVM "fnc_bullet_trace.sqf"}];
} else
{
	hint "Bullet Path Tracing disabled";
};