IDENTIFICATION DIVISION.
PROGRAM-ID. PRIME-NUMBERS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM   PIC 999.
       01 I     PIC 999.
       01 COU PIC 99.
       PROCEDURE DIVISION.
           DISPLAY "Prime numbers from 1 to 200 are:"
           PERFORM VARYING NUM FROM 2 BY 1 UNTIL NUM > 200
               MOVE 0 TO COU
               PERFORM VARYING I FROM 1 BY 1 UNTIL I > NUM
                   IF FUNCTION MOD(NUM, I) = 0 THEN
                       ADD 1 TO COU
                   END-IF
               END-PERFORM
               IF COU = 2 THEN
                   DISPLAY NUM
               END-IF
           END-PERFORM
           STOP RUN.
