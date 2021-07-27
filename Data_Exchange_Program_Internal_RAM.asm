PROBLEM :-  Write an assembly language program to exchange n = 5 bytes ofdata at Location 0027h and at location 0041h.

Algorithm:
1. Initialize origin of program at 0000H.
2. Jump to 30H and initialize origin at 30H.
3. Initialize registers to hold count data & also the source & destination
addresses.
4. Initialize registers to hold count (array size) & also the source &
destination addresses.
5. Get data from source location into accumulator and save in a register.
6. Get data from the destination location into accumulator.
7. Exchange the data at the two memory locations.
8. Increment source and destination addresses.
9. Decrement the counting register and check if it has reached Zero.
10. Repeat from step 5 to 9 till count is zero.

CODE :-
    ORG 0000H
	SJMP 30H
	ORG 30H
		MOV R0,#27H
		MOV R1,#41H
		MOV R3,#0AH
		BACK: MOV A,@R0
		         MOV R2,A
				 MOV A,@R1
				 MOV @R0,A
				 MOV A,R2
				 MOV @R1,A
				 INC R0
				 INC R1
				 DJNZ R3,BACK
		SJMP $
		END
  
 2ND METHOD:-
 
Alter using XCH command
Algorithm:
1. Initialize origin of program at 0000H.
2. Jump to 30H and initialize origin at 30H.
3. Initialize registers to hold count data & also the source & destination
addresses.
4. Initialize registers to hold count (array size) & also the source &
destination addresses.
5. Get data from source location into accumulator and save in a register.
6. Exchange data using XCH command.
7. Increment source and destination addresses.
8. Decrement the counting register and check if it has reached Zero.
9. Repeat from step 5 to 8 till count is zero.

CODE:-
  ORG 0000H
       SJMP 30H
       ORG 30H
          MOV R0,#27H
          MOV R1,#41H
          MOV R3,#05H
          BACK: MOV A,@R0
                XCH A,@R1
                MOV @R0,A
                INC R0
                INC R1
                DJNZ R3, BACK
                HERE: SJMP HERE
          END
  
