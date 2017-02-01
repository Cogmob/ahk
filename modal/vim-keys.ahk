global selecting = false

ActivateVimKeys() {
    hotkey, +{, LastParagraph
    hotkey, +}, NextParagraph
    hotkey, +I, InsertStartOfLineFunc
    hotkey, +A, InsertEndOfLineFunc
    hotkey, +O, InsertLineFunc

    hotkey, h, LeftFunc
    hotkey, j, DownFunc
    hotkey, k, UpFunc
    hotkey, l, RightFunc
    hotkey, w, RightWordFunc
    hotkey, b, LeftWordFunc
    hotkey, x, DeleteFunc
    hotkey, i, InsertFunc
    hotkey, s, InsertFunc
    hotkey, a, InsertAfterFunc
    hotkey, o, InsertAfterLineFunc
    hotkey, v, ShiftToggle
    hotkey, p, Paste
    hotkey, y, Copy

    hotkey, +h, LeftFunc
    hotkey, +j, DownFunc
    hotkey, +k, UpFunc
    hotkey, +l, RightFunc
    hotkey, +w, RightWordFunc
    hotkey, +b, LeftWordFunc
    hotkey, +x, DeleteFunc
    hotkey, +i, InsertFunc
    hotkey, +a, InsertAfterFunc
    hotkey, +o, InsertAfterLineFunc
    hotkey, +v, ShiftToggle

    hotkey, +{, on
    hotkey, +}, on
    hotkey, +I, on
    hotkey, +A, on
    hotkey, +O, on

    hotkey, h, on
    hotkey, j, on
    hotkey, k, on
    hotkey, l, on
    hotkey, w, on
    hotkey, b, on
    hotkey, x, on
    hotkey, i, on
    hotkey, y, on
    hotkey, s, on
    hotkey, a, on
    hotkey, o, on
    hotkey, v, on
    hotkey, p, on

    hotkey, +h, on
    hotkey, +j, on
    hotkey, +k, on
    hotkey, +l, on
    hotkey, +w, on
    hotkey, +b, on
    hotkey, +x, on
    hotkey, +i, on
    hotkey, +a, on
    hotkey, +o, on
    hotkey, +v, on
}

DeactivateVimKeys() {
    hotkey, +{, off
    hotkey, +}, off
    hotkey, +I, off
    hotkey, +A, off
    hotkey, +O, off

    hotkey, h, off
    hotkey, j, off
    hotkey, k, off
    hotkey, l, off
    hotkey, w, off
    hotkey, b, off
    hotkey, x, off
    hotkey, i, off
    hotkey, y, off
    hotkey, s, off
    hotkey, a, off
    hotkey, o, off
    hotkey, v, off
    hotkey, p, off

    hotkey, +h, off
    hotkey, +j, off
    hotkey, +k, off
    hotkey, +l, off
    hotkey, +w, off
    hotkey, +b, off
    hotkey, +x, off
    hotkey, +i, off
    hotkey, +a, off
    hotkey, +o, off
    hotkey, +v, off
}

LeftFunc() {
    send {left}
}

DownFunc() {
    send {down}
}

UpFunc() {
    send {up}
}

RightFunc() {
    send {right}
}

LeftWordFunc() {
    send {LCtrl down}
    send {left}
    send {LCtrl up}
}

RightWordFunc() {
    send {LCtrl down}
    send {right}
    send {LCtrl up}
}

LastParagraph() {
    MsgBox last paragraph not implemented
}

NextParagraph() {
    MsgBox next paragraph not implemented
}

DeleteFunc() {
    send {Delete}
}

InsertLineFunc() {
    changeMode("insert")
    send {home}
    send {return}
    send {up}
}

InsertAfterLineFunc() {
    changeMode("insert")
    send {end}
    send {return}
}

InsertAfterFunc() {
    changeMode("insert")
    send {right}
}

InsertFunc() {
    changeMode("insert")
}

InsertStartOfLineFunc() {
	changeMode("insert")
	send {home}
}

InsertEndOfLineFunc() {
	changeMode("insert")
	send {end}
}

ShiftToggle() {
    global selecting
    if (selecting) {
        send {shift up}
        selecting := false
    } else {
        send {shift down}
        selecting := true
    }
}

Copy() {
    Send ^c
}

Paste() {
    Send ^v
}