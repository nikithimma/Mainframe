Version 1: Using IF
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACCTYPEIF.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ACCOUNT-TYPE-CODE     PIC X.
       PROCEDURE DIVISION.
       MAIN-PARA.
           ACCEPT ACCOUNT-TYPE-CODE
           DISPLAY "Enter Account Type Code (S/C): " ACCOUNT-TYPE-CODE
           IF ACCOUNT-TYPE-CODE = 'S'
               DISPLAY "Savings Account"
           ELSE
               IF ACCOUNT-TYPE-CODE = 'C'
                   DISPLAY "Current Account"
               ELSE
                   DISPLAY "Invalid Account Type"
               END-IF
           END-IF
           STOP RUN.

Version 2: Using EVALUATE (Switch Case)
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACCTYPEEVAL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ACCOUNT-TYPE-CODE     PIC X.
       PROCEDURE DIVISION.
       MAIN-PARA.
           ACCEPT ACCOUNT-TYPE-CODE
           DISPLAY "Enter Account Type Code (S/C): " ACCOUNT-TYPE-CODE
           EVALUATE ACCOUNT-TYPE-CODE
               WHEN 'S'
                   DISPLAY "Savings Account"
               WHEN 'C'
                   DISPLAY "Current Account"
               WHEN OTHER
                   DISPLAY "Invalid Account Type"
           END-EVALUATE
           STOP RUN.
