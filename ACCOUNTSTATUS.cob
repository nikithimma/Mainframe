IDENTIFICATION DIVISION.
PROGRAM-ID. ACCSTATUS88.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ACCOUNT-STATUS      PIC X.
          88 STATUS-ACTIVE    VALUE 'A'.
          88 STATUS-INACTIVE  VALUE 'I'.
       PROCEDURE DIVISION.
       MAIN-PARA.
           DISPLAY "Enter Account Status (A/I): "
           ACCEPT ACCOUNT-STATUS
           IF STATUS-ACTIVE
               DISPLAY "Account Active"
           ELSE
               DISPLAY "Account Inactive"
           END-IF
           STOP RUN.
