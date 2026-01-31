IDENTIFICATION DIVISION.
PROGRAM-ID. COMPOUND-INTEREST.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PRINCIPAL   PIC 9(6)V99.
       01 RATE        PIC 9(3)V99.
       01 T           PIC 99.
       01 AMOUNT      PIC 9(8)V99.
       01 I           PIC 99.
       PROCEDURE DIVISION.
           ACCEPT PRINCIPAL
           DISPLAY "Enter Principal Amount: " PRINCIPAL       
           ACCEPT RATE
           DISPLAY "Enter Rate of Interest: " RATE         
           ACCEPT T
           DISPLAY "Enter Time (in years): " T           
           MOVE PRINCIPAL TO AMOUNT
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > T
               COMPUTE AMOUNT = AMOUNT + (AMOUNT * RATE / 100)
           END-PERFORM
           DISPLAY "Compound Amount is: " AMOUNT   
           STOP RUN.
