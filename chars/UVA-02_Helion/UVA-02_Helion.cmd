;-| ���K�E�Z |--------------------------------------------------------
;�����ɂ͒��K�E�Z���L�q���Ă��������A�������O���uname =�v���ɏ����܂���
;�R�}���h�͐�΂Ɉ�������̂ɂ��Ă��������B
;�J���t�[�}���͎�p���`�Ƌ��p���`�ŋZ���o����悤�ɓ������O�̃R�}���h��
;���e����Ƌ��ɂȂ��Ă��܂��B
;�utime=20�v�Ə������ƂŁu�R�}���h��20�t���[���ȓ��ɓ��́v�Ɛݒ�ł��܂��B

; �V�����n�g�t�F���g�N���@�[��-A1
[Command]
name = "S-C1"
command = ~D, DF, F, D, DF, F, x
time = 40

; �V�����n�g�t�F���g�N���@�[��-A2
[Command] 
name = "S-C2"
command = ~D, DF, F, D, DF, F, y
time = 40

;-| �K�E�Z |------------------------------------------------------

; �t�����[�Q���{�[�Q��-A1
[Command]
name = "F-B1"
command = ~F, D, B, x
time = 20

; �t�����[�Q���{�[�Q��-A2
[Command]
name = "F-B2"
command = ~F, D, B, y
time = 20

; �t�F�A�G���f�����O�A�C��
[Command]
name = "F-E"
command = ~F, D, B, z
time = 20

; �c���@�C�g���o���g
[Command]
name = "T-T"
command = ~B, D, F, z
time = 20

; �t�@�����t��������
[Command]
name = "F-F"
command = ~D, DF, F, z
time = 20

; �q�������t�@���Q��A1
[Command]
name = "H-F1"
command = ~D, DB, B, x
time = 20

; �q�������t�@���Q��A2
[Command]
name = "H-F2"
command = ~D, DB, B, x
time = 20

; �S�b�g�N�[�Q��-A1
[Command]
name = "G-K1"
command = ~D, DF, F, x
time = 20

; �S�b�g�N�[�Q��-A2
[Command]
name = "G-K2"
command = ~D, DF, F, y
time = 20

;-| �Q�񉟂��Z |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

[Command]
name = "aa"     
command = a, a
time = 10

;-| �Q�E�R�̓��������Z |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "G-C"
command = x+y
time = 1

;-| �����ƃ{�^���ŏo���Z |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| �{�^���ݒ�i������Ȃ��j|---------------------------------------------------------
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

;-| �������ςȂ��ݒ�i������Ȃ��j-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "hold_a" 
command = /$a
time = 1

[Command]
name = "hold_b" 
command = /$b
time = 1

[Command]
name = "hold_c" 
command = /$c
time = 1

[Command]
name = "hold_x" 
command = /$x
time = 1

[Command]
name = "hold_y" 
command = /$y
time = 1

[Command]
name = "hold_z" 
command = /$z
time = 1

[Command]
name = "hold_s" 
command = /$s
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

; �u�[�X�g�p
[Command]
name = "hold-a"
command = /$a
time = 1

; ���̋L�q���͐�΂ɏ����Ȃ��ł��������B
[Statedef -1]
;===========================================================================
; ���K�E�Z
;===========================================================================
;---------------------------------------------------------------------------
; �V�����n�g�t�F���g�N���@�[��-A1
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "S-C1"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl

; �V�����n�g�t�F���g�N���@�[��-A2
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "S-C2"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; �M�K�N���b�V��
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "G-C"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
; �K�E�Z
;===========================================================================
;---------------------------------------------------------------------------
;�O���C�t�F���o���P��
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"|| command = "x"
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
;�t�F�A�G���f�����O�A�C��
[State -1, Stand Strong Punch]
type = ChangeState
value = 4700
triggerall = PalNo = 7
triggerall = command = "F-E"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�c���@�C�g���o���g
[State -1, Stand Strong Punch]
type = ChangeState
value = 4650
triggerall = PalNo = 7
triggerall = command = "T-T"
triggerall = command != "holddown"
triggerall = NumHelper(4600) = 0
triggerall = NumHelper(4601) = 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�󒆃c���@�C�g���o���g
[State -1, Stand Strong Punch]
type = ChangeState
value = 4655
triggerall = PalNo = 7
triggerall = command = "T-T"
triggerall = command != "holddown"
triggerall = NumHelper(4600) = 0
triggerall = NumHelper(4601) = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�t�H�A�����b�P�����b�T�[
[State -1, Stand Strong Punch]
type = ChangeState
value = 4500
triggerall = PalNo = 7
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�t�@�����t��������
[State -1, Stand Light Punch]
type = ChangeState
value = 4840
triggerall = PalNo = 7
triggerall = command = "F-F"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�t�����[�Q���{�[�Q��-A1
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1000
triggerall = command = "F-B1"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�t�����[�Q���{�[�Q��-A2
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1010
triggerall = command = "F-B2"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�S�b�g�N�[�Q��-A1
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1200
triggerall = command = "G-K1"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�S�b�g�N�[�Q��-A2
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1100
triggerall = command = "G-K2"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�q�������t�@���Q��
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1290
triggerall = command = "H-F1"
triggerall = command = "H-F2"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�A�C�[�����[�Q��
[State -1, Crouching Strong Punch]
type = ChangeState
value = 4800
triggerall = PalNo = 7
triggerall = command = "b"
triggerall = NumHelper(4805) = 0
triggerall = NumHelper(4806) = 0
trigger1 = statetype = A
trigger1 = ctrl

;===========================================================================
; ���ꓮ��
;===========================================================================
;---------------------------------------------------------------------------
;�_�b�V��
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;��ރ_�b�V��
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; �n��u�[�X�g�i�O���j
[State -1, Jump Light Punch]
type = ChangeState
value = 920
triggerall = command = "a"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; �n��u�[�X�g�i����j
[State -1, Jump Light Punch]
type = ChangeState
value = 930
triggerall = command = "a"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; �n��u�[�X�g�i�O���j
[State -1, Jump Light Punch]
type = ChangeState
value = 920
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; �󒆃u�[�X�g
[State -1, Jump Light Punch]
type = ChangeState
value = 900
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = var(10) > 0
trigger2 = Stateno = 600
trigger2 = time > 19
trigger3 = Stateno = 610
trigger3 = time > 25
trigger4 = stateno = 1390
trigger4 = movecontact

;===========================================================================
; �E�F�|���U��
;===========================================================================
;---------------------------------------------------------------------------
;�E�F�|���U��
[State -1, Stand Light Punch]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = NumHelper(610) = 0
triggerall = NumHelper(621) = 0
trigger1 = statetype = A
trigger1 = ctrl

;===========================================================================
; ����U��
;===========================================================================
;---------------------------------------------------------------------------
; �G���f�o���P��1
[State -1]
type = changestate
triggerall = statetype = C
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = command = "y"
trigger1 = ctrl
value = 420

;---------------------------------------------------------------------------
; �G���f�o���P��2
[State -1]
type = changestate
triggerall = StateType = S
triggerall = command = "holdfwd"
trigger1  = command = "y"
trigger1 = ctrl
value = 220

;---------------------------------------------------------------------------
;�E���^�[�A���O���t
[State 0, 5]
type = ChangeState
value = 630
triggerall = StateType = A
trigger1 = command = "holddown"
trigger1 = command = "y"
trigger1 = ctrl

;===========================================================================
; �ʏ�U��
;===========================================================================
;---------------------------------------------------------------------------
;����A1
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;����A2
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;�g�[�^�X
[State -2, Stand Strong Punch]
type = ChangeState
value = 6900
triggerall = PalNo = 7
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = NumHelper(7000) = 0
triggerall = NumHelper(7500) = 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;���[���b�N�Q
[State -2, Stand Strong Punch]
type = ChangeState
value = 7400
triggerall = PalNo = 7
triggerall = command = "s"
triggerall = command != "holddown"
triggerall = NumHelper(7000) = 0
triggerall = NumHelper(7500) = 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;����A1
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;����A2
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;��A1
[State -1, Jump Strong Punch]
type = ChangeState
value = 605
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;��A2
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "y"
triggerall = NumHelper(610) = 0
triggerall = NumHelper(621) = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;��A2(��ѓ����ʓ��ɂ���Ƃ�)
[State -1, Jump Strong Punch]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
�G�p���[����
[State -1, Power Charge]
type = ChangeState
value = 550
triggerall = command = "hold_x"
triggerall = command = "hold_y"
triggerall = statetype != A
triggerall = power < 1000
trigger1 = ctrl
