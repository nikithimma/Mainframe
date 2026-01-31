IDENTIFICATION DIVISION.
PROGRAM-ID. LARGEST3.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A      PIC 9(3).
       01 B      PIC 9(3).
       01 C      PIC 9(3).
       01 LARGE  PIC 9(3).
       PROCEDURE DIVISION.
           ACCEPT A
           DISPLAY "Enter first number:" A       
           ACCEPT B
           DISPLAY "Enter second number:" B           
           ACCEPT C
           DISPLAY "Enter third number:" C          
           IF A >= B AND A >= C
               MOVE A TO LARGE
           ELSE
               IF B >= C
                   MOVE B TO LARGE
               ELSE
                   MOVE C TO LARGE
               END-IF
           END-IF
           DISPLAY "Largest number is:" LARGE       
           STOP RUN.
