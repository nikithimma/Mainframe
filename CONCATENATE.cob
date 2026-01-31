IDENTIFICATION DIVISION.
PROGRAM-ID. CONCAT-LEN.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 STR1     PIC X(10).
       01 STR2     PIC X(10).
       01 RESULT   PIC X(20).
       01 I        PIC 99.
       01 LEN      PIC 99 VALUE 0.
       PROCEDURE DIVISION.
           ACCEPT STR1
           DISPLAY "Enter first string:" STR1
           ACCEPT STR2
           DISPLAY "Enter second string:" STR2
           STRING STR1 DELIMITED BY SPACE
                  STR2 DELIMITED BY SPACE
                  INTO RESULT
           END-STRING
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 20
               IF RESULT(I:1) NOT = SPACE
                   ADD 1 TO LEN
               END-IF
           END-PERFORM
           DISPLAY "Concatenated string:" RESULT
           DISPLAY "Length of string:" LEN
           STOP RUN.
