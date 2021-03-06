///////////////////////////////////////////////////////////////////////////////
// SquadMoveToGoal.uc - SquadMoveToGoal class
// this goal is used to organize the Officer's MoveTo behavior

class SquadMoveToGoal extends SquadCommandGoal;
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
//
// Variables

// copied to our action
var(parameters) vector Destination;


///////////////////////////////////////////////////////////////////////////////
//
// Constructors

// Use this constructor
overloaded function construct( AI_Resource r, Pawn inCommandGiver, vector inCommandOrigin, vector inDestination)
{
	super.construct(r, inCommandGiver, inCommandOrigin);

	Destination = inDestination;
}

///////////////////////////////////////////////////////////////////////////////
defaultproperties
{
	goalName = "SquadMoveTo"
	bRepostElementGoalOnSubElementSquad = true
}