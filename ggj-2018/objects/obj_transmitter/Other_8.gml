switch (state)
{
	case transmitState.send_onPath:
		state = transmitState.send_toTarget;
		scaling = 0.5;
		break;
	case transmitState.return_onPath:
		state = transmitState.return_toPile;
		break;
}