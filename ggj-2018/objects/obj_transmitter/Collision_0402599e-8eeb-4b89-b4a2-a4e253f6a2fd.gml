if (state == transmitState.return_onPath || state == transmitState.return_toPile)
{
	obj_piece_pile.num_transmitters++;
	instance_destroy();
}