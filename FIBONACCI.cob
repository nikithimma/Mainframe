IDENTIFICATION DIVISION.
PROGRAM-ID. FIBO-SUM.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A      PIC 9(3) VALUE 0.
       01 B      PIC 9(3) VALUE 1.
       01 C      PIC 9(3).
       01 S      PIC 9(4) VALUE 1.
       PROCEDURE DIVISION.
           DISPLAY "Fibonacci series up to 100:"
           DISPLAY A
           DISPLAY B
           PERFORM UNTIL C > 100
               COMPUTE C = A + B
               IF C <= 100
                   DISPLAY C
                   COMPUTE S = S + C
               END-IF
               MOVE B TO A
               MOVE C TO B
           END-PERFORM
           DISPLAY "Sum of Fibonacci numbers:"
           DISPLAY S
           STOP RUN.
