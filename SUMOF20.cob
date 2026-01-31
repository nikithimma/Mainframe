IDENTIFICATION DIVISION.
PROGRAM-ID. SUM20.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM      PIC 9(3) OCCURS 20 TIMES.
       01 I        PIC 99.
       01 TOTAL    PIC 9(5) VALUE 0.
       PROCEDURE DIVISION.          
           DISPLAY "Enter 20 numbers:" 
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 20
               ACCEPT NUM(I)
               COMPUTE TOTAL = TOTAL + NUM(I)
           END-PERFORM
           DISPLAY "Sum of 20 numbers is:"
           DISPLAY TOTAL
           STOP RUN.

