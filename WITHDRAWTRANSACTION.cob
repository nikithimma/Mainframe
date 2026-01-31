IDENTIFICATION DIVISION.
PROGRAM-ID. WITHDRAWTRAN.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CURRENT-BALANCE      PIC 9(6).
       01 WITHDRAW-AMOUNT      PIC 9(6).
       01 REMAINING-BALANCE    PIC 9(6).
       PROCEDURE DIVISION.
       MAIN-PARA.
           ACCEPT CURRENT-BALANCE
           DISPLAY "Enter Current Balance: " CURRENT-BALANCE       
           ACCEPT WITHDRAW-AMOUNT
           DISPLAY "Enter Withdrawal Amount: " WITHDRAW-AMOUNT           
           IF WITHDRAW-AMOUNT <= CURRENT-BALANCE
               SUBTRACT WITHDRAW-AMOUNT FROM CURRENT-BALANCE
               MOVE CURRENT-BALANCE TO REMAINING-BALANCE
               DISPLAY "Withdrawal Successful"
               DISPLAY "Remaining Balance = " REMAINING-BALANCE
           ELSE
               DISPLAY "Insufficient Balance"
           END-IF
           STOP RUN.
