///@desc player_attack_state()
// Get Input
get_input();

// Calculate movement
calc_movement();

// Check State
if (image_index >= image_number - image_speed) {
	if (hsp != 0) {
		state = states.WALK;
	} else {
		state = states.IDLE;
	}
}

// Apply movement
collision();

// Apply animation
anim();
