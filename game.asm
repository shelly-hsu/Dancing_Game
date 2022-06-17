INCLUDE Irvine32.inc

.data

Start_Delay DWORD 700	
Dance_Animation_Flag BYTE 0

Start0 BYTE   " *********		    *             *****       ***	   ************	       **************       **                ", 0
Start1 BYTE   " **********		   ***            ******      ***	  *************	       **************      ****               ", 0
Start2 BYTE   " ***     ***	          ** **           *** ***     ***        ***		       ***                 ****			  ", 0
Start3 BYTE   " ***	    ***	         **   **	  ***  ***    ***	***	               **************      ****                   ", 0
Start4 BYTE   " ***	    ***	        *********  	  ***   ***   ***      ***                     **************      ****           ", 0
Start5 BYTE   " ***	    ***	       ***********	  ***    ***  ***	***		       ***                  **                        ", 0
Start6 BYTE   " ***    ***	      ***       ***       ***	  *** ***        ***                   ***                            ", 0
Start7 BYTE   " *********	     ***	 ***	  ***      ******	  *************	       **************       **			      ", 0
Start8 BYTE   " ********	    ***	          ***	  ***	    *****	    ***********	       **************       **		      ", 0

Start9 BYTE    " ***		*************	     ***************	 ***	  ************  ", 0
Start10 BYTE   " ***		*************	     ***************	***      *************  ", 0
Start11 BYTE   " ***		***			   ***	       ***	****  ", 0
Start12 BYTE   " ***		*** 			   ***                 ****  ", 0
Start13 BYTE   " ***		*************		   ***		       **************  ", 0
Start14 BYTE   " ***		*************		   ***			***************  ", 0
Start15 BYTE   " ***		*** 			   ***				    ****  ", 0
Start16 BYTE   " ***		*** 			   ***				    ****  ", 0
Start17 BYTE   " ************	*************		   ***		        ***************  ", 0
Start18 BYTE   " ************	*************		   ***			**************  ", 0

PressToStart0 BYTE "__  __  ___  __  __     __ __   _    __ ___    ___  _      __ ___  _   __  ___" ,0
PressToStart1 BYTE "|_) |_) |_  (_  (_     (_  |_) /_\  /   |__     |  / \    (_   |  /_\  |_)  | " ,0
PressToStart2 BYTE "|   | \ |__ __) __)    __) |   |  \ \__ |__     |  \_/    __)  |  |  \ | \  | " ,0

cleanStr BYTE "                                                                                                                   ",0					
cleanStr1 BYTE "                                                                              ",0

outputSize HANDLE 0
screenSize SMALL_RECT <0,0,400,30>

collisionY1 BYTE 24
collisionY2 BYTE 33
whichArrow WORD ?
pressFlag BYTE ?
MonsterFlag BYTE ?
score DWORD ?
scoreStr BYTE "SCORE:", 0

line_basic BYTE "　       　||　       　||　       　 ||　       　 ||　       　||",0
line_board_1 BYTE"           ||___________||____________||____________||___________||",0
line_board_2 BYTE"           ||=||=||=||=||=||=||=||=||=||=||=||=||=||=||=||=||=||=||",0


arrow1_1 BYTE"     #     ",0
arrow1_2 BYTE"    ###    ",0
arrow1_3 BYTE"   #####   ",0
arrow1_4 BYTE"     #     ",0
arrow1_5 BYTE"     #     ",0

arrow2_1 BYTE"     #      ",0
arrow2_2 BYTE"    ##      ",0
arrow2_3 BYTE"   #######  ",0
arrow2_4 BYTE"    ##      ",0
arrow2_5 BYTE"     #      ",0

arrow3_1 BYTE"     #      ",0
arrow3_2 BYTE"     #      ",0
arrow3_3 BYTE"   #####    ",0
arrow3_4 BYTE"    ###     ",0
arrow3_5 BYTE"     #      ",0

arrow4_1 BYTE"     #     ",0
arrow4_2 BYTE"     ##    ",0
arrow4_3 BYTE" #######   ",0
arrow4_4 BYTE"     ##    ",0
arrow4_5 BYTE"     #     ",0

cleanStr3 BYTE"         ",0

carrot0 BYTE "    MMM    ",0
carrot1 BYTE "   ( _ )   ",0
carrot2 BYTE "   \ _ /   ",0
carrot3 BYTE "    \ /    ",0
carrot4 BYTE "     V     ",0

carrot0_2 BYTE "    MMM     ",0
carrot1_2 BYTE "   ( _ )    ",0
carrot2_2 BYTE "   \ _ /    ",0
carrot3_2 BYTE "    \ /     ",0
carrot4_2 BYTE "     V      ",0

Monster0 BYTE " .------.  ",0
Monster1 BYTE " | 0  0 |  ",0
Monster2 BYTE "<|   3  |> ",0
Monster3 BYTE " |______|  ",0
Monster4 BYTE "   v  v    ",0

Monster0_2 BYTE " .------.   ",0
Monster1_2 BYTE " | 0  0 |   ",0
Monster2_2 BYTE "<|   3  |>  ",0
Monster3_2 BYTE " |______|   ",0
Monster4_2 BYTE "   v  v     ",0

