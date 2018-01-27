switch (state)
{
	case transmitState.send_onPath:
		state = transmitState.send_toTarget;
		target_scaling = 0.25;
		break;
	case transmitState.return_onPath:
		state = transmitState.return_toPile;
		break;
}