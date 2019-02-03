///@desc player_walk_state()
// Get Input
get_input();

// Calculate movement
calc_movement();

// Check State
if (hsp == 0) {
	state = states.IDLE;
}

if (attack) {
	state = states.ATTACK;
	image_index = 0;
}

if (jump) {
	state = states.JUMP;
	vsp = jump_spd;
}

if (block) {
	state = states.BLOCK;
	hsp = 0;
}

// Apply movement
collision();

// Apply animation
anim();