clean_life BYTE "                     ",0
life1 BYTE " ___________",0
life2 BYTE "|_|_|_|_|_|_|",0
life5_1 BYTE " _________",0
life5_2 BYTE "|_|_|_|_|_|",0
life4_1 BYTE " _______",0
life4_2 BYTE "|_|_|_|_|",0
life3_1 BYTE " _____",0
life3_2 BYTE "|_|_|_|",0
life2_1 BYTE " ___",0
life2_2 BYTE "|_|_|",0
life1_1 BYTE " _",0
life1_2 BYTE "|_|",0

lifeCount BYTE ? 
lifeDetect BYTE ?
endGame BYTE ?

Gameover0 BYTE  "	      ************	     * 		 *****		    *****     **************",0
Gameover1 BYTE  "	     *************	    ***          ******		   ******     **************",0
Gameover2 BYTE  "	    ***		           ** **	 *******   	  *******     ***",0
Gameover3 BYTE  "          ***			  **   **	 ***  ***	 ***  ***     **************",0
Gameover4 BYTE  "	  ***	      *****   	 ********* 	 ***   ***	***   ***     **************",0
Gameover5 BYTE  "	   ***	      *****	***********	 ***    ***     ***   ***     ***",0
Gameover6 BYTE  "	    ***	        ***    ***       ***	 ***	***   ***     ***     ***",0
Gameover7 BYTE  "	     *************    ***	  ***	 ***	 *** ***      ***     ************** ",0
Gameover8 BYTE  "	      ***********    ***	   ***	 ***	   *** 	      ***     **************",0

Gameover9 BYTE   "		   **********	 ***               ***  **************      ************",0
Gameover10 BYTE  "		  ************    ***             ***   **************      *************",0
Gameover11 BYTE  "		 ***        ***    ***           ***    ***		    ***	       ***",0
Gameover12 BYTE  "	        ***	     ***    ***         ***	**************      ***	       ***",0
Gameover13 BYTE  "	       ***            ***    ***       ***	**************      *************",0
Gameover14 BYTE  "		***	     ***      ***     ***	***		    ************",0
Gameover15 BYTE  "		 ***        ***	       ***   ***        ***                 ***    ***",0
Gameover16 BYTE  "		  ************          *** ***         **************      ***     ***",0
Gameover17 BYTE  "		   **********		 *****	        **************      ***      ***",0


win0 BYTE "   ***       ***     **********       ***        ***      ",0
win1 BYTE "    ***     ***     ************      ***        ***      ",0
win2 BYTE "     ***   ***     ***        ***     ***        ***      ",0
win3 BYTE "      *** ***     *** 	      ***    ***        ***     ",0
win4 BYTE "       *****     ***            ***   ***        ***      ",0
win5 BYTE "        ***       ***	      ***    ***        ***     ",0
win6 BYTE "        ***        ***        ***     ***        ***      ",0
win7 BYTE "        ***         ************       ***      ***       ",0
win8 BYTE "        ***          **********          ********         ",0

win9 BYTE  "  ***                  ***     *******      *****       ***    ",0
win10 BYTE "  ***                  ***       ***        ******      ***    ",0
win11 BYTE "  ***         *        ***       ***        *** ***     ***    ",0
win12 BYTE "  ***        ***       ***       ***        ***  ***    ***    ",0
win13 BYTE "   ***      *****      ***       ***        ***   ***   ***    ",0
win14 BYTE "    ***     *****     ***        ***        ***    ***  ***    ",0
win15 BYTE "     ***   *** ***   ***         ***        ***	   *** ***    ",0
win16 BYTE "      *** ***   *** ***          ***        ***      ******    ",0
win17 BYTE "       *****     *****         *******      ***       *****    ",0

outHandle1 HANDLE ?
outHandle2 HANDLE ?
outHandle3 HANDLE ?
outHandle4 HANDLE ?
outHandle5 HANDLE ?
titleStr BYTE "DANCE!",0
arrowStr1 BYTE 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,124,124,32,32,32,32,32,35,32,32,32,32,32,124,124
    BYTE 32,32,32,32,32,35,32,32,32,32,32,32,124,124,32,32,32,32,32,35,32,32,32,32,32,32,124,124
    BYTE 32,32,32,32,32,35,32,32,32,32,32,124,124
arrowStr2 BYTE 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,124,124,32,32,32,32,35,35,35,32,32,32,32,124,124
    BYTE 32,32,32,32,35,35,32,32,32,32,32,32,124,124,32,32,32,32,32,35,32,32,32,32,32,32,124,124
    BYTE 32,32,32,32,32,35,35,32,32,32,32,124,124
arrowStr3 BYTE 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,124,124,32,32,32,35,35,35,35,35,32,32,32,124,124
    BYTE 32,32,32,35,35,35,35,35,35,35,32,32,124,124,32,32,32,35,35,35,35,35,32,32,32,32,124,124
    BYTE 32,32,35,35,35,35,35,35,32,32,32,124,124
arrowStr4 BYTE 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,124,124,32,32,32,32,32,35,32,32,32,32,32,124,124
    BYTE 32,32,32,32,35,35,32,32,32,32,32,32,124,124,32,32,32,32,35,35,35,32,32,32,32,32,124,124
    BYTE 32,32,32,32,32,35,35,32,32,32,32,124,124
