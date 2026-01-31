IDENTIFICATION DIVISION.
PROGRAM-ID. BUBBLESORT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ARR      PIC 9(3) OCCURS 10 TIMES.
       01 I        PIC 99.
       01 J        PIC 99.
       01 TEMP     PIC 9(3).
       PROCEDURE DIVISION.
           DISPLAY "Enter 10 numbers:"
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 10
               ACCEPT ARR(I)
           END-PERFORM
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 9
               PERFORM VARYING J FROM 1 BY 1 UNTIL J > 10 - I
                   IF ARR(J) > ARR(J + 1)
                       MOVE ARR(J) TO TEMP
                       MOVE ARR(J + 1) TO ARR(J)
                       MOVE TEMP TO ARR(J + 1)
                   END-IF
               END-PERFORM
           END-PERFORM
           DISPLAY "Sorted array:"
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 10
               DISPLAY ARR(I)
           END-PERFORM
           STOP RUN.
