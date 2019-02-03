///@desc player_block_state()
// Get Input
get_input();

// Calculate movement
calc_movement();

// Check State
if (attack) {
	state = states.ATTACK;
	image_index = 0;
}

if (block) {
	hsp = 0;
} else {
	if (hsp != 0) {
		if (!on_ground()) {
			state = states.JUMP;
		} else {
			state = states.WALK;
		}
	} else {
		state = states.IDLE;
	}
}

if (jump) {
	state = states.JUMP;
	vsp = jump_spd;
}

// Apply movement
collision();

// Apply animation
anim();