arrowStr5 BYTE 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,124,124,32,32,32,32,32,35,32,32,32,32,32,124,124
    BYTE 32,32,32,32,32,35,32,32,32,32,32,32,124,124,32,32,32,32,32,35,32,32,32,32,32,32,124,124
    BYTE 32,32,32,32,32,35,32,32,32,32,32,124,124
arrSize DWORD 73
attributes1 WORD 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,2,0,0,0,0,0
	WORD 3,3,0,0,0,0,0,5,0,0,0,0,0,0,3,3,0,0,0,0,0,4,0,0,0,0,0,0
	WORD 3,3,0,0,0,0,0,1,0,0,0,0,0,3,3
attributes2 WORD 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,2,2,2,0,0,0,0
	WORD 3,3,0,0,0,0,5,5,0,0,0,0,0,0,3,3,0,0,0,0,0,4,0,0,0,0,0,0
	WORD 3,3,0,0,0,0,0,1,1,0,0,0,0,3,3
attributes3 WORD 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,2,2,2,2,2,0,0,0
	WORD 3,3,0,0,0,5,5,5,5,5,5,5,0,0,3,3,0,0,0,4,4,4,4,4,0,0,0,0
    WORD 3,3,0,0,1,1,1,1,1,1,0,0,0,3,3
attributes4 WORD 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,2,0,0,0,0,0
    WORD 3,3,0,0,0,0,5,5,0,0,0,0,0,0,3,3,0,0,0,0,4,4,4,0,0,0,0,0
    WORD 3,3,0,0,0,0,0,1,1,0,0,0,0,3,3
attributes5 WORD 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,2,0,0,0,0,0
    WORD 3,3,0,0,0,0,0,5,0,0,0,0,0,0,3,3,0,0,0,0,0,4,0,0,0,0,0,0
    WORD 3,3,0,0,0,0,0,1,0,0,0,0,0,3,3
xyPos1 COORD <0,29>
xyPos2 COORD <0,30>
xyPos3 COORD <0,31>
xyPos4 COORD <0,32>
xyPos5 COORD <0,33>
cellswritten1 DWORD ?
cellswritten2 DWORD ?
cellswritten3 DWORD ?
cellswritten4 DWORD ?
cellswritten5 DWORD ?
.code

Collision proto, currentY:BYTE
StartGameMove proto, yPosition:BYTE
StartGameMove1 proto, yPosition:BYTE
StartGameMove2 proto, yPosition:BYTE
StartGameMove3 proto, yPosition:BYTE

CleanLife PROC USES eax ebx ecx edx,										;當分數再次歸零時會需要更新能量條，利用類似Create_s tr的方式將預設空白字串將原本的能量條清空。
    pStr:PTR BYTE, ;字串指標
    column: BYTE, ;座標x
    row: BYTE ;座標y
    mov eax,black
    mov dl,column
    mov dh,row
    call Gotoxy
    call SetTextColor
    mov edx,pStr
    call Writestring
    ret
CleanLife ENDP


Create_life1 PROC USES eax ebx ecx edx,									;創造能量條方框上方底線，利用傳入不同長度的方框底線達成顯示相對命數的能量條上方方框。
    pStr:PTR BYTE, ;字串指標
    column: BYTE, ;座標x
    row: BYTE ;座標y
    mov eax,white
    mov dl,column
    mov dh,row
    call Gotoxy
    call SetTextColor
    mov edx,pStr
    call Writestring
    ret
Create_life1 ENDP

Create_life2 PROC USES eax ebx ecx edx,								;創造能量條的本體，利用if判斷當前的命有幾條分別利用類似Crate_str的方式設置不同背景顏色和長度的能量條的樣式
    pStr:PTR BYTE, ;字串指標
    column: BYTE, ;座標x
    row: BYTE ;座標y
    .IF lifeCount==6
        mov eax,white+(green*16)
    .ELSEIF lifeCount==5
        mov eax,white+(lightblue*16)
    .ELSEIF lifeCount==4
        mov eax,white+(magenta*16)
    .ELSEIF lifeCount==3
        mov eax,white+(brown*16)
    .ELSEIF lifeCount==2
        mov eax,white+(lightred*16)
    .ELSEIF lifeCount==1
        mov eax,white+(red*16)
    .ENDIF    
    ;mov eax,white+(blue*32)
    mov dl,column
    mov dh,row
    call Gotoxy
    call SetTextColor
    mov edx,pStr
    call Writestring
    ret
Create_life2 ENDP


Create_str PROC USES eax ebx ecx edx,							;印出的字串指標以及字串顏色，利用 Gotoxy 將游標移動到指定座標、setTextColor改變要顯示字串的顏色，並利用 Writestring 將字串印出。
    pStr:PTR BYTE, ;字串指標
    column: BYTE, ;座標x
    row: BYTE,  ;座標y
	color: BYTE
	mov eax,0
    mov  dl,column
    mov  dh,row
    call Gotoxy
	mov al, color
    call SetTextColor
	mov edx,pStr
	call Writestring
    ret
Create_str ENDP



map_build PROC USES eax ebx ecx edx															;繪製基本地圖(軌道、彩色箭頭)
	xor bl,bl
	mov ecx, 26
