global savedPositions := {} 
CoordMode, Mouse, Screen
savedPositions.6x := 0
savedPositions.7x := 0
savedPositions.8x := 0
savedPositions.yx := 0
savedPositions.ux := 0
savedPositions.ix := 0
savedPositions.ox := 0
savedPositions.px := 0
savedPositions.hx := 0
savedPositions.jx := 0
savedPositions.kx := 0
savedPositions.lx := 0
savedPositions.colonx := 0
savedPositions.nx := 0
savedPositions.mx := 0
savedPositions.commax := 0
savedPositions.dotx := 0
savedPositions.slashx := 0

savedPositions.6y := 0
savedPositions.7y := 0
savedPositions.8y := 0
savedPositions.yy := 0
savedPositions.uy := 0
savedPositions.iy := 0
savedPositions.oy := 0
savedPositions.py := 0
savedPositions.hy := 0
savedPositions.jy := 0
savedPositions.ky := 0
savedPositions.ly := 0
savedPositions.colony := 0
savedPositions.ny := 0
savedPositions.my := 0
savedPositions.commay := 0
savedPositions.doty := 0
savedPositions.slashy := 0

mousejumpActivate() {
	global savedPositions
	Hotkey, 6, mousejumpLoad6
	Hotkey, 7, mousejumpLoad7
	Hotkey, 8, mousejumpLoad8
	Hotkey, y, mousejumpLoadY
	Hotkey, u, mousejumpLoadU
	Hotkey, i, mousejumpLoadI
	Hotkey, o, mousejumpLoadO
	Hotkey, p, mousejumpLoadP
	Hotkey, h, mousejumpLoadH
	Hotkey, j, mousejumpLoadJ
	Hotkey, k, mousejumpLoadK
	Hotkey, l, mousejumpLoadL
	Hotkey, :, mousejumpLoadColon
	Hotkey, n, mousejumpLoadN
	Hotkey, m, mousejumpLoadM
	Hotkey, `,, mousejumpLoadComma
	Hotkey, ., mousejumpLoadDot
	Hotkey, /, mousejumpLoadSlash

	Hotkey, +6, mousejumpSave6
	Hotkey, +7, mousejumpSave7
	Hotkey, +8, mousejumpSave8
	Hotkey, +y, mousejumpSaveY
	Hotkey, +u, mousejumpSaveU
	Hotkey, +i, mousejumpSaveI
	Hotkey, +o, mousejumpSaveO
	Hotkey, +p, mousejumpSaveP
	Hotkey, +h, mousejumpSaveH
	Hotkey, +j, mousejumpSaveJ
	Hotkey, +k, mousejumpSaveK
	Hotkey, +l, mousejumpSaveL
	Hotkey, +:, mousejumpSaveColon
	Hotkey, +n, mousejumpSaveN
	Hotkey, +m, mousejumpSaveM
	Hotkey, +`,, mousejumpSaveComma
	Hotkey, +., mousejumpSaveDot
	Hotkey, +/, mousejumpSaveSlash

	Hotkey, 6, On
	Hotkey, 7, On
	Hotkey, 8, On
	Hotkey, y, On
	Hotkey, u, On
	Hotkey, i, On
	Hotkey, o, On
	Hotkey, p, On
	Hotkey, h, On
	Hotkey, j, On
	Hotkey, k, On
	Hotkey, l, On
	Hotkey, :, On
	Hotkey, n, On
	Hotkey, m, On
	Hotkey, `,, On
	Hotkey, ., On
	Hotkey, /, On

	Hotkey, +6, On
	Hotkey, +7, On
	Hotkey, +8, On
	Hotkey, +y, On
	Hotkey, +u, On
	Hotkey, +i, On
	Hotkey, +o, On
	Hotkey, +p, On
	Hotkey, +h, On
	Hotkey, +j, On
	Hotkey, +k, On
	Hotkey, +l, On
	Hotkey, +:, On
	Hotkey, +n, On
	Hotkey, +m, On
	Hotkey, +`,, On
	Hotkey, +., On
	Hotkey, +/, On
}


