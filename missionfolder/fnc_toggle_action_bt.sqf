if (TrainingCourse_Blocked) exitwith{

	hint "Bullet Path Tracing blocked by Admin";
	Action_BulletTracing = false;
	removeAllActions player;
};
Action_BulletTracing = !Action_BulletTracing;

if (Action_BulletTracing) then
{
	hint "Bullet Path Tracing Action added";
	actio_bt = player addaction [("<t color=""#CCAA44"">" + "Bullet Path Tracing" + "</t>"), "fnc_toggle_path_tracing.sqf", "", 0, false, false];
} else
{
	hint "Bullet Path Tracing Action Removed";
	player removeAction actio_bt;
	TrainingCourse_BulletPathTracing = false;
};