fil = getenv("FIL")
var = getenv("VAR")

; print("var: "+ var)
print("fil: " + fil)
f    = addfile(fil,"w")
f->var= time_reassign_cv2var(f, "time", var)
