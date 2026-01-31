IDENTIFICATION DIVISION.
PROGRAM-ID. CELSIUS-TO-FAHRENHEIT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  CELSIUS        PIC 99V9.
       01  FAHRENHEIT     PIC 999V9.
       PROCEDURE DIVISION.
           ACCEPT CELSIUS
           DISPLAY "Enter temperature in Celsius: " CELSIUS   
           COMPUTE FAHRENHEIT = (CELSIUS * 9 / 5) + 32
           DISPLAY "Temperature in Fahrenheit is: " FAHRENHEIT
           STOP RUN.
