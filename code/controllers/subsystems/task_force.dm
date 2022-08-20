SUBSYSTEM_DEF(task_force)
	name = "Task Force"
	init_order = SS_INIT_TASK_FORCE
	flags = SS_NO_FIRE


/datum/controller/subsystem/task_force/Initialize(timeofday)
	for(var/type in typesof(/datum/antagonist/ert))
		continue
	. = ..()

/datum/controller/subsystem/task_force/stat_entry(msg)
	.=..("[msg] | ERT Datums: [GLOB.all_antag_types_.len]")