Road:
	INVOKE Create_str ,OFFSET line_basic,6,bl,12
	inc bl
	loop Road
	xor bl,bl
	INVOKE Create_str ,OFFSET line_board_1,6,26,14
	INVOKE Create_str ,OFFSET line_board_2,6,27,14
	INVOKE Create_str ,OFFSET line_basic,6,28,14
	INVOKE GetStdHandle,STD_OUTPUT_HANDLE
	mov outHandle1,eax
	INVOKE WriteConsoleOutputAttribute,outHandle1,ADDR attributes1, arrSize,xyPos1,ADDR cellswritten1
	INVOKE WriteConsoleOutputCharacter,outHandle1,ADDR arrowStr1, arrSize,xyPos1,ADDR cellswritten1
	INVOKE GetStdHandle,STD_OUTPUT_HANDLE
	mov outHandle2,eax
	INVOKE WriteConsoleOutputAttribute,outHandle2,ADDR attributes2, arrSize,xyPos2,ADDR cellswritten2
	INVOKE WriteConsoleOutputCharacter,outHandle2,ADDR arrowStr2, arrSize,xyPos2,ADDR cellswritten2
	INVOKE GetStdHandle,STD_OUTPUT_HANDLE
	mov outHandle3,eax
	INVOKE WriteConsoleOutputAttribute,outHandle3,ADDR attributes3, arrSize,xyPos3,ADDR cellswritten3
	INVOKE WriteConsoleOutputCharacter,outHandle3,ADDR arrowStr3, arrSize,xyPos3,ADDR cellswritten3
	INVOKE GetStdHandle,STD_OUTPUT_HANDLE
	mov outHandle4,eax
	INVOKE WriteConsoleOutputAttribute,outHandle4,ADDR attributes4, arrSize,xyPos4,ADDR cellswritten4
	INVOKE WriteConsoleOutputCharacter,outHandle4,ADDR arrowStr4, arrSize,xyPos4,ADDR cellswritten4
	INVOKE GetStdHandle,STD_OUTPUT_HANDLE
	mov outHandle5,eax
	INVOKE WriteConsoleOutputAttribute,outHandle5,ADDR attributes5, arrSize,xyPos5,ADDR cellswritten5
	INVOKE WriteConsoleOutputCharacter,outHandle5,ADDR arrowStr5, arrSize,xyPos5,ADDR cellswritten5
	INVOKE Create_str ,OFFSET line_board_1,6,34,3
	INVOKE Create_str ,OFFSET line_board_2,6,35,3
	ret
map_build ENDP

DanceStr_Animation PROC USES eax ebx ecx edx								;根據 Dance_Animation_Flag 判斷要印出哪組標題字串，結束時將 Dance_Animation_Flag 設為補數
	 mov bl, Dance_Animation_Flag
	.IF bl == 0
		call Clrscr
		INVOKE Create_str ,OFFSET Start0,2,8,4
		INVOKE Create_str ,OFFSET Start1,2,9,6
		INVOKE Create_str ,OFFSET Start2,2,10,2
		INVOKE Create_str ,OFFSET Start3,2,11,3
		INVOKE Create_str ,OFFSET Start4,2,12,1
		INVOKE Create_str ,OFFSET Start5,2,13,3
		INVOKE Create_str ,OFFSET Start6,2,14,2
		INVOKE Create_str ,OFFSET Start7,2,15,6
		INVOKE Create_str ,OFFSET Start8,2,16,4
		INVOKE Create_str ,OFFSET PressToStart0,2,20,15
		INVOKE Create_str ,OFFSET PressToStart1,2,21,15
		INVOKE Create_str ,OFFSET PressToStart2,2,22,15
	.ELSE 
		call ClrScr
		INVOKE Create_str ,OFFSET Start9,14,2,4
		INVOKE Create_str ,OFFSET Start10,14,3,4
		INVOKE Create_str ,OFFSET Start11,14,4,6
		INVOKE Create_str ,OFFSET Start12,14,5,6
		INVOKE Create_str ,OFFSET Start13,14,6,3
		INVOKE Create_str ,OFFSET Start14,14,7,3
		INVOKE Create_str ,OFFSET Start15,14,8,1
		INVOKE Create_str ,OFFSET Start16,14,9,1
		INVOKE Create_str ,OFFSET Start17,14,10,2
		INVOKE Create_str ,OFFSET Start18,14,11,2

		INVOKE Create_str ,OFFSET cleanStr,2,20,0
		INVOKE Create_str ,OFFSET cleanStr,2,21,0
		INVOKE Create_str ,OFFSET cleanStr,2,22,0

		INVOKE Create_str ,OFFSET Start0,2,15,2
		INVOKE Create_str ,OFFSET Start1,2,16,1
		INVOKE Create_str ,OFFSET Start2,2,17,1
		INVOKE Create_str ,OFFSET Start3,2,18,3
		INVOKE Create_str ,OFFSET Start4,2,19,3
		INVOKE Create_str ,OFFSET Start5,2,20,6
		INVOKE Create_str ,OFFSET Start6,2,21,6
		INVOKE Create_str ,OFFSET Start7,2,22,4
		INVOKE Create_str ,OFFSET Start8,2,23,4
	.ENDIF
	xor bl, 1b
	mov Dance_Animation_Flag, bl
	ret
