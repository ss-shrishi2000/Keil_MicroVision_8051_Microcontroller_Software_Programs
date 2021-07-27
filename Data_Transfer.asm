PROBLEM 1>  Write an assembly language program to transfer n = 10 bytes of data from location 8035h to location 8050h (without overlap)

Algorithm :
1. Initialize origin of program at 0000H.
2. Jump to 30H and initialize origin at 30H.
3. Initialize registers to hold count & also the source & destination addresses of code memory.
4. Load lower byte of address into DPL register.
5. Get data from source location into accumulator.
6. Move destination address into DPL register.
7. Transfer data to the destination location.
8. Increment source and destination addresses.
9. Decrement the counting register and check if it has reached Zero.
10. Repeat step 5 to 9 till count is zero.

CODE :-
    ORG 0000H
     SJMP 30H
     ORG 30H
     BACK: MOV DPH,#80H
      MOV R0,#35H
      MOV R1,#50H
      MOV R3,#0AH
      MOV DPL, R0
      MOVX A,@DPTR
      MOV DPL, R1
      MOVX @DPTR,A
      INC R0
      INC R1
      DJNZ R3, BACK
    SJMP HERE
    END
