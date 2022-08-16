/client/proc/summon_ert()
	set name = "Dispatch Task Force"
	set category = "Special Verbs"
	set desc = "Send a mobile task force"

	new /datum/ert_maker(src)

/datum/ert_maker
	var/static/list/datum/ert/task_forces = subtypesof(/datum/ert)