DanceStr_Animation ENDP

DanceStart PROC USES eax ebx ecx edx							;啟動遊戲標題動畫，利用readKey來讀取space，判斷是否要進入遊戲畫面。	
	INVOKE Create_str ,OFFSET Start0,2,8,4
    INVOKE Create_str ,OFFSET Start1,2,9,6
    INVOKE Create_str ,OFFSET Start2,2,10,2
    INVOKE Create_str ,OFFSET Start3,2,11,3
    INVOKE Create_str ,OFFSET Start4,2,12,1
    INVOKE Create_str ,OFFSET Start5,2,13,3
	INVOKE Create_str ,OFFSET Start6,2,14,2
    INVOKE Create_str ,OFFSET Start7,2,15,6
    INVOKE Create_str ,OFFSET Start8,2,16,4
	INVOKE Create_str ,OFFSET PressToStart0,2,20,15
    INVOKE Create_str ,OFFSET PressToStart1,2,21,15
    INVOKE Create_str ,OFFSET PressToStart2,2,22,15
checkSpace:
	call ReadKey
	.IF dx == 32					;if space is pressed
		call Clrscr
		ret
	.ENDIF
	mov ecx, 2
	mov eax, Start_Delay
	call Delay
	call DanceStr_Animation
	loop checkSpace
	ret
DanceStart ENDP

StartGame PROC USES eax ebx ecx edx									;代表箭頭的軌道，透過迴圈在下一單位y座標為起始點創造新白色箭頭 ，每一個下移的新箭頭都會呼叫測試碰撞，並更新分數，白色箭頭繼續執行迴圈往下移直到到地圖底端後，再使用Random產生新白色箭頭。
	xor ebx,ebx
	mov whichArrow, 38
	mov bx,1
	mov ecx,29
	mov eax, 260
L:
	push bx
	invoke StartGameMove, bl
	pop bx
	dec bl
	INVOKE Create_str ,OFFSET cleanStr3,19 ,bl,0
	add bl,2
	invoke Collision, bl
	.IF pressFlag == 1 && endGame == 0
		jmp Clean
	.ELSEIF endGame == 1
		ret
	.ENDIF
	call Delay
	loop L
Clean:
    call map_build
    mov PressFlag,0
    ret
StartGame ENDP

StartGame1 PROC USES eax ebx ecx edx							;代表箭頭的軌道，透過迴圈在下一單位y座標為起始點創造新白色箭頭 ，每一個下移的新箭頭都會呼叫測試碰撞，並更新分數，白色箭頭繼續執行迴圈往下移直到到地圖底端後，再使用Random產生新白色箭頭。
	xor ebx,ebx
	mov whichArrow, 37
	mov bx,1
	mov ecx,29
	mov eax, 260
L:
	push bx
	invoke StartGameMove1, bl
	pop bx
	dec bl
	INVOKE Create_str ,OFFSET cleanStr3,32 ,bl,0
	add bl,2
	invoke Collision, bl
	.IF pressFlag == 1 && endGame == 0
		jmp Clean
	.ELSEIF endGame == 1
		ret
	.ENDIF
	call Delay
	loop L
Clean:
    call map_build
    mov PressFlag,0
    ret
StartGame1 ENDP

StartGame2 PROC USES eax ecx ebx edx					;代表箭頭的軌道，透過迴圈在下一單位y座標為起始點創造新白色箭頭 ，每一個下移的新箭頭都會呼叫測試碰撞，並更新分數，白色箭頭繼續執行迴圈往下移直到到地圖底端後，再使用Random產生新白色箭頭。
	xor ebx,ebx
	mov whichArrow, 40
	mov bx,1
	mov ecx,29
	mov eax, 260
L:
	push bx
	invoke StartGameMove2, bl
	pop bx
	dec bl
	INVOKE Create_str ,OFFSET cleanStr3,46 ,bl,0
	add bl,2
	invoke Collision, bl
	.IF pressFlag == 1 && endGame == 0
		jmp Clean
	.ELSEIF endGame == 1
		ret
	.ENDIF
	call Delay
	loop L
Clean:
    call map_build
    mov PressFlag,0
    ret
StartGame2 ENDP

StartGame3 PROC USES eax ecx ebx						;代表箭頭的軌道，透過迴圈在下一單位y座標為起始點創造新白色箭頭 ，每一個下移的新箭頭都會呼叫測試碰撞，並更新分數，白色箭頭繼續執行迴圈往下移直到到地圖底端後，再使用Random產生新白色箭頭。
	xor ebx,ebx
	mov whichArrow, 39
	mov bx,1
	mov ecx,29
	mov eax, 260
L:
	push bx
	invoke StartGameMove3, bl
	pop bx
	dec bl
	INVOKE Create_str ,OFFSET cleanStr3,60 ,bl,0
	add bl,2
	invoke Collision, bl
	.IF pressFlag == 1 && endGame == 0
		jmp Clean
	.ELSEIF endGame == 1
		ret
	.ENDIF
	call Delay
	loop L
Clean:
    call map_build
    mov PressFlag,0
    ret
StartGame3 ENDP

