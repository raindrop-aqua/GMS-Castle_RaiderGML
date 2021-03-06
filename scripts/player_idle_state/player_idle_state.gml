///@desc player_idle_state()
// Get Input
get_input();

// Calculate movement
calc_movement();

// Check State
if (hsp != 0) {
	state = states.WALK;
}

if (attack) {
	state = states.ATTACK;
	image_index = 0;
}

if (jump) {
	jumped();
}

if (block) {
	state = states.BLOCK;
	hsp = 0;
}

if (down) {
	state = states.CROUCH;
	hsp = 0;
}

// Apply movement
collision();

// Apply animation
anim();
