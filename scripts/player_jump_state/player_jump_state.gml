///@desc player_jump_state()
// Get Input
get_input();

// Calculate movement
calc_movement();

// Check State
if (on_ground()) {
	if (hsp != 0) {
		state = states.WALK;
	} else{
		state = states.IDLE;		
	}
}

if (attack) {
	state = states.ATTACK;
	image_index = 0;
}

// Apply movement
collision();

// Apply animation
anim();
