IDENTIFICATION DIVISION.
PROGRAM-ID. MINBALANCE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ACCOUNT-BALANCE     PIC 9(5).
       01 MINIMUM-BALANCE     PIC 9(5) VALUE 1000.
       PROCEDURE DIVISION.
       MAIN-PARA.
           ACCEPT ACCOUNT-BALANCE
           DISPLAY "Enter Account Balance: " ACCOUNT-BALANCE       
           IF ACCOUNT-BALANCE >= MINIMUM-BALANCE
               DISPLAY "Minimum balance maintained"
           ELSE
               DISPLAY "Minimum balance not maintained"
           END-IF
           STOP RUN.
