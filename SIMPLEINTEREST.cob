IDENTIFICATION DIVISION.
PROGRAM-ID. SIMPLE-INTEREST.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PRINCIPAL     PIC 9(6)V99.
       01 RATE          PIC 9(3)V99.
       01 T           PIC 9(3)V99.
       01 INTEREST      PIC 9(6)V99.
       PROCEDURE DIVISION.
           ACCEPT PRINCIPAL
           DISPLAY "Enter Principal Amount: " PRINCIPAL
           ACCEPT RATE
           DISPLAY "Enter Rate of Interest (%): " RATE       
           ACCEPT T
           DISPLAY "Enter Time (years): " T      
           COMPUTE INTEREST = (PRINCIPAL * RATE * T) / 100
           DISPLAY "Simple Interest is: " INTEREST
           STOP RUN.
