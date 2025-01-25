```cobol
01  WS-AREA.          
    05  WS-AMOUNT       PIC 9(7)V99 VALUE ZEROES.
    05  WS-COUNT        PIC 9(3) VALUE ZEROES.
    05  WS-OVERFLOW     PIC 9 VALUE 0.

PROCEDURE DIVISION.
    PERFORM VARYING WS-COUNT FROM 1 BY 1 UNTIL WS-COUNT > 10
        ADD 10.25 TO WS-AMOUNT
        IF WS-AMOUNT < 0 THEN
            MOVE 1 TO WS-OVERFLOW
        END-IF
        DISPLAY WS-AMOUNT
    END-PERFORM.
    IF WS-OVERFLOW = 1 THEN
        DISPLAY "Numeric overflow detected."
    END-IF
    STOP RUN.
```