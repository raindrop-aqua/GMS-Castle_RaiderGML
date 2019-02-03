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
	// Create dust if landing
	if (vsp > 0) {
		instance_create_layer(x, y, "Dust", o_player_dust_land);
	}
}

if (attack) {
	state = states.ATTACK;
	image_index = 0;
}

// Enable double jumps
if (jump) {
	jumped();
}

// Enable smaller jump
if (vsp < 0 and not jump_held) {
	vsp = max(vsp, jump_spd / jump_dampner);	
}

// Apply movement
collision();

// Apply animation
anim();
