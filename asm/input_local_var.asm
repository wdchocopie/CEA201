include D:/masm32/include/masm32rt.inc

show_text PROTO :DWORD

.code
    start:
        
        call main
        exit

    main proc
        LOCAL txtinput:DWORD

        mov txtinput , input("input: ", 13, 10)
        invoke show_text, txtinput
        ret

    main endp


    show_text proc string:DWORD
        print chr$("test: ")
        print string

        ret
    show_text endp

end start