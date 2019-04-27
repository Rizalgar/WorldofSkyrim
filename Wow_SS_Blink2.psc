Scriptname Wow_SS_Blink2 extends ObjectReference
{Required for Blink usage}

Actor Property PlayerRef Auto

Event OnLoad() 
	PlayerRef.TranslateToRef(Self, 20000.0)
	Utility.Wait(2.0)
	Self.Disable()
	Self.Delete()
EndEvent