///@desc player_attack_state()
// Get Input
get_input();

// Calculate movement
calc_movement();

// Check State
if (image_index >= image_number - image_speed) {
	if (not on_ground()) {
		state = states.JUMP;
	} else {
		if (hsp != 0) {
			state = states.WALK;
		} else {
			state = states.IDLE;
		}
	}
}

if (jump) {
	jumped();
	state = states.ATTACK;
}	

// Enable smaller jump
if (vsp < 0 and not jump_held) {
	vsp = max(vsp, jump_spd / jump_dampner);	
}

// Apply movement
collision();

// Apply animation
anim();
