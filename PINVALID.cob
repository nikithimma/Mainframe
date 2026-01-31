IDENTIFICATION DIVISION.
PROGRAM-ID. PINVERIFY.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 STORED-PIN        PIC 9(4) VALUE 1234.
       01 ENTERED-PIN       PIC 9(4).
       PROCEDURE DIVISION.
       MAIN-PARA.
           ACCEPT ENTERED-PIN
           DISPLAY "Enter PIN: " ENTERED-PIN
           IF ENTERED-PIN = STORED-PIN
               DISPLAY "Access Granted"
           ELSE
               DISPLAY "Access Denied"
           END-IF
           STOP RUN.
