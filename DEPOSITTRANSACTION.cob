IDENTIFICATION DIVISION.
PROGRAM-ID. DEPOSITTRAN.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CURRENT-BALANCE    PIC 9(6).
       01 DEPOSIT-AMOUNT     PIC 9(6).
       01 UPDATED-BALANCE    PIC 9(6).
       PROCEDURE DIVISION.
       MAIN-PARA.
           ACCEPT CURRENT-BALANCE
           DISPLAY "Enter Current Balance: " CURRENT-BALANCE    
           ACCEPT DEPOSIT-AMOUNT
           DISPLAY "Enter Deposit Amount: " DEPOSIT-AMOUNT           
           IF DEPOSIT-AMOUNT > 0
               ADD DEPOSIT-AMOUNT TO CURRENT-BALANCE
               MOVE CURRENT-BALANCE TO UPDATED-BALANCE
               DISPLAY "Updated Balance = " UPDATED-BALANCE
           ELSE
               DISPLAY "Invalid Deposit Amount"
           END-IF
           STOP RUN.
