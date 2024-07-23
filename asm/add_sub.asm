include D:\masm32\include\masm32rt.inc

.data
    textmsg db " " , 0

.code
    start:

        call main
        exit

        main proc
            LOCAL a:DWORD ; Double world
            LOCAL b:DWORD
            LOCAL sum:DWORD
            
            MOV a,sval(input("Nhap a: ")) ; String to value (sval)
            MOV b,sval(input("Nhap b: ")) ;

            MOV eax , a ; move a to eax register

            ADD eax, b ; add b to eax

            MOV sum, eax ; 

            print chr$("A + B = ")
            print str$(sum) ; convert to string

            ret
            

        main endp

    end start