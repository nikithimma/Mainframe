IDENTIFICATION DIVISION.
PROGRAM-ID. AGEELIGIBILITY.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CUSTOMER-AGE      PIC 99.
       01 MINIMUM-AGE       PIC 99 VALUE 18.
       PROCEDURE DIVISION.
       MAIN-PARA.
           ACCEPT CUSTOMER-AGE
           DISPLAY "Enter Customer Age: " CUSTOMER-AGE      
           IF CUSTOMER-AGE >= MINIMUM-AGE
               DISPLAY "Customer is eligible"
           ELSE
               DISPLAY "Customer is not eligible"
           END-IF
           STOP RUN.
