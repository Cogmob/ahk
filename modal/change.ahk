ActivateChange() {
    Hotkey, j, GoToInsert
    Hotkey, k, GoToNormal
    Hotkey, l, GoToMouse
    Hotkey, +j, GoToInsert
    Hotkey, +k, GoToNormal
    Hotkey, +l, GoToMouse
    Hotkey, SC027, SendTab
    Hotkey, +SC027, SendShiftTab

    Hotkey, +j, On
    Hotkey, +k, On
    Hotkey, +l, On
    Hotkey, j, On
    Hotkey, k, On
    Hotkey, l, On
    Hotkey, SC027, On
    Hotkey, +SC027, On
;    Hotkey, SC00F, Off
}

DeactivateChange() {
    Hotkey, +j, Off
    Hotkey, +k, Off
    Hotkey, +l, Off
    Hotkey, j, Off
    Hotkey, k, Off
    Hotkey, l, Off
    Hotkey, SC027, Off
    Hotkey, +SC027, Off
;    Hotkey, SC00F, On
}

GoToChangeWithEscape() {
    send, {escape down}{escape up}   changeMode("change")
}

GoToChange() {
    changeMode("change")
}

GoToInsert() {
    changeMode("insert")
}

GoToNormal() {
    changeMode("vim")
}

GoToMouse() {
    changeMode("mouse")
}

SendTab() {
    send, {tab}
}

SendShiftTab() {
    send, {shift down}{tab}{shift up}
}
