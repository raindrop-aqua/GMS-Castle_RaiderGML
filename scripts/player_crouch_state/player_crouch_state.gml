///@desc player_crouch_state()
// Get Input
get_input();

// Calculate movement
calc_movement();

// Check State
// Bloking
block_check();

if (attack) {
	state = states.ATTACK;
	image_index = 0;
}

if (jump) {
	jumped();
}

// Apply movement
collision();

// Apply animation
anim();