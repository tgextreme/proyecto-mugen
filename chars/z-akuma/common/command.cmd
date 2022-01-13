;-| Super Motions |--------------------------------------------------------
; Super Dragon Punch
[Command]
name = "sdragon"
command = ~D, DF, F, D, DF, F, x
time = 25
[Command]
name = "sdragon"
command = ~D, DF, F, D, DF, F, y
time = 25
[Command]
name = "sdragon_a"
command = ~D, DF, F, D, DF, F, a
time = 25

; Super Beam
[Command]
name = "sbeam"
command = ~D, DB, B, D, DB, B, x
time = 30
[Command]
name = "sbeam"
command = ~D, DB, B, D, DB, B, y
time = 30

; Super Hurricane Kick
[Command]
name = "shurricane_a"
command = ~D, DB, B, D, DB, B, a
time = 30

; Shun Goku Satsu
[Command]
name = "SGS"
command = x, x, F, a, z
time = 40

;-| Special Motions |------------------------------------------------------
; Dragon Punch
[Command]
name = "dragon_x"
command = ~F, D, DF, x
[Command]
name = "dragon_y"
command = ~F, D, DF, y

; Fireball
[Command]
name = "fireball_x"
command = ~D, DF, F, x
[Command]
name = "fireball_y"
command = ~D, DF, F, y

; Fireball Beam
[Command]
name = "fbeam_x"
command = ~F, DF, D, DB, B, x
[Command]
name = "fbeam_y"
command = ~F, DF, D, DB, B, y

; Hurricane Kick
[Command]
name = "hurricane_x"
command = ~D, DB, B, x
[Command]
name = "hurricane_y"
command = ~D, DB, B, y

; Cyberbots Arm Rip
[Command]
name = "arm-rip"
command = ~F, DF, D, x
[Command]
name = "arm-rip"
command = ~F, DF, D, y

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 30
command.buffer.time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;---------------------------------------------------------------------------
[State -1, Combo Reset]
type = VarSet
trigger1 = 1
var(20) = 0

[State -1, Combo Check]
type = VarSet
triggerall = StateType != A
trigger1 = (StateNo = [200,299]) || (StateNo = [400,499])
var(20) = 1

[State -1, Air Combo Reset]
type = VarSet
trigger1 = 1
var(21) = 0

[State -1, Air Combo Check]
type = VarSet
triggerall = StateType = A
trigger1 = (StateNo = [600,699])
var(21) = 1

;===========================================================================
;---------------------------------------------------------------------------
; Super Moves
;---------------------------------------------------------------------------
; Super Air Fireball
[State -1, State]
type = ChangeState
value = 1040
triggerall = NumHelper = 0
triggerall = Power >= 1000
triggerall = command = "sdragon_a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(21) > 0
trigger3 = stateno = [110,119]

;---------------------------------------------------------------------------
; Super Beam
[State -1, State]
type = ChangeState
value = 1050
triggerall = NumHelper = 0
triggerall = Power >= 1000
triggerall = command = "sbeam"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(20) > 0
trigger3 = stateno = [100,109]

;---------------------------------------------------------------------------
; Super Hurricane Kick
[State -1, State]
type = ChangeState
value = 1105
triggerall = Power >= 1000
triggerall = command = "shurricane_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(20) > 0
trigger3 = stateno = [100,109]

;---------------------------------------------------------------------------
; Super Dragon Punch
[State -1, State]
type = ChangeState
value = 1210
triggerall = Power >= 1000
triggerall = command = "sdragon"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(20) > 0
trigger3 = stateno = [100,109]

;---------------------------------------------------------------------------
; True Dragon Punch
[State -1, State]
type = ChangeState
value = 1220
triggerall = Power >= 1000
triggerall = command = "sdragon_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(20) > 0
trigger3 = stateno = [100,109]

;---------------------------------------------------------------------------
; Shun Goku Satsu
[State -1, State]
type = ChangeState
value = 320
triggerall = Power >= 1000
triggerall = command = "SGS"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(20) > 0
trigger3 = stateno = [100,109]

;===========================================================================
;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------
; Power Up
[State -1, State]
type = ChangeState
value = 900
triggerall = Power < 1000
triggerall = command = "x" && command = "y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,109]

[State -1, State]
type = ChangeState
value = 901
triggerall = Power >= 1000
triggerall = command = "x" && command = "y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,109]

;---------------------------------------------------------------------------
; Dragon Punch
[State -1, State]
type = ChangeState
value = 1200
triggerall = command = "dragon_x" || command = "dragon_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(20) > 0
trigger3 = stateno = [100,109]

