IDENTIFICATION DIVISION.
       PROGRAM-ID. MENUBASED.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USER-CHOICE     PIC 9.
       PROCEDURE DIVISION.
       MAIN-PARA.
           ACCEPT USER-CHOICE
           DISPLAY "----- MENU -----"
           DISPLAY "1. Deposit"
           DISPLAY "2. Withdraw"
           DISPLAY "3. Balance Enquiry"
           DISPLAY "Enter your choice: " USER-CHOICE
           EVALUATE USER-CHOICE
               WHEN 1
                   DISPLAY "Deposit Selected"
               WHEN 2
                   DISPLAY "Withdraw Selected"
               WHEN 3
                   DISPLAY "Balance Displayed"
               WHEN OTHER
                   DISPLAY "Invalid Choice"
           END-EVALUATE
           STOP RUN.
