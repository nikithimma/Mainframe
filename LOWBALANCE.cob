IDENTIFICATION DIVISION.
PROGRAM-ID. LOWBALWARN.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ACCOUNT-BALANCE     PIC 9(5).
       01 MINIMUM-BALANCE     PIC 9(5) VALUE 1000.
       PROCEDURE DIVISION.
       MAIN-PARA.
           ACCEPT ACCOUNT-BALANCE
           DISPLAY "Enter Account Balance: " ACCOUNT-BALANCE        
           IF ACCOUNT-BALANCE < MINIMUM-BALANCE
               DISPLAY "Warning: Low balance"
           ELSE
               DISPLAY "Balance sufficient"
           END-IF
           STOP RUN.
