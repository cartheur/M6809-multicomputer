* Test program for RTL simulation of multicomp VDU scroll bug
* if you do a LF without a CR, the bottom line of the screen
* gets corrupted with data from the top of the screen

* Paging control registers
WPROT     EQU $FFDD
ROMDIS    EQU $FFDE
MAPPER    EQU $FFDF

* SDCARD control registers
SDDATA    EQU $FFD8
SDCTL     EQU $FFD9
SDLBA0    EQU $FFDA
SDLBA1    EQU $FFDB
SDLBA2    EQU $FFDC

* Start address of the two pageable regions
REGCD     EQU $C000
REGEF     EQU $E000

* VDU Data
UARTDAT   EQU $FFD1
UARTSTA   EQU $FFD0

          ORG  $E000
RESVEC
          LDX #MSG1
NXTCHR    LDA ,X               ; get char
          BEQ MSGDONE

BIZWAIT   LDB UARTSTA
          BITB #2
          BEQ BIZWAIT

          STA UARTDAT
          LEAX 1,X
          BRA NXTCHR
MSGDONE

FOREVER
          BRA FOREVER


MSG1      FCC 'L01'
          FCB $0A,$0D
          FCC 'L02'
          FCB $0A,$0D
          FCC 'L03'
          FCB $0A,$0D
          FCC 'L04'
          FCB $0A,$0D
          FCC 'L05'
          FCB $0A,$0D
          FCC 'L06'
          FCB $0A,$0D
          FCC 'L07'
          FCB $0A,$0D
          FCC 'L08'
          FCB $0A,$0D
          FCC 'L09'
          FCB $0A,$0D
          FCC 'L10'
          FCB $0A,$0D
          FCC 'L11'
          FCB $0A,$0D
          FCC 'L12'
          FCB $0A,$0D
          FCC 'L13'
          FCB $0A,$0D
          FCC 'L14'
          FCB $0A,$0D
          FCC 'L15'
          FCB $0A,$0D
          FCC 'L16'
          FCB $0A,$0D
          FCC 'L17'
          FCB $0A,$0D
          FCC 'L18'
          FCB $0A,$0D
          FCC 'L19'
          FCB $0A,$0D
          FCC 'L20'
          FCB $0A,$0D
          FCC 'L21'
          FCB $0A,$0D
          FCC 'L22'
          FCB $0A,$0D
          FCC 'L23'
          FCB $0A,$0D
          FCC 'L24'
          FCB $0A,$0D
          FCC 'L25'
          FCB $0A,$0D
          FCC 'L26'
          FCB $0A,$0D
          FCC 'L27'
          FCB $0A,$0D
          FCC 'L28'
          FCB $0A,$0D,$00



SW3VEC
SW2VEC
FRQVEC
IRQVEC
SWIVEC
NMIVEC
        BRA SW3VEC

* Exception vectors
          ORG  $FFF0
LBFF0     FDB  $0000          RESERVED
LBFF2     FDB  SW3VEC         SWI3
LBFF4     FDB  SW2VEC         SWI2
LBFF6     FDB  FRQVEC         FIRQ
LBFF8     FDB  IRQVEC         IRQ
LBFFA     FDB  SWIVEC         SWI
LBFFC     FDB  NMIVEC         NMI
LBFFE     FDB  RESVEC         RESET
