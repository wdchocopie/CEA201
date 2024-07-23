include D:\masm32\include\masm32rt.inc

sum_a PROTO :DWORD, :DWORD
.data


.code
    start:

        call main
        exit

        main proc
            LOCAL a:DWORD ; Double world
            LOCAL b:DWORD
           
            
            MOV a,sval(input("Nhap a: ")) ; String to value (sval)
            MOV b,sval(input("Nhap b: ")) ;
            
            
            invoke sum_a, a, b; call sum_a proc, send a and b to sum_a
            ret



        main endp
        sum_a proc a:DWORD, b:DWORD

            LOCAL sum:DWORD ; result
            LOCAL abc:DWORD ; leftover
            MOV eax , a   ;; move a to eax
            MOV ebx, b;
            
            XOR edx, edx ; xor edx with edx so we will get 0 at edx

            DIV ebx ; divide (eax/ebx)
            
            MOV sum, eax ; move result back to sum variable 
            MOV abc, edx;
            
            print chr$("A / B = ")
            print str$(sum) 
            print str$(abc)
            ret ; return where we call main / invoke main
            
        sum_a endp

    end start