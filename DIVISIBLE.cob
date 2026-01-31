IDENTIFICATION DIVISION.
PROGRAM-ID. DIVISIBLE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 I    PIC 9(4).
       PROCEDURE DIVISION.
           DISPLAY "Numbers divisible by 2, 3 and 17 from 1 to 1000:"
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 1000
               IF FUNCTION MOD(I, 2) = 0
                  AND FUNCTION MOD(I, 3) = 0
                  AND FUNCTION MOD(I, 17) = 0
                   DISPLAY I
               END-IF
           END-PERFORM
           STOP RUN.
