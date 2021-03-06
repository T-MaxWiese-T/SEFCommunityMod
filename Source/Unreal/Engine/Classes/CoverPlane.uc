///////////////////////////////////////////////////////////////////////////////

class CoverPlane extends Volume
	native;

///////////////////////////////////////////////////////////////////////////////

// If TRUE, the CoverPlane should be rotated about the Z axis as-needed
var() const bool CanBillBoard "If true, this cover plane can swivel on its vertical center point to face the most appropriate direction";

///////////////////////////////////////////////////////////////////////////////

defaultproperties
{
    bStatic   = false
    bHidden   = false
    bNoDelete = false
}

///////////////////////////////////////////////////////////////////////////////
