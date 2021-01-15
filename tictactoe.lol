HAI 1.2

 
I HAS A BAR ITZ "|"
I HAS A BAR2 ITZ "-"
I HAS A BAR3 ITZ "+"
I HAS A R1C1 ITZ " "
I HAS A R1C2 ITZ " "
I HAS A R1C3 ITZ " "
I HAS A R2C1 ITZ " "
I HAS A R2C2 ITZ " "
I HAS A R2C3 ITZ " "
I HAS A R3C1 ITZ " "
I HAS A R3C2 ITZ " "
I HAS A R3C3 ITZ " "

HOW IZ I DISPLAY_BOARD
    VISIBLE ":)"
    VISIBLE SMOOSH R1C1 BAR R1C2 BAR R1C3 MKAY
    VISIBLE SMOOSH BAR2 BAR3 BAR2 BAR3 BAR2 MKAY
    VISIBLE SMOOSH R2C1 BAR R2C2 BAR R2C3 MKAY
    VISIBLE SMOOSH BAR2 BAR3 BAR2 BAR3 BAR2 MKAY
    VISIBLE SMOOSH R3C1 BAR R3C2 BAR R3C3 MKAY
    VISIBLE ":)"
    GTFO
IF U SAY SO

HOW IZ I WINNER
    ALL OF BOTH SAEM R1C1 AN R1C2 AN R1C3 MKAY, O RLY?
        YA RLY 
            FOUND YR SMOOSH R1C1 "wins" MKAY
    OIC
    ALL OF BOTH SAEM R2C1 AN R2C2 AN R2C3 MKAY, O RLY?
        YA RLY 
            FOUND YR SMOOSH R2C1 "wins" MKAY
    OIC
    ALL OF BOTH SAEM R3C1 AN R3C2 AN R3C3 MKAY, O RLY?
        YA RLY 
            FOUND YR SMOOSH R3C1 "wins" MKAY
    OIC
    ALL OF BOTH SAEM R1C1 AN R2C1 AN R3C1 MKAY, O RLY?
        YA RLY 
            FOUND YR SMOOSH R1C1 "wins" MKAY
    OIC
    ALL OF BOTH SAEM R1C2 AN R2C2 AN R3C2 MKAY, O RLY?
        YA RLY 
            FOUND YR SMOOSH R1C2 "wins" MKAY
    OIC
    ALL OF BOTH SAEM R1C3 AN R2C3 AN R3C3 MKAY, O RLY?
        YA RLY 
            FOUND YR SMOOSH R1C3 "wins" MKAY
    OIC
    ALL OF BOTH SAEM R1C1 AN R2C2 AN R3C3 MKAY, O RLY?
        YA RLY 
            FOUND YR SMOOSH R1C1 "wins" MKAY
    OIC
    ALL OF BOTH SAEM R1C3 AN R2C2 AN R3C1 MKAY, O RLY?
        YA RLY 
            FOUND YR SMOOSH R1C1 "wins" MKAY
    OIC
    
    FOUND YR NEITHER
IF U SAY SO

I HAS A PLAYR1 ITZ WIN
I HAS A NUM_MOVES ITZ 0

IM IN YR GAME UPPIN YR NUM_MOVES TIL BOTH SAEM NUM_MOVES AN 9
    I IZ DISPLAY_BOARD MKAY
    VISIBLE "CHOOSE POSITION 1-9 TO GO"
    I HAS A POSITION
    GIMMEH POSITION
    POSITION, WTF?
        OMG "1"
            PLAYR1, O RLY?
                YA RLY
                    R1C1 R "X"
                NO WAI
                    R1C1 R "O"
            OIC
            PLAYR1 R NOT PLAYR1
            GTFO
        OMG "2"
            PLAYR1, O RLY?
                YA RLY
                    R1C2 R "X"
                NO WAI
                    R1C2 R "O"
            OIC
            PLAYR1 R NOT PLAYR1
            GTFO
        OMG "3"
            PLAYR1, O RLY?
                YA RLY
                    R1C3 R "X"
                NO WAI
                    R1C3 R "O"
            OIC
            PLAYR1 R NOT PLAYR1
            GTFO
        OMG "4"
            PLAYR1, O RLY?
                YA RLY
                    R2C1 R "X"
                NO WAI
                    R2C1 R "O"
            OIC
            PLAYR1 R NOT PLAYR1
            GTFO
        OMG "5"
            PLAYR1, O RLY?
                YA RLY
                    R2C2 R "X"
                NO WAI
                    R2C2 R "O"
            OIC
            PLAYR1 R NOT PLAYR1
            GTFO
        OMG "6"
            PLAYR1, O RLY?
                YA RLY
                    R2C3 R "X"
                NO WAI
                    R2C3 R "O"
            OIC
            PLAYR1 R NOT PLAYR1
            GTFO
        OMG "7"
            PLAYR1, O RLY?
                YA RLY
                    R3C1 R "X"
                NO WAI
                    R3C1 R "O"
            OIC
            PLAYR1 R NOT PLAYR1
            GTFO
        OMG "8"
            PLAYR1, O RLY?
                YA RLY
                    R3C2 R "X"
                NO WAI
                    R3C2 R "O"
            OIC
            PLAYR1 R NOT PLAYR1
            GTFO
        OMG "9"
            PLAYR1, O RLY?
                YA RLY
                    R3C3 R "X"
                NO WAI
                    R3C3 R "O"
            OIC
            PLAYR1 R NOT PLAYR1
            GTFO
        OMGWTF
            VISIBLE "NOPE TRY AGAIN"
            NUM_MOVES R DIFF OF NUM_MOVES AN 1
    OIC
    
    VISIBLE I IZ WINNER MKAY
IM OUTTA YR GAME
    
KTHXBYE
