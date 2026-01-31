 IDENTIFICATION DIVISION.
 PROGRAM-ID. FACTORIAL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NUM        PIC 99.
       01  I          PIC 99.
       01  FACT       PIC 99999 VALUE 1.
       PROCEDURE DIVISION.
           ACCEPT NUM
           DISPLAY "Enter a number: " NUM
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > NUM
               COMPUTE FACT = FACT*I
           END-PERFORM
           DISPLAY "Factorial is: " FACT
           STOP RUN.
