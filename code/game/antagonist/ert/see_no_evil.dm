GLOBAL_DATUM_INIT(see_no_evil, /datum/antagonist/ert/see_no_evil, new)

/datum/antagonist/ert/see_no_evil
	codename = "See No Evil"
	number = "Eta-10"

	hard_cap = 5
	hard_cap_round = 7
	initial_spawn_req = 5
	initial_spawn_target = 7
	show_objectives_on_creation = 0 //we are not antagonists, we do not need the antagonist shpiel/objectives

/datum/antagonist/ert/see_no_evil/equip(var/mob/living/carbon/human/player)

	//Special radio setup
	player.add_language(LANGUAGE_ENGLISH)
	player.equip_to_slot_or_del(new /obj/item/device/radio/headset/ert(src), slot_l_ear)
	player.equip_to_slot_or_del(new /obj/item/clothing/under/ert(src), slot_w_uniform)
	player.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(src), slot_shoes)
	player.equip_to_slot_or_del(new /obj/item/clothing/gloves/tactical/scp(src), slot_gloves)
	player.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/scp/eta(player), slot_head)
	player.equip_to_slot_or_del(new /obj/item/clothing/suit/armor/vest/scp/medarmor/eta(player), slot_wear_suit)

	create_id(role_text, player)
	return 1
