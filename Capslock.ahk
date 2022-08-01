
;管理員運行

;if not A_IsAdmin

;{

  ;Run *RunAs "%A_ScriptFullPath%"

  ;ExitApp

;}

;無環境變亮

#NoEnv

SetCapsLockState, AlwaysOff 

SetStoreCapslockMode,Off

;高進程

Process Priority,,High

CapsLock::

KeyWait, CapsLock, T0.3

If ErrorLevel {

    Send, {Capslock}

    KeyWait, CapsLock

} else {

    Send, ^{Space}
     
}

Return
