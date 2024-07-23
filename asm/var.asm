include D:\masm32\include\masm32rt.inc

.data
    textmsg db "Hello World" , 0

.code
    start:
        call main
        exit
        
    main proc
        print OFFSET textmsg
        ret
    main endp

end start