mousejumpDeactivate() {
	Hotkey, 6, Off
	Hotkey, 7, Off
	Hotkey, 8, Off
	Hotkey, y, Off
	Hotkey, u, Off
	Hotkey, i, Off
	Hotkey, o, Off
	Hotkey, p, Off
	Hotkey, h, Off
	Hotkey, j, Off
	Hotkey, k, Off
	Hotkey, l, Off
	Hotkey, :, Off
	Hotkey, n, Off
	Hotkey, m, Off
	Hotkey, `,, Off
	Hotkey, ., Off
	Hotkey, /, Off

	Hotkey, +6, Off
	Hotkey, +7, Off
	Hotkey, +8, Off
	Hotkey, +y, Off
	Hotkey, +u, Off
	Hotkey, +i, Off
	Hotkey, +o, Off
	Hotkey, +p, Off
	Hotkey, +h, Off
	Hotkey, +j, Off
	Hotkey, +k, Off
	Hotkey, +l, Off
	Hotkey, +:, Off
	Hotkey, +n, Off
	Hotkey, +m, Off
	Hotkey, +`,, Off
	Hotkey, +., Off
	Hotkey, +/, Off
}

mousejumpSave6() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.6x := xvar
	savedPositions.6y := yvar
}

mousejumpSave7() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.7x := xvar
	savedPositions.7y := yvar
}

mousejumpSave8() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.8x := xvar
	savedPositions.8y := yvar
}

mousejumpSaveY() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.yx := xvar
	savedPositions.yy := yvar
}

mousejumpSaveU() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.ux := xvar
	savedPositions.uy := yvar
}

mousejumpSaveI() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.ix := xvar
	savedPositions.iy := yvar
}

mousejumpSaveO() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.ox := xvar
	savedPositions.oy := yvar
}

mousejumpSaveP() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.px := xvar
	savedPositions.py := yvar
}

mousejumpSaveH() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.hx := xvar
	savedPositions.hy := yvar
}

mousejumpSaveJ() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.jx := xvar
	savedPositions.jy := yvar
}

mousejumpSaveK() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.kx := xvar
	savedPositions.ky := yvar
}

mousejumpSaveL() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.lx := xvar
	savedPositions.ly := yvar
}

mousejumpSaveColon() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.colonx := xvar
	savedPositions.colony := yvar
}

mousejumpSaveN() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.nx := xvar
	savedPositions.ny := yvar
}

mousejumpSaveM() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.mx := xvar
	savedPositions.my := yvar
}


mousejumpSaveComma() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.commax := xvar
	savedPositions.commay := yvar
}


mousejumpSaveDot() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.dotx := xvar
	savedPositions.doty := yvar
}


mousejumpSaveSlash() {
	global savedPositions
	MouseGetPos, xvar, yvar
	savedPositions.slashx := xvar
	savedPositions.slashy := yvar
}


mousejumpLoad6() {
	global savedPositions
	MouseMove, savedPositions.6x, savedPositions.6y
}

mousejumpLoad7() {
	global savedPositions
	MouseMove, savedPositions.7x, savedPositions.7y
}

mousejumpLoad8() {
	global savedPositions
	MouseMove, savedPositions.8x, savedPositions.8y
}

mousejumpLoadY() {
	global savedPositions
	MouseMove, savedPositions.yx, savedPositions.yy
}

mousejumpLoadU() {
	global savedPositions
	MouseMove, savedPositions.ux, savedPositions.uy
}

mousejumpLoadI() {
	global savedPositions
	MouseMove, savedPositions.ix, savedPositions.iy
}

mousejumpLoadO() {
	global savedPositions
	MouseMove, savedPositions.ox, savedPositions.oy
}

mousejumpLoadP() {
	global savedPositions
	MouseMove, savedPositions.px, savedPositions.py
}

mousejumpLoadH() {
	global savedPositions
	MouseMove, savedPositions.hx, savedPositions.hy
}

mousejumpLoadJ() {
	global savedPositions
	MouseMove, savedPositions.jx, savedPositions.jy
}

mousejumpLoadK() {
	global savedPositions
	MouseMove, savedPositions.kx, savedPositions.ky
}

mousejumpLoadL() {
	global savedPositions
	MouseMove, savedPositions.lx, savedPositions.ly
}

mousejumpLoadColon() {
	global savedPositions
	MouseMove, savedPositions.colonx, savedPositions.colony
}

mousejumpLoadN() {
	global savedPositions
	MouseMove, savedPositions.nx, savedPositions.ny
}

mousejumpLoadM() {
	global savedPositions
	MouseMove, savedPositions.mx, savedPositions.my
}

mousejumpLoadComma() {
	global savedPositions
	MouseMove, savedPositions.commax, savedPositions.commay
}

mousejumpLoadDot() {
	global savedPositions
	MouseMove, savedPositions.dotx, savedPositions.doty
}

mousejumpLoadSlash() {
	global savedPositions
	MouseMove, savedPositions.slashx, savedPositions.slashy
}
