IDENTIFICATION DIVISION.
PROGRAM-ID. PALIN.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 N   PIC 9(5).
       01 T   PIC 9(5).
       01 R   PIC 9(5) VALUE 0.
       01 D   PIC 9.
       PROCEDURE DIVISION.
           ACCEPT N
           MOVE N TO T
           PERFORM UNTIL T = 0
               COMPUTE D = FUNCTION MOD(T,10)
               COMPUTE R = R * 10 + D
               COMPUTE T= T / 10
           END-PERFORM
           DISPLAY "REVERSED NUMBER IS :" R          
           STOP RUN.