StartGameMove PROC USES eax ebx ecx edx,										;作為輔助StartGame之功能，為避免各個StartGame中迴圈過度冗長，將產生白色箭頭的步驟另外拉出來實踐。
	yPosition:BYTE
	INVOKE Create_str ,OFFSET arrow1_1,19,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow1_2,19,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow1_3,19,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow1_4,19,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow1_5,19,yPosition,15
	ret
StartGameMove ENDP

StartGameMove1 PROC USES eax ebx ecx edx,										;作為輔助StartGame之功能，為避免各個StartGame中迴圈過度冗長，將產生白色箭頭的步驟另外拉出來實踐。
	yPosition:BYTE
	INVOKE Create_str ,OFFSET arrow2_1,32,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow2_2,32,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow2_3,32,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow2_4,32,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow2_5,32,yPosition,15
	ret
StartGameMove1 ENDP

StartGameMove2 PROC USES eax ebx ecx edx,										;作為輔助StartGame之功能，為避免各個StartGame中迴圈過度冗長，將產生白色箭頭的步驟另外拉出來實踐。
	yPosition:BYTE
	INVOKE Create_str ,OFFSET arrow3_1,46,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow3_2,46,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow3_3,46,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow3_4,46,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow3_5,46,yPosition,15
	ret
StartGameMove2 ENDP

StartGameMove3 PROC USES eax ebx ecx edx,										;作為輔助StartGame之功能，為避免各個StartGame中迴圈過度冗長，將產生白色箭頭的步驟另外拉出來實踐。
	yPosition:BYTE
	INVOKE Create_str ,OFFSET arrow4_1,60,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow4_2,60,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow4_3,60,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow4_4,60,yPosition,15
	inc yPosition
	INVOKE Create_str ,OFFSET arrow4_5,60,yPosition,15
	ret
StartGameMove3 ENDP

carrot PROC USES eax ebx ecx edx,									;作為輔助carrotStr之功能，為避免在carrotStr裡的迴圈過於冗長將紅蘿蔔往下位移的步驟獨立出來
	row:BYTE,
	col:BYTE,
	rowCondition:BYTE
	.IF rowCondition == 0
		INVOKE Create_str ,OFFSET carrot0,row,col,2
		inc col
		INVOKE Create_str ,OFFSET carrot1,row,col,6
		inc col
		INVOKE Create_str ,OFFSET carrot2,row,col,6
		inc col
		INVOKE Create_str ,OFFSET carrot3,row,col,6
		inc col
		INVOKE Create_str ,OFFSET carrot4,row,col,6
	.ENDIF
	.IF rowCondition == 3
		INVOKE Create_str ,OFFSET carrot0,row,col,2
		inc col
		INVOKE Create_str ,OFFSET carrot1,row,col,6
		inc col
		INVOKE Create_str ,OFFSET carrot2,row,col,6
		inc col
		INVOKE Create_str ,OFFSET carrot3,row,col,6
		inc col
		INVOKE Create_str ,OFFSET carrot4,row,col,6
	.ENDIF
	.IF rowCondition == 1
		INVOKE Create_str ,OFFSET carrot0_2,row,col,2
		inc col
		INVOKE Create_str ,OFFSET carrot1_2,row,col,6
		inc col
		INVOKE Create_str ,OFFSET carrot2_2,row,col,6
		inc col
		INVOKE Create_str ,OFFSET carrot3_2,row,col,6
		inc col
		INVOKE Create_str ,OFFSET carrot4_2,row,col,6
	.ENDIF
	.IF rowCondition == 2
		INVOKE Create_str ,OFFSET carrot0_2,row,col,2
		inc col
		INVOKE Create_str ,OFFSET carrot1_2,row,col,6
		inc col
		INVOKE Create_str ,OFFSET carrot2_2,row,col,6
		inc col
		INVOKE Create_str ,OFFSET carrot3_2,row,col,6
		inc col
		INVOKE Create_str ,OFFSET carrot4_2,row,col,6
	.ENDIF
	ret
carrot ENDP

carrotStr PROC USES eax ebx ecx edx,							;利用類似白色箭頭的物件下一方式，進行遊戲並更新分數，迴圈持續執行直到到地圖底端後，再使用Random產生新白色箭頭
	rowCondition:BYTE,
	row:BYTE
	xor ebx, ebx
	mov whichArrow, 32
	mov bx,1
	mov ecx,29
	mov eax, 260
L:
	push bx
	invoke carrot,row,bl,rowCondition
	pop bx
	dec bl
	INVOKE Create_str ,OFFSET cleanStr3,row,bl,0
	add bl,2
	invoke Collision, bl
	.IF pressFlag == 1 && endGame == 0
		jmp Clean
	.ELSEIF endGame == 1
		ret
	.ENDIF
	call Delay
	loop L
Clean:
    call map_build
    mov PressFlag,0
    ret
carrotStr ENDP

