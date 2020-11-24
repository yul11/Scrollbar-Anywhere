;juos ScrollBarAnywhere-script


~RButton::
{
    moved := 0
	
	loop{
		
		MouseGetPos, x, y, id, control		
		Sleep, 10		
		MouseGetPos, xx, yy, id, control

		if (yy>y){
			send {Down down}
			moved := 1
		}	
		else
		{ 
			if(yy < y){
				send {Up down}
				moved := 1
			}
			else
			{
				if(yy = y)
				{ 	
					GetKeyState, state, RButton
					if (state = "U"){
					
						if (moved = 1){
							Sleep, 20
							send {Esc down}
							Sleep, 20
							send {Esc up}
						}					
						return	
					}				
				}
			}
		}
	}
}