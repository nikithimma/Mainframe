IDENTIFICATION DIVISION.
PROGRAM-ID. REVERSE-NUMBER.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM      PIC 9(5).
       01 REV      PIC 9(5) VALUE 0.
       01 REM      PIC 9.
       01 TEMP     PIC 9(5).
       PROCEDURE DIVISION.
           ACCEPT NUM
           DISPLAY "Enter a five digit number: " NUM
           MOVE NUM TO TEMP
           PERFORM UNTIL TEMP = 0
               DIVIDE TEMP BY 10
                   GIVING TEMP
                   REMAINDER REM
               MULTIPLY REV BY 10 GIVING REV
               ADD REM TO REV
           END-PERFORM
           DISPLAY "Reversed number is: " REV
           STOP RUN.