carrotRow PROC USES eax ebx ecx edx								;當遊戲預計要產生carrot的物件時，carrotRow 會利用 randomRange產生隨機的數字，每個數字對應不同的道路。
	mov eax, 4
	call RandomRange
	mov dl, al
	.IF al == 0
		mov bl,19
		mov whichArrow, 32
		INVOKE carrotStr, dl, bl
	.ENDIF
	.IF al == 1
		mov bl, 32
		INVOKE carrotStr, dl, bl
	.ENDIF
	.IF al == 2
		mov bl, 46
		INVOKE carrotStr, dl, bl
	.ENDIF
	.IF al == 3
		mov bl, 60
		INVOKE carrotStr, dl, bl
	.ENDIF
	ret
carrotRow ENDP

monster PROC USES eax ebx ecx edx,										;作為輔助monsterStr之功能。為避免在monsterStr裡的迴圈過於冗長將紅蘿蔔往下位移的步驟獨立出來。
	row:BYTE,
	col:BYTE,
	rowCondition:BYTE
	.IF rowCondition == 0
		INVOKE Create_str ,OFFSET Monster0,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster1,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster2,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster3,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster4,row,col,3
	.ENDIF
	.IF rowCondition == 3
		INVOKE Create_str ,OFFSET Monster0,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster1,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster2,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster3,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster4,row,col,3
	.ENDIF
	.IF rowCondition  == 1
		INVOKE Create_str ,OFFSET Monster0_2,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster1_2,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster2_2,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster3_2,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster4_2,row,col,3
	.ENDIF
	.IF rowCondition  == 2
		INVOKE Create_str ,OFFSET Monster0_2,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster1_2,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster2_2,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster3_2,row,col,3
		inc col
		INVOKE Create_str ,OFFSET Monster4_2,row,col,3
	.ENDIF
	ret
monster ENDP

monsterStr Proc USES eax ebx ecx edx,							;利用類似白色箭頭的物件下一方式，進行遊戲並更新分數，迴圈持續執行直到到地圖底端後，再使用Random產生新白色箭頭。同時，設定MonstreFlag = 1，以方便後續的碰撞判斷
	rowCondition:BYTE,
	row:BYTE
	xor ebx,ebx
	mov whichArrow, 32
	mov MonsterFlag, 1
	mov bx,1
	mov ecx,29
	mov eax, 260
L:
	push bx
	invoke monster,row,bl,rowCondition
	pop bx
	dec bl
	INVOKE Create_str ,OFFSET cleanStr3,row,bl,0
	add bl,2
	invoke Collision, bl
	.IF pressFlag == 1 && endGame == 0
		jmp Clean
	.ELSEIF endGame == 1
		ret
	.ENDIF
	call Delay
	loop L
Clean:
    call map_build
    mov PressFlag,0
    ret
monsterStr ENDP

monsterRow PROC USES eax ebx ecx edx							;當遊戲預計要產生monster的物件時，會call monsterRow。monsterRow 會利用 randomRange產生隨機的數字，每個數字對應不同的道路。
	mov eax, 4
	call RandomRange
	mov dl, al
	.IF al == 0
		mov bl,19
		INVOKE monsterStr, dl, bl
	.ENDIF
	.IF al == 1
		mov bl, 32
		INVOKE monsterStr, dl, bl
	.ENDIF
	.IF al == 2
		mov bl, 46
		INVOKE monsterStr, dl, bl
	.ENDIF
	.IF al == 3
		mov bl, 60
		INVOKE monsterStr, dl, bl
	.ENDIF
	ret
monsterRow ENDP

GameoverStr PROC USES eax ebx ecx edx								;若lifeCount = 0，call GameoverStr。GameoverStr會invoke Create_str將 “GAME OVER”的字串顯示出來。
	call Clrscr 
	mov eax, 200
	invoke Create_str, OFFSET Gameover0,1,2,4
	call Delay
	invoke Create_str, OFFSET Gameover1,1,3,4
	call Delay
	invoke Create_str, OFFSET Gameover2,1,4,4
	call Delay
	invoke Create_str, OFFSET Gameover3,1,5,4
	call Delay
	invoke Create_str, OFFSET Gameover4,1,6,4
	call Delay
	invoke Create_str, OFFSET Gameover5,1,7,4
	call Delay
	invoke Create_str, OFFSET Gameover6,1,8,4
	call Delay
	invoke Create_str, OFFSET Gameover7,1,9,4
	call Delay
	invoke Create_str, OFFSET Gameover8,1,10,4
	call Delay
	invoke Create_str, OFFSET Gameover9,1,13,4
	call Delay
	invoke Create_str, OFFSET Gameover10,1,14,4
	call Delay
	invoke Create_str, OFFSET Gameover11,1,15,4
	call Delay
	invoke Create_str, OFFSET Gameover12,1,16,4
	call Delay
	invoke Create_str, OFFSET Gameover13,1,17,4
	call Delay
	invoke Create_str, OFFSET Gameover14,1,18,4
	call Delay
	invoke Create_str, OFFSET Gameover15,1,19,4
	call Delay
	invoke Create_str, OFFSET Gameover16,1,20,4
	call Delay
	invoke Create_str, OFFSET Gameover17,1,21,4
	ret
GameoverStr ENDP