;---------------------------------------------------------------------------
; Fireball Beam
[State -1, State]
type = ChangeState
value = 1015
triggerall = NumHelper = 0
triggerall = command = "fbeam_x" || command = "fbeam_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(20) > 0
trigger3 = stateno = [100,109]

;---------------------------------------------------------------------------
; Fireball
[State -1, State]
type = ChangeState
value = 1000
triggerall = NumHelper = 0
triggerall = command = "fireball_x" || command = "fireball_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(20) > 0
trigger3 = stateno = [100,109]

; Air Fireball
[State -1, State]
type = ChangeState
value = 1030
triggerall = NumHelper = 0
triggerall = command = "fireball_x" || command = "fireball_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(21) > 0
trigger3 = stateno = [110,119]

;---------------------------------------------------------------------------
; Hurricane Kick
[State -1, State]
type = ChangeState
value = 1100
triggerall = command = "hurricane_x" || command = "hurricane_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(20) > 0
trigger3 = stateno = [100,109]

[State -1, State]
type = ChangeState
value = 1102
triggerall = command = "hurricane_x" || command = "hurricane_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(21) > 0
trigger3 = stateno = [110,119]

;===========================================================================
;---------------------------------------------------------------------------
; Dash Attack 1
[State -1, Attack1]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = statetype != A
trigger1 = stateno = 100
trigger2 = stateno = 105

;---------------------------------------------------------------------------
; Dash Attack 2
[State -1, Attack1]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = statetype != A
trigger1 = stateno = 100
trigger2 = stateno = 105

;---------------------------------------------------------------------------
; Dash Forward
[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "FF"
trigger2 = command != "holdback"
trigger2 = command = "z"

;---------------------------------------------------------------------------
; Dash Back
[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "z"

;---------------------------------------------------------------------------
; Air Dash
[State -1, Down-Back]
type = ChangeState
value = 111
triggerall = ctrl
triggerall = statetype = A
trigger1 = command = "holddown"
trigger1 = command = "holdback"
trigger1 = command = "z"

[State -1, Down-Forward]
type = ChangeState
value = 113
triggerall = ctrl
triggerall = statetype = A
trigger1 = command = "holddown"
trigger1 = command = "holdfwd"
trigger1 = command = "z"

[State -1, Up-Back]
type = ChangeState
value = 117
triggerall = ctrl
triggerall = statetype = A
trigger1 = command = "holdup"
trigger1 = command = "holdback"
trigger1 = command = "z"

[State -1, Up-Forward]
type = ChangeState
value = 115
triggerall = ctrl
triggerall = statetype = A
trigger1 = command = "holdup"
trigger1 = command = "holdfwd"
trigger1 = command = "z"

[State -1, Back]
type = ChangeState
value = 110
triggerall = ctrl
triggerall = statetype = A
trigger1 = command = "holdback"
trigger1 = command = "z"

[State -1, Down]
type = ChangeState
value = 112
triggerall = ctrl
triggerall = statetype = A
trigger1 = command = "holddown"
trigger1 = command = "z"

[State -1, Forward]
type = ChangeState
value = 114
triggerall = ctrl
triggerall = statetype = A
trigger1 = command = "holdfwd"
trigger1 = command = "z"

[State -1, Up]
type = ChangeState
value = 116
triggerall = ctrl
triggerall = statetype = A
trigger1 = command = "holdup"
trigger1 = command = "z"

[State -1, Idle]
type = ChangeState
value = 118
triggerall = ctrl
triggerall = statetype = A
trigger1 = command = "z"

;===========================================================================
;---------------------------------------------------------------------------
; Arm Rip
;==========
; NOTE: This move is used as a future reference for Cyberbots
; converted chracters with detatchable arms, and is not intended
; for universal use.
;==========
[State -1, Grab]
type = ChangeState
value = 710
triggerall = command = "arm-rip"
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 700
triggerall = command = "x" || command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 20
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Stand Attack 1
[State -1, Attack1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Attack Combo
[State -1, Attack1]
type = ChangeState
value = 210
triggerall = time >= 5
triggerall = command = "x"
triggerall = statetype = S
triggerall = movecontact
trigger1 = stateno = 200

[State -1, Attack1]
type = ChangeState
value = 220
triggerall = time >= 5
triggerall = command = "y"
triggerall = statetype = S
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 210

;---------------------------------------------------------------------------
; Stand Attack 2
[State -1, Attack2]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouch Attack 1
[State -1, Attack1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouch Attack 2
[State -1, Attack2]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Attack 1
[State -1, Attack1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [110,119]

;---------------------------------------------------------------------------
; Jump Attack 2
[State -1, Attack2]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [110,119]

;---------------------------------------------------------------------------
