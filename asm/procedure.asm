include D:\masm32\include\masm32rt.inc

.code
    start:
        call main
        exit

    main proc
        print chr$("test", 13, 10)
        ret ; return to next instruction
    main endp

end start