winStr PROC USES eax ebx ecx edx							;若遊戲預設的迴圈次數已經結束且lifeCount > 0，call winStr。 winstr 會invoke Creat_str將”YOU WIN”的字串顯示出來。
 call Clrscr												
 invoke Create_str, OFFSET win0,7,2,4
 invoke Create_str, OFFSET win1,7,3,4
 invoke Create_str, OFFSET win2,7,4,4
 invoke Create_str, OFFSET win3,7,5,4
 invoke Create_str, OFFSET win4,7,6,4
 invoke Create_str, OFFSET win5,7,7,4
 invoke Create_str, OFFSET win6,7,8,4
 invoke Create_str, OFFSET win7,7,9,4
 invoke Create_str, OFFSET win8,7,10,4
 invoke Create_str, OFFSET win9,7,13,4
 invoke Create_str, OFFSET win10,7,14,4
 invoke Create_str, OFFSET win11,7,15,4
 invoke Create_str, OFFSET win12,7,16,4
 invoke Create_str, OFFSET win13,7,17,4
 invoke Create_str, OFFSET win14,7,18,4
 invoke Create_str, OFFSET win15,7,19,4
 invoke Create_str, OFFSET win16,7,20,4
 invoke Create_str, OFFSET win17,7,21,4
 ret
winStr ENDP

Collision PROC USES eax ebx ecx edx, 
    currentY:BYTE
    call ReadKey															;在collision中，會利用ReadKey來讀取玩家的鍵盤。
    mov bl, currentY
    .IF dx == whichArrow && bl >= collisionY1 && bl <= collisionY2			;並且透過whichArrow的變數比玩家所按的鍵是否與要求相同。
        mov pressFlag, 1													;若相同則將pressFlag設定為1，方便後續跳回上 一個迴圈時，來做清除畫面的判斷條件。
        mov lifeDetect,1													;還有lifeDetect設定為1
        .IF (dx == 32 && monsterFlag == 1) && score>=10 
            sub score, 10
        .ElSEIF dx == 32 && monsterFlag == 0
            add score, 10
        .ELSEIF monsterFlag == 0
            add score, 20
        .ENDIF
    .ELSEIF (dx == 32 || dx== 37 || dx==38 || dx==39 || dx==40) && score>=10		;反之，若玩家按錯鍵，則score減10分(如果score已經是0 的情況則不再扣分)。
        mov lifeDetect,1
        sub score, 10
    .ENDIF
    mov  dl,80
    mov  dh,18
    call Gotoxy
	mov eax, white
    call SetTextColor
	mov edx, OFFSET scoreStr
	call WriteString
    mov eax,score
    call WriteDec										;透過WriteDec將改變後的score顯示出來。
    .IF score==0 && lifeDetect==1						;若同時score = 0和lifeDetect = 1，則對能量條進行改變。
        mov score,0
        xor eax,eax
        dec lifeCount
        INVOKE CleanLife ,OFFSET clean_life,75,9
        INVOKE CleanLife ,OFFSET clean_life,75,10
        .IF lifeCount==5
            INVOKE Create_life1 ,OFFSET life5_1,80,9
            INVOKE Create_life2 ,OFFSET life5_2,80,10
        .ENDIF
        .IF lifeCount==4
            INVOKE Create_life1 ,OFFSET life4_1,80,9
            INVOKE Create_life2 ,OFFSET life4_2,80,10
        .ENDIF
        .IF lifeCount==3
            INVOKE Create_life1 ,OFFSET life3_1,80,9
            INVOKE Create_life2 ,OFFSET life3_2,80,10
        .ENDIF
        .IF lifeCount==2
            INVOKE Create_life1 ,OFFSET life2_1,80,9
            INVOKE Create_life2 ,OFFSET life2_2,80,10
        .ENDIF
        .IF lifeCount==1
            INVOKE Create_life1 ,OFFSET life1_1,80,9
            INVOKE Create_life2 ,OFFSET life1_2,80,10
        .ENDIF
		 .IF lifeCount==0
			mov endGame,1
            call GameoverStr
        .ENDIF
    .ENDIF
    mov lifeDetect,0
    ret
Collision ENDP


main PROC
	mov pressFlag, 0
	mov endGame, 0
	invoke SetConsoleTitle, ADDR titleStr
	call DanceStart
	call map_build
	mov score, 0
	mov  dl,80
    mov  dh,18
    call Gotoxy
	mov eax, white
    call SetTextColor
	mov eax,score
	call WriteDec
	mov lifeDetect,0
    mov lifeCount,6
	mov ecx, 25
	INVOKE Create_life1 ,OFFSET life1,80,9
    INVOKE Create_life2 ,OFFSET life2,80,10
Dance:
	.IF endGame == 0
		mov MonsterFlag, 0
		mov eax, 6
		call RandomRange
		.IF al == 0
			call StartGame
		.ELSEIF al == 1
			call StartGame1
		.ELSEIF al == 2
			call StartGame2
		.ELSEIF al == 3
			call StartGame3
		.ELSEIF al == 4
			INVOKE monsterRow
		.ELSEIF al == 5
			INVOKE carrotRow
		.ENDIF
	.ELSE 
		jmp gameover
	.ENDIF
 loop Dance
 win :
	call winStr
 gameover:
	call Crlf
	call Crlf
	call Crlf
	call Crlf
	call Crlf
	call Crlf
	call Crlf
	call WaitMsg
exit
main ENDP
END main