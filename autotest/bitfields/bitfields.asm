; Compiled with 1.32.263
--------------------------------------------------------------------
startup: ; startup
0801 : 0b __ __ INV
0802 : 08 __ __ PHP
0803 : 0a __ __ ASL
0804 : 00 __ __ BRK
0805 : 9e __ __ INV
0806 : 32 __ __ INV
0807 : 30 36 __ BMI $083f ; (startup + 62)
0809 : 31 00 __ AND ($00),y 
080b : 00 __ __ BRK
080c : 00 __ __ BRK
080d : ba __ __ TSX
080e : 8e 3e 19 STX $193e ; (spentry + 0)
0811 : a2 19 __ LDX #$19
0813 : a0 5a __ LDY #$5a
0815 : a9 00 __ LDA #$00
0817 : 85 19 __ STA IP + 0 
0819 : 86 1a __ STX IP + 1 
081b : e0 19 __ CPX #$19
081d : f0 0b __ BEQ $082a ; (startup + 41)
081f : 91 19 __ STA (IP + 0),y 
0821 : c8 __ __ INY
0822 : d0 fb __ BNE $081f ; (startup + 30)
0824 : e8 __ __ INX
0825 : d0 f2 __ BNE $0819 ; (startup + 24)
0827 : 91 19 __ STA (IP + 0),y 
0829 : c8 __ __ INY
082a : c0 5a __ CPY #$5a
082c : d0 f9 __ BNE $0827 ; (startup + 38)
082e : a9 00 __ LDA #$00
0830 : a2 f7 __ LDX #$f7
0832 : d0 03 __ BNE $0837 ; (startup + 54)
0834 : 95 00 __ STA $00,x 
0836 : e8 __ __ INX
0837 : e0 f7 __ CPX #$f7
0839 : d0 f9 __ BNE $0834 ; (startup + 51)
083b : a9 ee __ LDA #$ee
083d : 85 23 __ STA SP + 0 
083f : a9 9f __ LDA #$9f
0841 : 85 24 __ STA SP + 1 
0843 : 20 80 08 JSR $0880 ; (main.s4 + 0)
0846 : a9 4c __ LDA #$4c
0848 : 85 54 __ STA $54 
084a : a9 00 __ LDA #$00
084c : 85 13 __ STA P6 
084e : a9 19 __ LDA #$19
0850 : 85 16 __ STA P9 
0852 : 60 __ __ RTS
--------------------------------------------------------------------
main: ; main()->i16
.s4:
; 337, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0880 : 20 ae 08 JSR $08ae ; (test_char_fit.s4 + 0)
; 338, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0883 : 20 4a 09 JSR $094a ; (test_char_cross.s4 + 0)
; 339, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0886 : 20 c8 0a JSR $0ac8 ; (test_word_fit.s4 + 0)
; 340, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0889 : 20 41 0b JSR $0b41 ; (test_word_cross.s1 + 0)
; 341, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
088c : 20 40 0d JSR $0d40 ; (test_dword_fit.s4 + 0)
; 342, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
088f : 20 b9 0d JSR $0db9 ; (test_dword_cross.s1 + 0)
; 343, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0892 : 20 34 10 JSR $1034 ; (test_char_signed.s4 + 0)
; 344, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0895 : 20 d2 10 JSR $10d2 ; (test_word_signed.s1 + 0)
; 346, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0898 : 20 6c 13 JSR $136c ; (test_inc_char_fit.s4 + 0)
; 347, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
089b : 20 03 14 JSR $1403 ; (test_inc_char_cross.s4 + 0)
; 348, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
089e : 20 26 15 JSR $1526 ; (test_add_char_cross.s4 + 0)
; 350, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
08a1 : 20 90 16 JSR $1690 ; (test_add_word_fit.s4 + 0)
; 351, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
08a4 : 20 51 17 JSR $1751 ; (test_add_word_cross.s4 + 0)
; 353, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
08a7 : a9 00 __ LDA #$00
08a9 : 85 1b __ STA ACCU + 0 
08ab : 85 1c __ STA ACCU + 1 
.s3:
08ad : 60 __ __ RTS
--------------------------------------------------------------------
test_char_fit: ; test_char_fit()->void
.s4:
;  14, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
08ae : ad 3f 19 LDA $193f ; (a + 0)
08b1 : 85 43 __ STA T1 + 0 
08b3 : 29 0f __ AND #$0f
08b5 : c9 07 __ CMP #$07
08b7 : d0 04 __ BNE $08bd ; (test_char_fit.s6 + 0)
.s5:
08b9 : a9 01 __ LDA #$01
08bb : d0 02 __ BNE $08bf ; (test_char_fit.s7 + 0)
.s6:
08bd : a9 00 __ LDA #$00
.s7:
08bf : 85 0f __ STA P2 
08c1 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  15, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
08c4 : a5 43 __ LDA T1 + 0 
08c6 : 29 10 __ AND #$10
08c8 : c9 10 __ CMP #$10
08ca : d0 04 __ BNE $08d0 ; (test_char_fit.s9 + 0)
.s8:
08cc : a9 01 __ LDA #$01
08ce : d0 02 __ BNE $08d2 ; (test_char_fit.s10 + 0)
.s9:
08d0 : a9 00 __ LDA #$00
.s10:
08d2 : 85 0f __ STA P2 
08d4 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  16, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
08d7 : a5 43 __ LDA T1 + 0 
08d9 : 29 e0 __ AND #$e0
08db : c9 40 __ CMP #$40
08dd : d0 04 __ BNE $08e3 ; (test_char_fit.s12 + 0)
.s11:
08df : a9 01 __ LDA #$01
08e1 : d0 02 __ BNE $08e5 ; (test_char_fit.s13 + 0)
.s12:
08e3 : a9 00 __ LDA #$00
.s13:
08e5 : 85 0f __ STA P2 
08e7 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  17, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
08ea : a9 01 __ LDA #$01
08ec : 85 0f __ STA P2 
08ee : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  19, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
08f1 : a9 00 __ LDA #$00
08f3 : 85 43 __ STA T1 + 0 
.l14:
;  23, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
08f5 : ad 3f 19 LDA $193f ; (a + 0)
08f8 : 29 f0 __ AND #$f0
08fa : 05 43 __ ORA T1 + 0 
08fc : 29 0f __ AND #$0f
08fe : 09 60 __ ORA #$60
0900 : 8d 3f 19 STA $193f ; (a + 0)
;  24, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0903 : 29 0f __ AND #$0f
0905 : c5 43 __ CMP T1 + 0 
0907 : d0 04 __ BNE $090d ; (test_char_fit.s16 + 0)
.s15:
0909 : a9 01 __ LDA #$01
090b : d0 02 __ BNE $090f ; (test_char_fit.s17 + 0)
.s16:
090d : a9 00 __ LDA #$00
.s17:
090f : 85 0f __ STA P2 
0911 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  25, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0914 : a9 01 __ LDA #$01
0916 : 85 0f __ STA P2 
0918 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  26, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
091b : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  25, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
091e : e6 43 __ INC T1 + 0 
0920 : a5 43 __ LDA T1 + 0 
0922 : c9 10 __ CMP #$10
0924 : 90 cf __ BCC $08f5 ; (test_char_fit.l14 + 0)
.s3:
;  28, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0926 : 60 __ __ RTS
--------------------------------------------------------------------
assert: ; assert(bool)->void
.s4:
;   6, "/nix/store/14jv40qj2vasgddyqpn9pb4zgnlwnbbi-oscar64-1.32.263/include/oscar64/assert.c"
0927 : a5 0f __ LDA P2 ; (b + 0)
0929 : d0 09 __ BNE $0934 ; (assert.s3 + 0)
.s5:
;   7, "/nix/store/14jv40qj2vasgddyqpn9pb4zgnlwnbbi-oscar64-1.32.263/include/oscar64/assert.c"
092b : a9 ff __ LDA #$ff
092d : 85 0d __ STA P0 
092f : 85 0e __ STA P1 
0931 : 4c 35 09 JMP $0935 ; (exit.s4 + 0)
.s3:
;   8, "/nix/store/14jv40qj2vasgddyqpn9pb4zgnlwnbbi-oscar64-1.32.263/include/oscar64/assert.c"
0934 : 60 __ __ RTS
--------------------------------------------------------------------
exit: ; exit(i16)->void
.s4:
; 575, "/nix/store/14jv40qj2vasgddyqpn9pb4zgnlwnbbi-oscar64-1.32.263/include/oscar64/stdlib.c"
0935 : a5 0d __ LDA P0 
0937 : 85 1b __ STA ACCU + 0 
0939 : a5 0e __ LDA P1 
093b : 85 1c __ STA ACCU + 1 
093d : ae 3e 19 LDX $193e ; (spentry + 0)
0940 : 9a __ __ TXS
0941 : a9 4c __ LDA #$4c
0943 : 85 54 __ STA $54 
0945 : a9 00 __ LDA #$00
0947 : 85 13 __ STA P6 
.s3:
; 586, "/nix/store/14jv40qj2vasgddyqpn9pb4zgnlwnbbi-oscar64-1.32.263/include/oscar64/stdlib.c"
0949 : 60 __ __ RTS
--------------------------------------------------------------------
test_char_cross: ; test_char_cross()->void
.s4:
;  42, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
094a : ad 40 19 LDA $1940 ; (b + 0)
094d : 29 3f __ AND #$3f
094f : c9 0b __ CMP #$0b
0951 : d0 04 __ BNE $0957 ; (test_char_cross.s6 + 0)
.s5:
0953 : a9 01 __ LDA #$01
0955 : d0 02 __ BNE $0959 ; (test_char_cross.s7 + 0)
.s6:
0957 : a9 00 __ LDA #$00
.s7:
0959 : 85 0f __ STA P2 
095b : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  43, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
095e : ad 40 19 LDA $1940 ; (b + 0)
0961 : 29 c0 __ AND #$c0
0963 : c9 80 __ CMP #$80
0965 : d0 04 __ BNE $096b ; (test_char_cross.s9 + 0)
.s8:
0967 : a9 01 __ LDA #$01
0969 : d0 02 __ BNE $096d ; (test_char_cross.s10 + 0)
.s9:
096b : a9 00 __ LDA #$00
.s10:
096d : 85 0f __ STA P2 
096f : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  44, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0972 : ad 41 19 LDA $1941 ; (b + 1)
0975 : 29 f0 __ AND #$f0
0977 : c9 10 __ CMP #$10
0979 : d0 04 __ BNE $097f ; (test_char_cross.s12 + 0)
.s11:
097b : a9 01 __ LDA #$01
097d : d0 02 __ BNE $0981 ; (test_char_cross.s13 + 0)
.s12:
097f : a9 00 __ LDA #$00
.s13:
0981 : 85 0f __ STA P2 
0983 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  45, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0986 : ad 42 19 LDA $1942 ; (b + 2)
0989 : 29 fc __ AND #$fc
098b : c9 b0 __ CMP #$b0
098d : d0 04 __ BNE $0993 ; (test_char_cross.s15 + 0)
.s14:
098f : a9 01 __ LDA #$01
0991 : d0 02 __ BNE $0995 ; (test_char_cross.s16 + 0)
.s15:
0993 : a9 00 __ LDA #$00
.s16:
0995 : 85 0f __ STA P2 
0997 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  46, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
099a : a9 01 __ LDA #$01
099c : 85 0f __ STA P2 
099e : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  53, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
09a1 : a9 00 __ LDA #$00
09a3 : 85 45 __ STA T2 + 0 
09a5 : 85 46 __ STA T3 + 0 
09a7 : 85 47 __ STA T3 + 1 
09a9 : 85 48 __ STA T4 + 0 
09ab : 85 49 __ STA T5 + 0 
09ad : 85 4a __ STA T5 + 1 
09af : 85 4b __ STA T6 + 0 
09b1 : 85 4c __ STA T7 + 0 
09b3 : 85 4d __ STA T8 + 0 
.l17:
;  50, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
09b5 : ad 40 19 LDA $1940 ; (b + 0)
09b8 : 29 c0 __ AND #$c0
09ba : 05 4b __ ORA T6 + 0 
09bc : 8d 40 19 STA $1940 ; (b + 0)
;  51, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
09bf : a5 49 __ LDA T5 + 0 
09c1 : 29 c0 __ AND #$c0
09c3 : 85 1b __ STA ACCU + 0 
09c5 : a5 4a __ LDA T5 + 1 
09c7 : 29 0f __ AND #$0f
09c9 : 85 1c __ STA ACCU + 1 
09cb : ad 40 19 LDA $1940 ; (b + 0)
09ce : 29 3f __ AND #$3f
09d0 : 05 1b __ ORA ACCU + 0 
09d2 : 8d 40 19 STA $1940 ; (b + 0)
09d5 : ad 41 19 LDA $1941 ; (b + 1)
09d8 : 29 f0 __ AND #$f0
09da : 05 1c __ ORA ACCU + 1 
09dc : 8d 41 19 STA $1941 ; (b + 1)
;  52, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
09df : a5 46 __ LDA T3 + 0 
09e1 : 29 f0 __ AND #$f0
09e3 : 85 1b __ STA ACCU + 0 
09e5 : a5 47 __ LDA T3 + 1 
09e7 : 29 03 __ AND #$03
09e9 : 85 1c __ STA ACCU + 1 
09eb : ad 41 19 LDA $1941 ; (b + 1)
09ee : 29 0f __ AND #$0f
09f0 : 05 1b __ ORA ACCU + 0 
09f2 : 8d 41 19 STA $1941 ; (b + 1)
09f5 : ad 42 19 LDA $1942 ; (b + 2)
09f8 : 29 fc __ AND #$fc
09fa : 05 1c __ ORA ACCU + 1 
09fc : 8d 42 19 STA $1942 ; (b + 2)
;  53, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
09ff : a5 4d __ LDA T8 + 0 
0a01 : 29 fc __ AND #$fc
0a03 : 85 1b __ STA ACCU + 0 
0a05 : ad 42 19 LDA $1942 ; (b + 2)
0a08 : 29 03 __ AND #$03
0a0a : 05 1b __ ORA ACCU + 0 
0a0c : 85 4e __ STA T9 + 0 
0a0e : 8d 42 19 STA $1942 ; (b + 2)
;  54, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0a11 : ad 40 19 LDA $1940 ; (b + 0)
0a14 : 29 3f __ AND #$3f
0a16 : c5 4b __ CMP T6 + 0 
0a18 : d0 04 __ BNE $0a1e ; (test_char_cross.s19 + 0)
.s18:
0a1a : a9 01 __ LDA #$01
0a1c : d0 02 __ BNE $0a20 ; (test_char_cross.s20 + 0)
.s19:
0a1e : a9 00 __ LDA #$00
.s20:
0a20 : 85 0f __ STA P2 
0a22 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  55, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0a25 : a5 48 __ LDA T4 + 0 
0a27 : 29 3f __ AND #$3f
0a29 : 85 1b __ STA ACCU + 0 
0a2b : ad 41 19 LDA $1941 ; (b + 1)
0a2e : 29 0f __ AND #$0f
0a30 : 85 43 __ STA T1 + 0 
0a32 : ad 40 19 LDA $1940 ; (b + 0)
0a35 : 0a __ __ ASL
0a36 : 26 43 __ ROL T1 + 0 
0a38 : 0a __ __ ASL
0a39 : a5 43 __ LDA T1 + 0 
0a3b : 2a __ __ ROL
0a3c : c5 1b __ CMP ACCU + 0 
0a3e : d0 04 __ BNE $0a44 ; (test_char_cross.s22 + 0)
.s21:
0a40 : a9 01 __ LDA #$01
0a42 : d0 02 __ BNE $0a46 ; (test_char_cross.s23 + 0)
.s22:
0a44 : a9 00 __ LDA #$00
.s23:
0a46 : 85 0f __ STA P2 
0a48 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  56, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0a4b : a5 45 __ LDA T2 + 0 
0a4d : 29 3f __ AND #$3f
0a4f : 85 1b __ STA ACCU + 0 
0a51 : ad 42 19 LDA $1942 ; (b + 2)
0a54 : 29 03 __ AND #$03
0a56 : 4a __ __ LSR
0a57 : 85 44 __ STA T1 + 1 
0a59 : ad 41 19 LDA $1941 ; (b + 1)
0a5c : 6a __ __ ROR
0a5d : 46 44 __ LSR T1 + 1 
0a5f : 6a __ __ ROR
0a60 : 4a __ __ LSR
0a61 : 4a __ __ LSR
0a62 : c5 1b __ CMP ACCU + 0 
0a64 : d0 04 __ BNE $0a6a ; (test_char_cross.s25 + 0)
.s24:
0a66 : a9 01 __ LDA #$01
0a68 : d0 02 __ BNE $0a6c ; (test_char_cross.s26 + 0)
.s25:
0a6a : a9 00 __ LDA #$00
.s26:
0a6c : 85 0f __ STA P2 
0a6e : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  57, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0a71 : a5 4c __ LDA T7 + 0 
0a73 : 29 3f __ AND #$3f
0a75 : 85 1b __ STA ACCU + 0 
0a77 : a5 4e __ LDA T9 + 0 
0a79 : 4a __ __ LSR
0a7a : 4a __ __ LSR
0a7b : c5 1b __ CMP ACCU + 0 
0a7d : d0 04 __ BNE $0a83 ; (test_char_cross.s28 + 0)
.s27:
0a7f : a9 01 __ LDA #$01
0a81 : d0 02 __ BNE $0a85 ; (test_char_cross.s29 + 0)
.s28:
0a83 : a9 00 __ LDA #$00
.s29:
0a85 : 85 0f __ STA P2 
0a87 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
0a8a : 18 __ __ CLC
0a8b : a5 4d __ LDA T8 + 0 
0a8d : 69 1c __ ADC #$1c
0a8f : 85 4d __ STA T8 + 0 
0a91 : 18 __ __ CLC
0a92 : a5 4c __ LDA T7 + 0 
0a94 : 69 07 __ ADC #$07
0a96 : 85 4c __ STA T7 + 0 
0a98 : 18 __ __ CLC
0a99 : a5 45 __ LDA T2 + 0 
0a9b : 69 05 __ ADC #$05
0a9d : 85 45 __ STA T2 + 0 
0a9f : 18 __ __ CLC
0aa0 : a5 48 __ LDA T4 + 0 
0aa2 : 69 03 __ ADC #$03
0aa4 : 85 48 __ STA T4 + 0 
0aa6 : 18 __ __ CLC
0aa7 : a5 49 __ LDA T5 + 0 
0aa9 : 69 c0 __ ADC #$c0
0aab : 85 49 __ STA T5 + 0 
0aad : 90 03 __ BCC $0ab2 ; (test_char_cross.s31 + 0)
.s30:
;  52, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0aaf : e6 4a __ INC T5 + 1 
0ab1 : 18 __ __ CLC
.s31:
0ab2 : a5 46 __ LDA T3 + 0 
0ab4 : 69 50 __ ADC #$50
0ab6 : 85 46 __ STA T3 + 0 
0ab8 : 90 02 __ BCC $0abc ; (test_char_cross.s33 + 0)
.s32:
0aba : e6 47 __ INC T3 + 1 
.s33:
;  48, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0abc : e6 4b __ INC T6 + 0 
0abe : a5 4b __ LDA T6 + 0 
0ac0 : c9 40 __ CMP #$40
0ac2 : b0 03 __ BCS $0ac7 ; (test_char_cross.s3 + 0)
0ac4 : 4c b5 09 JMP $09b5 ; (test_char_cross.l17 + 0)
.s3:
;  59, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0ac7 : 60 __ __ RTS
--------------------------------------------------------------------
test_word_fit: ; test_word_fit()->void
.s4:
;  72, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0ac8 : ad 43 19 LDA $1943 ; (c + 0)
0acb : 85 43 __ STA T1 + 0 
0acd : 29 0f __ AND #$0f
0acf : c9 07 __ CMP #$07
0ad1 : d0 04 __ BNE $0ad7 ; (test_word_fit.s6 + 0)
.s5:
0ad3 : a9 01 __ LDA #$01
0ad5 : d0 02 __ BNE $0ad9 ; (test_word_fit.s7 + 0)
.s6:
0ad7 : a9 00 __ LDA #$00
.s7:
0ad9 : 85 0f __ STA P2 
0adb : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  73, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0ade : a5 43 __ LDA T1 + 0 
0ae0 : 29 10 __ AND #$10
0ae2 : c9 10 __ CMP #$10
0ae4 : d0 04 __ BNE $0aea ; (test_word_fit.s9 + 0)
.s8:
0ae6 : a9 01 __ LDA #$01
0ae8 : d0 02 __ BNE $0aec ; (test_word_fit.s10 + 0)
.s9:
0aea : a9 00 __ LDA #$00
.s10:
0aec : 85 0f __ STA P2 
0aee : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  74, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0af1 : a5 43 __ LDA T1 + 0 
0af3 : 29 e0 __ AND #$e0
0af5 : c9 40 __ CMP #$40
0af7 : d0 04 __ BNE $0afd ; (test_word_fit.s12 + 0)
.s11:
0af9 : a9 01 __ LDA #$01
0afb : d0 02 __ BNE $0aff ; (test_word_fit.s13 + 0)
.s12:
0afd : a9 00 __ LDA #$00
.s13:
0aff : 85 0f __ STA P2 
0b01 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  75, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0b04 : a9 01 __ LDA #$01
0b06 : 85 0f __ STA P2 
0b08 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  77, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0b0b : a9 00 __ LDA #$00
0b0d : 85 43 __ STA T1 + 0 
.l14:
;  81, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0b0f : ad 43 19 LDA $1943 ; (c + 0)
0b12 : 29 f0 __ AND #$f0
0b14 : 05 43 __ ORA T1 + 0 
0b16 : 29 0f __ AND #$0f
0b18 : 09 60 __ ORA #$60
0b1a : 8d 43 19 STA $1943 ; (c + 0)
;  82, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0b1d : 29 0f __ AND #$0f
0b1f : c5 43 __ CMP T1 + 0 
0b21 : d0 04 __ BNE $0b27 ; (test_word_fit.s16 + 0)
.s15:
0b23 : a9 01 __ LDA #$01
0b25 : d0 02 __ BNE $0b29 ; (test_word_fit.s17 + 0)
.s16:
0b27 : a9 00 __ LDA #$00
.s17:
0b29 : 85 0f __ STA P2 
0b2b : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  83, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0b2e : a9 01 __ LDA #$01
0b30 : 85 0f __ STA P2 
0b32 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  84, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0b35 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
;  83, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0b38 : e6 43 __ INC T1 + 0 
0b3a : a5 43 __ LDA T1 + 0 
0b3c : c9 10 __ CMP #$10
0b3e : 90 cf __ BCC $0b0f ; (test_word_fit.l14 + 0)
.s3:
;  86, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0b40 : 60 __ __ RTS
--------------------------------------------------------------------
test_word_cross: ; test_word_cross()->void
.s1:
0b41 : a5 53 __ LDA T9 + 0 
0b43 : 8d fa 9f STA $9ffa ; (test_word_cross@stack + 0)
.s4:
; 100, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0b46 : ad 45 19 LDA $1945 ; (d + 1)
0b49 : 29 03 __ AND #$03
0b4b : d0 0b __ BNE $0b58 ; (test_word_cross.s6 + 0)
.s8:
0b4d : ad 44 19 LDA $1944 ; (d + 0)
0b50 : c9 6f __ CMP #$6f
0b52 : d0 04 __ BNE $0b58 ; (test_word_cross.s6 + 0)
.s5:
0b54 : a9 01 __ LDA #$01
0b56 : d0 02 __ BNE $0b5a ; (test_word_cross.s7 + 0)
.s6:
0b58 : a9 00 __ LDA #$00
.s7:
0b5a : 85 0f __ STA P2 
0b5c : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 101, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0b5f : ad 45 19 LDA $1945 ; (d + 1)
0b62 : 29 fc __ AND #$fc
0b64 : a8 __ __ TAY
0b65 : ad 46 19 LDA $1946 ; (d + 2)
0b68 : 29 0f __ AND #$0f
0b6a : c9 03 __ CMP #$03
0b6c : d0 08 __ BNE $0b76 ; (test_word_cross.s10 + 0)
.s12:
0b6e : c0 78 __ CPY #$78
0b70 : d0 04 __ BNE $0b76 ; (test_word_cross.s10 + 0)
.s9:
0b72 : a9 01 __ LDA #$01
0b74 : d0 02 __ BNE $0b78 ; (test_word_cross.s11 + 0)
.s10:
0b76 : a9 00 __ LDA #$00
.s11:
0b78 : 85 0f __ STA P2 
0b7a : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 102, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0b7d : ad 46 19 LDA $1946 ; (d + 2)
0b80 : 29 f0 __ AND #$f0
0b82 : a8 __ __ TAY
0b83 : ad 47 19 LDA $1947 ; (d + 3)
0b86 : 29 3f __ AND #$3f
0b88 : c9 14 __ CMP #$14
0b8a : d0 08 __ BNE $0b94 ; (test_word_cross.s14 + 0)
.s16:
0b8c : c0 d0 __ CPY #$d0
0b8e : d0 04 __ BNE $0b94 ; (test_word_cross.s14 + 0)
.s13:
0b90 : a9 01 __ LDA #$01
0b92 : d0 02 __ BNE $0b96 ; (test_word_cross.s15 + 0)
.s14:
0b94 : a9 00 __ LDA #$00
.s15:
0b96 : 85 0f __ STA P2 
0b98 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 103, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0b9b : ad 47 19 LDA $1947 ; (d + 3)
0b9e : 29 c0 __ AND #$c0
0ba0 : 85 1b __ STA ACCU + 0 
0ba2 : ad 48 19 LDA $1948 ; (d + 4)
0ba5 : c9 6f __ CMP #$6f
0ba7 : f0 04 __ BEQ $0bad ; (test_word_cross.s19 + 0)
.s17:
0ba9 : a9 00 __ LDA #$00
0bab : f0 05 __ BEQ $0bb2 ; (test_word_cross.s18 + 0)
.s19:
0bad : a9 00 __ LDA #$00
0baf : c5 1b __ CMP ACCU + 0 
0bb1 : 2a __ __ ROL
.s18:
0bb2 : 85 0f __ STA P2 
0bb4 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 104, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0bb7 : a9 01 __ LDA #$01
0bb9 : 85 0f __ STA P2 
0bbb : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 109, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0bbe : a9 00 __ LDA #$00
0bc0 : 85 43 __ STA T2 + 0 
0bc2 : 85 44 __ STA T2 + 1 
0bc4 : 85 45 __ STA T3 + 0 
0bc6 : 85 46 __ STA T3 + 1 
0bc8 : 85 47 __ STA T4 + 0 
0bca : 85 48 __ STA T4 + 1 
0bcc : 85 49 __ STA T5 + 0 
0bce : 85 4a __ STA T5 + 1 
0bd0 : 85 4b __ STA T6 + 0 
0bd2 : 85 4c __ STA T6 + 1 
0bd4 : 85 4d __ STA T7 + 0 
0bd6 : 85 4e __ STA T7 + 1 
0bd8 : 85 4f __ STA T8 + 0 
0bda : 85 50 __ STA T8 + 1 
.l20:
; 108, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0bdc : ad 45 19 LDA $1945 ; (d + 1)
0bdf : 29 fc __ AND #$fc
0be1 : 05 44 __ ORA T2 + 1 
0be3 : 8d 45 19 STA $1945 ; (d + 1)
0be6 : a5 43 __ LDA T2 + 0 
0be8 : 8d 44 19 STA $1944 ; (d + 0)
; 109, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0beb : a5 4f __ LDA T8 + 0 
0bed : 29 fc __ AND #$fc
0bef : 85 1b __ STA ACCU + 0 
0bf1 : a5 50 __ LDA T8 + 1 
0bf3 : 29 0f __ AND #$0f
0bf5 : 85 1c __ STA ACCU + 1 
0bf7 : ad 45 19 LDA $1945 ; (d + 1)
0bfa : 29 03 __ AND #$03
0bfc : 05 1b __ ORA ACCU + 0 
0bfe : 8d 45 19 STA $1945 ; (d + 1)
0c01 : ad 46 19 LDA $1946 ; (d + 2)
0c04 : 29 f0 __ AND #$f0
0c06 : 05 1c __ ORA ACCU + 1 
0c08 : 8d 46 19 STA $1946 ; (d + 2)
; 110, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0c0b : a5 4b __ LDA T6 + 0 
0c0d : 29 f0 __ AND #$f0
0c0f : 85 1b __ STA ACCU + 0 
0c11 : a5 4c __ LDA T6 + 1 
0c13 : 29 3f __ AND #$3f
0c15 : 85 1c __ STA ACCU + 1 
0c17 : ad 46 19 LDA $1946 ; (d + 2)
0c1a : 29 0f __ AND #$0f
0c1c : 05 1b __ ORA ACCU + 0 
0c1e : 8d 46 19 STA $1946 ; (d + 2)
0c21 : ad 47 19 LDA $1947 ; (d + 3)
0c24 : 29 c0 __ AND #$c0
0c26 : 05 1c __ ORA ACCU + 1 
0c28 : 8d 47 19 STA $1947 ; (d + 3)
; 111, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0c2b : a5 47 __ LDA T4 + 0 
0c2d : 29 c0 __ AND #$c0
0c2f : 85 1b __ STA ACCU + 0 
0c31 : ad 47 19 LDA $1947 ; (d + 3)
0c34 : 29 3f __ AND #$3f
0c36 : 05 1b __ ORA ACCU + 0 
0c38 : 85 53 __ STA T9 + 0 
0c3a : 8d 47 19 STA $1947 ; (d + 3)
0c3d : a5 48 __ LDA T4 + 1 
0c3f : 8d 48 19 STA $1948 ; (d + 4)
; 112, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0c42 : ad 45 19 LDA $1945 ; (d + 1)
0c45 : 29 03 __ AND #$03
0c47 : c5 44 __ CMP T2 + 1 
0c49 : d0 0b __ BNE $0c56 ; (test_word_cross.s22 + 0)
.s24:
0c4b : a5 43 __ LDA T2 + 0 
0c4d : cd 44 19 CMP $1944 ; (d + 0)
0c50 : d0 04 __ BNE $0c56 ; (test_word_cross.s22 + 0)
.s21:
0c52 : a9 01 __ LDA #$01
0c54 : d0 02 __ BNE $0c58 ; (test_word_cross.s23 + 0)
.s22:
0c56 : a9 00 __ LDA #$00
.s23:
0c58 : 85 0f __ STA P2 
0c5a : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 113, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0c5d : ad 45 19 LDA $1945 ; (d + 1)
0c60 : 85 1b __ STA ACCU + 0 
0c62 : ad 46 19 LDA $1946 ; (d + 2)
0c65 : 29 0f __ AND #$0f
0c67 : 4a __ __ LSR
0c68 : 66 1b __ ROR ACCU + 0 
0c6a : 4a __ __ LSR
0c6b : 66 1b __ ROR ACCU + 0 
0c6d : 85 1c __ STA ACCU + 1 
0c6f : a5 4e __ LDA T7 + 1 
0c71 : 29 03 __ AND #$03
0c73 : c5 1c __ CMP ACCU + 1 
0c75 : d0 0a __ BNE $0c81 ; (test_word_cross.s26 + 0)
.s28:
0c77 : a5 1b __ LDA ACCU + 0 
0c79 : c5 4d __ CMP T7 + 0 
0c7b : d0 04 __ BNE $0c81 ; (test_word_cross.s26 + 0)
.s25:
0c7d : a9 01 __ LDA #$01
0c7f : d0 02 __ BNE $0c83 ; (test_word_cross.s27 + 0)
.s26:
0c81 : a9 00 __ LDA #$00
.s27:
0c83 : 85 0f __ STA P2 
0c85 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 114, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0c88 : ad 46 19 LDA $1946 ; (d + 2)
0c8b : 85 1b __ STA ACCU + 0 
0c8d : ad 47 19 LDA $1947 ; (d + 3)
0c90 : 29 3f __ AND #$3f
0c92 : 4a __ __ LSR
0c93 : 66 1b __ ROR ACCU + 0 
0c95 : 4a __ __ LSR
0c96 : 66 1b __ ROR ACCU + 0 
0c98 : 4a __ __ LSR
0c99 : 66 1b __ ROR ACCU + 0 
0c9b : 4a __ __ LSR
0c9c : 66 1b __ ROR ACCU + 0 
0c9e : 85 1c __ STA ACCU + 1 
0ca0 : a5 4a __ LDA T5 + 1 
0ca2 : 29 03 __ AND #$03
0ca4 : c5 1c __ CMP ACCU + 1 
0ca6 : d0 0a __ BNE $0cb2 ; (test_word_cross.s30 + 0)
.s32:
0ca8 : a5 1b __ LDA ACCU + 0 
0caa : c5 49 __ CMP T5 + 0 
0cac : d0 04 __ BNE $0cb2 ; (test_word_cross.s30 + 0)
.s29:
0cae : a9 01 __ LDA #$01
0cb0 : d0 02 __ BNE $0cb4 ; (test_word_cross.s31 + 0)
.s30:
0cb2 : a9 00 __ LDA #$00
.s31:
0cb4 : 85 0f __ STA P2 
0cb6 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 115, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0cb9 : a5 48 __ LDA T4 + 1 
0cbb : 85 1b __ STA ACCU + 0 
0cbd : a5 53 __ LDA T9 + 0 
0cbf : 0a __ __ ASL
0cc0 : 26 1b __ ROL ACCU + 0 
0cc2 : 2a __ __ ROL
0cc3 : 26 1b __ ROL ACCU + 0 
0cc5 : 29 01 __ AND #$01
0cc7 : 2a __ __ ROL
0cc8 : 85 1c __ STA ACCU + 1 
0cca : a5 46 __ LDA T3 + 1 
0ccc : 29 03 __ AND #$03
0cce : c5 1c __ CMP ACCU + 1 
0cd0 : d0 0a __ BNE $0cdc ; (test_word_cross.s34 + 0)
.s36:
0cd2 : a5 1b __ LDA ACCU + 0 
0cd4 : c5 45 __ CMP T3 + 0 
0cd6 : d0 04 __ BNE $0cdc ; (test_word_cross.s34 + 0)
.s33:
0cd8 : a9 01 __ LDA #$01
0cda : d0 02 __ BNE $0cde ; (test_word_cross.s35 + 0)
.s34:
0cdc : a9 00 __ LDA #$00
.s35:
0cde : 85 0f __ STA P2 
0ce0 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
0ce3 : 18 __ __ CLC
0ce4 : a5 47 __ LDA T4 + 0 
0ce6 : 69 c0 __ ADC #$c0
0ce8 : 85 47 __ STA T4 + 0 
0cea : a5 48 __ LDA T4 + 1 
0cec : 69 01 __ ADC #$01
0cee : 85 48 __ STA T4 + 1 
0cf0 : 18 __ __ CLC
0cf1 : a5 45 __ LDA T3 + 0 
0cf3 : 69 07 __ ADC #$07
0cf5 : 85 45 __ STA T3 + 0 
0cf7 : 90 03 __ BCC $0cfc ; (test_word_cross.s39 + 0)
.s38:
; 110, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0cf9 : e6 46 __ INC T3 + 1 
0cfb : 18 __ __ CLC
.s39:
0cfc : a5 4b __ LDA T6 + 0 
0cfe : 69 50 __ ADC #$50
0d00 : 85 4b __ STA T6 + 0 
0d02 : 90 03 __ BCC $0d07 ; (test_word_cross.s41 + 0)
.s40:
0d04 : e6 4c __ INC T6 + 1 
0d06 : 18 __ __ CLC
.s41:
0d07 : a5 49 __ LDA T5 + 0 
0d09 : 69 05 __ ADC #$05
0d0b : 85 49 __ STA T5 + 0 
0d0d : 90 03 __ BCC $0d12 ; (test_word_cross.s43 + 0)
.s42:
; 109, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0d0f : e6 4a __ INC T5 + 1 
0d11 : 18 __ __ CLC
.s43:
0d12 : a5 4f __ LDA T8 + 0 
0d14 : 69 0c __ ADC #$0c
0d16 : 85 4f __ STA T8 + 0 
0d18 : 90 03 __ BCC $0d1d ; (test_word_cross.s45 + 0)
.s44:
0d1a : e6 50 __ INC T8 + 1 
0d1c : 18 __ __ CLC
.s45:
0d1d : a5 4d __ LDA T7 + 0 
0d1f : 69 03 __ ADC #$03
0d21 : 85 4d __ STA T7 + 0 
0d23 : 90 02 __ BCC $0d27 ; (test_word_cross.s47 + 0)
.s46:
0d25 : e6 4e __ INC T7 + 1 
.s47:
; 106, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0d27 : e6 43 __ INC T2 + 0 
0d29 : d0 02 __ BNE $0d2d ; (test_word_cross.s49 + 0)
.s48:
0d2b : e6 44 __ INC T2 + 1 
.s49:
0d2d : a5 44 __ LDA T2 + 1 
0d2f : c9 04 __ CMP #$04
0d31 : f0 03 __ BEQ $0d36 ; (test_word_cross.s37 + 0)
0d33 : 4c dc 0b JMP $0bdc ; (test_word_cross.l20 + 0)
.s37:
0d36 : a5 43 __ LDA T2 + 0 
0d38 : d0 f9 __ BNE $0d33 ; (test_word_cross.s49 + 6)
.s3:
0d3a : ad fa 9f LDA $9ffa ; (test_word_cross@stack + 0)
0d3d : 85 53 __ STA T9 + 0 
; 117, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0d3f : 60 __ __ RTS
--------------------------------------------------------------------
test_dword_fit: ; test_dword_fit()->void
.s4:
; 130, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0d40 : ad 49 19 LDA $1949 ; (e + 0)
0d43 : 85 43 __ STA T1 + 0 
0d45 : 29 0f __ AND #$0f
0d47 : c9 07 __ CMP #$07
0d49 : d0 04 __ BNE $0d4f ; (test_dword_fit.s6 + 0)
.s5:
0d4b : a9 01 __ LDA #$01
0d4d : d0 02 __ BNE $0d51 ; (test_dword_fit.s7 + 0)
.s6:
0d4f : a9 00 __ LDA #$00
.s7:
0d51 : 85 0f __ STA P2 
0d53 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 131, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0d56 : a5 43 __ LDA T1 + 0 
0d58 : 29 10 __ AND #$10
0d5a : c9 10 __ CMP #$10
0d5c : d0 04 __ BNE $0d62 ; (test_dword_fit.s9 + 0)
.s8:
0d5e : a9 01 __ LDA #$01
0d60 : d0 02 __ BNE $0d64 ; (test_dword_fit.s10 + 0)
.s9:
0d62 : a9 00 __ LDA #$00
.s10:
0d64 : 85 0f __ STA P2 
0d66 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 132, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0d69 : a5 43 __ LDA T1 + 0 
0d6b : 29 e0 __ AND #$e0
0d6d : c9 40 __ CMP #$40
0d6f : d0 04 __ BNE $0d75 ; (test_dword_fit.s12 + 0)
.s11:
0d71 : a9 01 __ LDA #$01
0d73 : d0 02 __ BNE $0d77 ; (test_dword_fit.s13 + 0)
.s12:
0d75 : a9 00 __ LDA #$00
.s13:
0d77 : 85 0f __ STA P2 
0d79 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 133, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0d7c : a9 01 __ LDA #$01
0d7e : 85 0f __ STA P2 
0d80 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 135, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0d83 : a9 00 __ LDA #$00
0d85 : 85 44 __ STA T2 + 0 
.l14:
; 139, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0d87 : ad 49 19 LDA $1949 ; (e + 0)
0d8a : 29 f0 __ AND #$f0
0d8c : 05 44 __ ORA T2 + 0 
0d8e : 29 0f __ AND #$0f
0d90 : 09 60 __ ORA #$60
0d92 : 8d 49 19 STA $1949 ; (e + 0)
; 140, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0d95 : 29 0f __ AND #$0f
0d97 : c5 44 __ CMP T2 + 0 
0d99 : d0 04 __ BNE $0d9f ; (test_dword_fit.s16 + 0)
.s15:
0d9b : a9 01 __ LDA #$01
0d9d : d0 02 __ BNE $0da1 ; (test_dword_fit.s17 + 0)
.s16:
0d9f : a9 00 __ LDA #$00
.s17:
0da1 : 85 0f __ STA P2 
0da3 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 141, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0da6 : a9 01 __ LDA #$01
0da8 : 85 0f __ STA P2 
0daa : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 142, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0dad : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 141, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0db0 : e6 44 __ INC T2 + 0 
0db2 : a5 44 __ LDA T2 + 0 
0db4 : c9 10 __ CMP #$10
0db6 : 90 cf __ BCC $0d87 ; (test_dword_fit.l14 + 0)
.s3:
; 144, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0db8 : 60 __ __ RTS
--------------------------------------------------------------------
test_dword_cross: ; test_dword_cross()->void
.s1:
0db9 : a2 0b __ LDX #$0b
0dbb : b5 53 __ LDA T4 + 0,x 
0dbd : 9d f0 9f STA $9ff0,x ; (test_dword_cross@stack + 0)
0dc0 : ca __ __ DEX
0dc1 : 10 f8 __ BPL $0dbb ; (test_dword_cross.s1 + 2)
.s4:
; 158, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0dc3 : ad 4c 19 LDA $194c ; (f + 2)
0dc6 : 29 0f __ AND #$0f
0dc8 : c9 01 __ CMP #$01
0dca : d0 12 __ BNE $0dde ; (test_dword_cross.s6 + 0)
.s8:
0dcc : ad 4b 19 LDA $194b ; (f + 1)
0dcf : c9 b2 __ CMP #$b2
0dd1 : d0 0b __ BNE $0dde ; (test_dword_cross.s6 + 0)
.s9:
0dd3 : ad 4a 19 LDA $194a ; (f + 0)
0dd6 : c9 07 __ CMP #$07
0dd8 : d0 04 __ BNE $0dde ; (test_dword_cross.s6 + 0)
.s5:
0dda : a9 01 __ LDA #$01
0ddc : d0 02 __ BNE $0de0 ; (test_dword_cross.s7 + 0)
.s6:
0dde : a9 00 __ LDA #$00
.s7:
0de0 : 85 0f __ STA P2 
0de2 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 159, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0de5 : ad 4c 19 LDA $194c ; (f + 2)
0de8 : 29 f0 __ AND #$f0
0dea : a8 __ __ TAY
0deb : ad 4e 19 LDA $194e ; (f + 4)
0dee : c9 36 __ CMP #$36
0df0 : d0 0b __ BNE $0dfd ; (test_dword_cross.s10 + 0)
.s12:
0df2 : ad 4d 19 LDA $194d ; (f + 3)
0df5 : c9 40 __ CMP #$40
0df7 : d0 04 __ BNE $0dfd ; (test_dword_cross.s10 + 0)
.s13:
0df9 : c0 e0 __ CPY #$e0
0dfb : f0 04 __ BEQ $0e01 ; (test_dword_cross.s14 + 0)
.s10:
0dfd : a9 00 __ LDA #$00
0dff : f0 02 __ BEQ $0e03 ; (test_dword_cross.s11 + 0)
.s14:
0e01 : a9 01 __ LDA #$01
.s11:
0e03 : 85 0f __ STA P2 
0e05 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 160, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0e08 : ad 51 19 LDA $1951 ; (f + 7)
0e0b : 29 0f __ AND #$0f
0e0d : c9 05 __ CMP #$05
0e0f : d0 12 __ BNE $0e23 ; (test_dword_cross.s16 + 0)
.s18:
0e11 : ad 50 19 LDA $1950 ; (f + 6)
0e14 : c9 16 __ CMP #$16
0e16 : d0 0b __ BNE $0e23 ; (test_dword_cross.s16 + 0)
.s19:
0e18 : ad 4f 19 LDA $194f ; (f + 5)
0e1b : c9 15 __ CMP #$15
0e1d : d0 04 __ BNE $0e23 ; (test_dword_cross.s16 + 0)
.s15:
0e1f : a9 01 __ LDA #$01
0e21 : d0 02 __ BNE $0e25 ; (test_dword_cross.s17 + 0)
.s16:
0e23 : a9 00 __ LDA #$00
.s17:
0e25 : 85 0f __ STA P2 
0e27 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 161, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0e2a : ad 51 19 LDA $1951 ; (f + 7)
0e2d : 29 f0 __ AND #$f0
0e2f : a8 __ __ TAY
0e30 : ad 53 19 LDA $1953 ; (f + 9)
0e33 : c9 6c __ CMP #$6c
0e35 : d0 0b __ BNE $0e42 ; (test_dword_cross.s20 + 0)
.s22:
0e37 : ad 52 19 LDA $1952 ; (f + 8)
0e3a : c9 81 __ CMP #$81
0e3c : d0 04 __ BNE $0e42 ; (test_dword_cross.s20 + 0)
.s23:
0e3e : c0 c0 __ CPY #$c0
0e40 : f0 04 __ BEQ $0e46 ; (test_dword_cross.s24 + 0)
.s20:
0e42 : a9 00 __ LDA #$00
0e44 : f0 02 __ BEQ $0e48 ; (test_dword_cross.s21 + 0)
.s24:
0e46 : a9 01 __ LDA #$01
.s21:
0e48 : 85 0f __ STA P2 
0e4a : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 162, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0e4d : a9 01 __ LDA #$01
0e4f : 85 0f __ STA P2 
0e51 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 164, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0e54 : a9 00 __ LDA #$00
0e56 : 85 4f __ STA T7 + 0 
0e58 : 85 50 __ STA T7 + 1 
.l25:
; 166, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0e5a : a5 4f __ LDA T7 + 0 
0e5c : 85 1b __ STA ACCU + 0 
0e5e : a5 50 __ LDA T7 + 1 
0e60 : 85 1c __ STA ACCU + 1 
0e62 : a9 00 __ LDA #$00
0e64 : 85 1d __ STA ACCU + 2 
0e66 : 85 1e __ STA ACCU + 3 
0e68 : a9 0b __ LDA #$0b
0e6a : 20 08 19 JSR $1908 ; (mul32by8 + 0)
0e6d : a5 07 __ LDA WORK + 4 
0e6f : 85 43 __ STA T1 + 0 
0e71 : 8d 4a 19 STA $194a ; (f + 0)
0e74 : a5 08 __ LDA WORK + 5 
0e76 : 85 44 __ STA T1 + 1 
0e78 : 8d 4b 19 STA $194b ; (f + 1)
0e7b : a5 09 __ LDA WORK + 6 
0e7d : 85 45 __ STA T1 + 2 
0e7f : a5 0a __ LDA WORK + 7 
0e81 : 85 46 __ STA T1 + 3 
0e83 : ad 4c 19 LDA $194c ; (f + 2)
0e86 : 29 f0 __ AND #$f0
0e88 : 05 09 __ ORA WORK + 6 
0e8a : 8d 4c 19 STA $194c ; (f + 2)
0e8d : ad 4d 19 LDA $194d ; (f + 3)
0e90 : 05 0a __ ORA WORK + 7 
0e92 : 8d 4d 19 STA $194d ; (f + 3)
; 167, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0e95 : a5 4f __ LDA T7 + 0 
0e97 : 85 1b __ STA ACCU + 0 
0e99 : a5 50 __ LDA T7 + 1 
0e9b : 85 1c __ STA ACCU + 1 
0e9d : a9 00 __ LDA #$00
0e9f : 85 1d __ STA ACCU + 2 
0ea1 : 85 1e __ STA ACCU + 3 
0ea3 : a9 21 __ LDA #$21
0ea5 : 20 08 19 JSR $1908 ; (mul32by8 + 0)
0ea8 : a5 07 __ LDA WORK + 4 
0eaa : 85 48 __ STA T2 + 1 
0eac : 85 53 __ STA T4 + 0 
0eae : a5 08 __ LDA WORK + 5 
0eb0 : 85 49 __ STA T2 + 2 
0eb2 : 85 54 __ STA T4 + 1 
0eb4 : a5 0a __ LDA WORK + 7 
0eb6 : 85 56 __ STA T4 + 3 
0eb8 : a5 09 __ LDA WORK + 6 
0eba : 85 55 __ STA T4 + 2 
0ebc : a0 04 __ LDY #$04
.l26:
0ebe : 06 48 __ ASL T2 + 1 
0ec0 : 26 49 __ ROL T2 + 2 
0ec2 : 2a __ __ ROL
0ec3 : 88 __ __ DEY
0ec4 : d0 f8 __ BNE $0ebe ; (test_dword_cross.l26 + 0)
.s27:
0ec6 : 84 1d __ STY ACCU + 2 
0ec8 : 84 1e __ STY ACCU + 3 
0eca : 29 0f __ AND #$0f
0ecc : 8d 4e 19 STA $194e ; (f + 4)
0ecf : 85 4e __ STA T3 + 3 
0ed1 : a5 48 __ LDA T2 + 1 
0ed3 : 29 f0 __ AND #$f0
0ed5 : 85 48 __ STA T2 + 1 
0ed7 : ad 4c 19 LDA $194c ; (f + 2)
0eda : 29 0f __ AND #$0f
0edc : 05 48 __ ORA T2 + 1 
0ede : 85 4c __ STA T3 + 1 
0ee0 : 8d 4c 19 STA $194c ; (f + 2)
0ee3 : a5 49 __ LDA T2 + 2 
0ee5 : 85 4d __ STA T3 + 2 
0ee7 : 8d 4d 19 STA $194d ; (f + 3)
; 168, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0eea : a5 4f __ LDA T7 + 0 
0eec : 85 1b __ STA ACCU + 0 
0eee : a5 50 __ LDA T7 + 1 
0ef0 : 85 1c __ STA ACCU + 1 
0ef2 : a9 37 __ LDA #$37
0ef4 : 20 08 19 JSR $1908 ; (mul32by8 + 0)
0ef7 : a5 07 __ LDA WORK + 4 
0ef9 : 85 57 __ STA T5 + 0 
0efb : 8d 4f 19 STA $194f ; (f + 5)
0efe : a5 08 __ LDA WORK + 5 
0f00 : 85 58 __ STA T5 + 1 
0f02 : 8d 50 19 STA $1950 ; (f + 6)
0f05 : a5 09 __ LDA WORK + 6 
0f07 : 85 59 __ STA T5 + 2 
0f09 : a5 0a __ LDA WORK + 7 
0f0b : 85 5a __ STA T5 + 3 
0f0d : ad 51 19 LDA $1951 ; (f + 7)
0f10 : 29 f0 __ AND #$f0
0f12 : 05 09 __ ORA WORK + 6 
0f14 : 8d 51 19 STA $1951 ; (f + 7)
0f17 : ad 52 19 LDA $1952 ; (f + 8)
0f1a : 05 0a __ ORA WORK + 7 
0f1c : 8d 52 19 STA $1952 ; (f + 8)
; 169, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0f1f : a5 4f __ LDA T7 + 0 
0f21 : 85 1b __ STA ACCU + 0 
0f23 : a5 50 __ LDA T7 + 1 
0f25 : 85 1c __ STA ACCU + 1 
0f27 : a9 00 __ LDA #$00
0f29 : 85 1d __ STA ACCU + 2 
0f2b : 85 1e __ STA ACCU + 3 
0f2d : a9 4d __ LDA #$4d
0f2f : 20 08 19 JSR $1908 ; (mul32by8 + 0)
0f32 : a5 07 __ LDA WORK + 4 
0f34 : 85 1c __ STA ACCU + 1 
0f36 : 85 5b __ STA T6 + 0 
0f38 : a5 08 __ LDA WORK + 5 
0f3a : 85 1d __ STA ACCU + 2 
0f3c : 85 5c __ STA T6 + 1 
0f3e : a5 0a __ LDA WORK + 7 
0f40 : 85 5e __ STA T6 + 3 
0f42 : a5 09 __ LDA WORK + 6 
0f44 : 85 5d __ STA T6 + 2 
0f46 : a2 04 __ LDX #$04
.l28:
0f48 : 06 1c __ ASL ACCU + 1 
0f4a : 26 1d __ ROL ACCU + 2 
0f4c : 2a __ __ ROL
0f4d : ca __ __ DEX
0f4e : d0 f8 __ BNE $0f48 ; (test_dword_cross.l28 + 0)
.s29:
0f50 : 29 1f __ AND #$1f
0f52 : 8d 53 19 STA $1953 ; (f + 9)
0f55 : 85 4a __ STA T2 + 3 
0f57 : a5 1c __ LDA ACCU + 1 
0f59 : 29 f0 __ AND #$f0
0f5b : 85 1c __ STA ACCU + 1 
0f5d : ad 51 19 LDA $1951 ; (f + 7)
0f60 : 29 0f __ AND #$0f
0f62 : 05 1c __ ORA ACCU + 1 
0f64 : 85 48 __ STA T2 + 1 
0f66 : 8d 51 19 STA $1951 ; (f + 7)
0f69 : a5 1d __ LDA ACCU + 2 
0f6b : 85 49 __ STA T2 + 2 
0f6d : 8d 52 19 STA $1952 ; (f + 8)
; 170, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0f70 : ad 4c 19 LDA $194c ; (f + 2)
0f73 : 29 0f __ AND #$0f
0f75 : aa __ __ TAX
0f76 : a5 46 __ LDA T1 + 3 
0f78 : d0 16 __ BNE $0f90 ; (test_dword_cross.s31 + 0)
.s33:
0f7a : e4 45 __ CPX T1 + 2 
0f7c : d0 12 __ BNE $0f90 ; (test_dword_cross.s31 + 0)
.s34:
0f7e : a5 44 __ LDA T1 + 1 
0f80 : cd 4b 19 CMP $194b ; (f + 1)
0f83 : d0 0b __ BNE $0f90 ; (test_dword_cross.s31 + 0)
.s35:
0f85 : a5 43 __ LDA T1 + 0 
0f87 : cd 4a 19 CMP $194a ; (f + 0)
0f8a : d0 04 __ BNE $0f90 ; (test_dword_cross.s31 + 0)
.s30:
0f8c : a9 01 __ LDA #$01
0f8e : d0 02 __ BNE $0f92 ; (test_dword_cross.s32 + 0)
.s31:
0f90 : a9 00 __ LDA #$00
.s32:
0f92 : 85 0f __ STA P2 
0f94 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 171, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0f97 : a5 4e __ LDA T3 + 3 
0f99 : a2 04 __ LDX #$04
.l36:
0f9b : 4a __ __ LSR
0f9c : 66 4d __ ROR T3 + 2 
0f9e : 66 4c __ ROR T3 + 1 
0fa0 : ca __ __ DEX
0fa1 : d0 f8 __ BNE $0f9b ; (test_dword_cross.l36 + 0)
.s37:
0fa3 : aa __ __ TAX
0fa4 : a5 56 __ LDA T4 + 3 
0fa6 : d0 14 __ BNE $0fbc ; (test_dword_cross.s39 + 0)
.s41:
0fa8 : e4 55 __ CPX T4 + 2 
0faa : d0 10 __ BNE $0fbc ; (test_dword_cross.s39 + 0)
.s42:
0fac : a5 4d __ LDA T3 + 2 
0fae : c5 54 __ CMP T4 + 1 
0fb0 : d0 0a __ BNE $0fbc ; (test_dword_cross.s39 + 0)
.s43:
0fb2 : a5 4c __ LDA T3 + 1 
0fb4 : c5 53 __ CMP T4 + 0 
0fb6 : d0 04 __ BNE $0fbc ; (test_dword_cross.s39 + 0)
.s38:
0fb8 : a9 01 __ LDA #$01
0fba : d0 02 __ BNE $0fbe ; (test_dword_cross.s40 + 0)
.s39:
0fbc : a9 00 __ LDA #$00
.s40:
0fbe : 85 0f __ STA P2 
0fc0 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 172, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0fc3 : ad 51 19 LDA $1951 ; (f + 7)
0fc6 : 29 0f __ AND #$0f
0fc8 : a8 __ __ TAY
0fc9 : a5 5a __ LDA T5 + 3 
0fcb : d0 16 __ BNE $0fe3 ; (test_dword_cross.s45 + 0)
.s47:
0fcd : c4 59 __ CPY T5 + 2 
0fcf : d0 12 __ BNE $0fe3 ; (test_dword_cross.s45 + 0)
.s48:
0fd1 : a5 58 __ LDA T5 + 1 
0fd3 : cd 50 19 CMP $1950 ; (f + 6)
0fd6 : d0 0b __ BNE $0fe3 ; (test_dword_cross.s45 + 0)
.s49:
0fd8 : a5 57 __ LDA T5 + 0 
0fda : cd 4f 19 CMP $194f ; (f + 5)
0fdd : d0 04 __ BNE $0fe3 ; (test_dword_cross.s45 + 0)
.s44:
0fdf : a9 01 __ LDA #$01
0fe1 : d0 02 __ BNE $0fe5 ; (test_dword_cross.s46 + 0)
.s45:
0fe3 : a9 00 __ LDA #$00
.s46:
0fe5 : 85 0f __ STA P2 
0fe7 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 173, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
0fea : a5 4a __ LDA T2 + 3 
0fec : a2 04 __ LDX #$04
.l50:
0fee : 4a __ __ LSR
0fef : 66 49 __ ROR T2 + 2 
0ff1 : 66 48 __ ROR T2 + 1 
0ff3 : ca __ __ DEX
0ff4 : d0 f8 __ BNE $0fee ; (test_dword_cross.l50 + 0)
.s51:
0ff6 : aa __ __ TAX
0ff7 : a5 5e __ LDA T6 + 3 
0ff9 : d0 14 __ BNE $100f ; (test_dword_cross.s53 + 0)
.s55:
0ffb : e4 5d __ CPX T6 + 2 
0ffd : d0 10 __ BNE $100f ; (test_dword_cross.s53 + 0)
.s56:
0fff : a5 49 __ LDA T2 + 2 
1001 : c5 5c __ CMP T6 + 1 
1003 : d0 0a __ BNE $100f ; (test_dword_cross.s53 + 0)
.s57:
1005 : a5 48 __ LDA T2 + 1 
1007 : c5 5b __ CMP T6 + 0 
1009 : d0 04 __ BNE $100f ; (test_dword_cross.s53 + 0)
.s52:
100b : a9 01 __ LDA #$01
100d : d0 02 __ BNE $1011 ; (test_dword_cross.s54 + 0)
.s53:
100f : a9 00 __ LDA #$00
.s54:
1011 : 85 0f __ STA P2 
1013 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 164, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1016 : e6 4f __ INC T7 + 0 
1018 : d0 02 __ BNE $101c ; (test_dword_cross.s60 + 0)
.s59:
101a : e6 50 __ INC T7 + 1 
.s60:
101c : a5 50 __ LDA T7 + 1 
101e : c9 04 __ CMP #$04
1020 : f0 03 __ BEQ $1025 ; (test_dword_cross.s58 + 0)
1022 : 4c 5a 0e JMP $0e5a ; (test_dword_cross.l25 + 0)
.s58:
1025 : a5 4f __ LDA T7 + 0 
1027 : d0 f9 __ BNE $1022 ; (test_dword_cross.s60 + 6)
.s3:
1029 : a2 0b __ LDX #$0b
102b : bd f0 9f LDA $9ff0,x ; (test_dword_cross@stack + 0)
102e : 95 53 __ STA T4 + 0,x 
1030 : ca __ __ DEX
1031 : 10 f8 __ BPL $102b ; (test_dword_cross.s3 + 2)
; 175, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1033 : 60 __ __ RTS
--------------------------------------------------------------------
test_char_signed: ; test_char_signed()->void
.s4:
; 188, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1034 : ad 54 19 LDA $1954 ; (g + 0)
1037 : 85 44 __ STA T1 + 0 
1039 : 29 01 __ AND #$01
103b : 49 01 __ EOR #$01
103d : 38 __ __ SEC
103e : e9 01 __ SBC #$01
1040 : f0 04 __ BEQ $1046 ; (test_char_signed.s12 + 0)
.s13:
1042 : a9 00 __ LDA #$00
1044 : f0 02 __ BEQ $1048 ; (test_char_signed.s14 + 0)
.s12:
1046 : a9 01 __ LDA #$01
.s14:
1048 : 85 0f __ STA P2 
104a : 20 27 09 JSR $0927 ; (assert.s4 + 0)
104d : a5 44 __ LDA T1 + 0 
104f : 29 3f __ AND #$3f
1051 : 4a __ __ LSR
1052 : 49 10 __ EOR #$10
1054 : c9 0f __ CMP #$0f
1056 : d0 04 __ BNE $105c ; (test_char_signed.s6 + 0)
.s5:
; 189, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1058 : a9 01 __ LDA #$01
105a : d0 02 __ BNE $105e ; (test_char_signed.s7 + 0)
.s6:
105c : a9 00 __ LDA #$00
.s7:
105e : 85 0f __ STA P2 
1060 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 190, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1063 : a5 44 __ LDA T1 + 0 
1065 : 0a __ __ ASL
1066 : 2a __ __ ROL
1067 : 29 01 __ AND #$01
1069 : 2a __ __ ROL
106a : 49 02 __ EOR #$02
106c : f0 04 __ BEQ $1072 ; (test_char_signed.s15 + 0)
.s16:
106e : a9 00 __ LDA #$00
1070 : f0 02 __ BEQ $1074 ; (test_char_signed.s17 + 0)
.s15:
1072 : a9 01 __ LDA #$01
.s17:
1074 : 85 0f __ STA P2 
1076 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 191, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1079 : a9 01 __ LDA #$01
107b : 85 0f __ STA P2 
107d : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 196, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1080 : a9 f0 __ LDA #$f0
1082 : 85 44 __ STA T1 + 0 
1084 : a9 e0 __ LDA #$e0
1086 : 85 46 __ STA T3 + 0 
.l8:
; 197, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1088 : a5 46 __ LDA T3 + 0 
108a : 29 3e __ AND #$3e
108c : 85 43 __ STA T0 + 0 
108e : ad 54 19 LDA $1954 ; (g + 0)
1091 : 29 c0 __ AND #$c0
1093 : 09 01 __ ORA #$01
1095 : 05 43 __ ORA T0 + 0 
1097 : 29 3f __ AND #$3f
1099 : 09 40 __ ORA #$40
109b : 85 45 __ STA T2 + 0 
109d : 8d 54 19 STA $1954 ; (g + 0)
; 198, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
10a0 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
10a3 : a5 45 __ LDA T2 + 0 
10a5 : 29 3f __ AND #$3f
10a7 : 4a __ __ LSR
10a8 : 49 10 __ EOR #$10
10aa : 38 __ __ SEC
10ab : e9 10 __ SBC #$10
10ad : c5 44 __ CMP T1 + 0 
10af : d0 04 __ BNE $10b5 ; (test_char_signed.s10 + 0)
.s9:
; 199, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
10b1 : a9 01 __ LDA #$01
10b3 : d0 02 __ BNE $10b7 ; (test_char_signed.s11 + 0)
.s10:
10b5 : a9 00 __ LDA #$00
.s11:
10b7 : 85 0f __ STA P2 
10b9 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 200, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
10bc : a9 01 __ LDA #$01
10be : 85 0f __ STA P2 
10c0 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
10c3 : e6 46 __ INC T3 + 0 
10c5 : e6 46 __ INC T3 + 0 
10c7 : e6 44 __ INC T1 + 0 
10c9 : 30 bd __ BMI $1088 ; (test_char_signed.l8 + 0)
.s18:
; 193, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
10cb : a5 44 __ LDA T1 + 0 
10cd : c9 10 __ CMP #$10
10cf : 90 b7 __ BCC $1088 ; (test_char_signed.l8 + 0)
.s3:
; 202, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
10d1 : 60 __ __ RTS
--------------------------------------------------------------------
test_word_signed: ; test_word_signed()->void
.s1:
10d2 : a5 53 __ LDA T8 + 0 
10d4 : 8d fc 9f STA $9ffc ; (test_word_signed@stack + 0)
10d7 : a5 54 __ LDA T8 + 1 
10d9 : 8d fd 9f STA $9ffd ; (test_word_signed@stack + 1)
.s4:
; 216, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
10dc : ad 55 19 LDA $1955 ; (h + 0)
10df : 85 1c __ STA ACCU + 1 
10e1 : ad 56 19 LDA $1956 ; (h + 1)
10e4 : 4a __ __ LSR
10e5 : 66 1c __ ROR ACCU + 1 
10e7 : 6a __ __ ROR
10e8 : 66 1c __ ROR ACCU + 1 
10ea : 29 80 __ AND #$80
10ec : 85 1b __ STA ACCU + 0 
10ee : 26 1c __ ROL ACCU + 1 
10f0 : a9 00 __ LDA #$00
10f2 : 69 ff __ ADC #$ff
10f4 : 49 ff __ EOR #$ff
10f6 : 06 1b __ ASL ACCU + 0 
10f8 : 26 1c __ ROL ACCU + 1 
10fa : 2a __ __ ROL
10fb : d0 0a __ BNE $1107 ; (test_word_signed.s6 + 0)
.s8:
10fd : a5 1c __ LDA ACCU + 1 
10ff : c9 6f __ CMP #$6f
1101 : d0 04 __ BNE $1107 ; (test_word_signed.s6 + 0)
.s5:
1103 : a9 01 __ LDA #$01
1105 : d0 02 __ BNE $1109 ; (test_word_signed.s7 + 0)
.s6:
1107 : a9 00 __ LDA #$00
.s7:
1109 : 85 0f __ STA P2 
110b : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 217, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
110e : ad 56 19 LDA $1956 ; (h + 1)
1111 : 0a __ __ ASL
1112 : 85 1b __ STA ACCU + 0 
1114 : ad 57 19 LDA $1957 ; (h + 2)
1117 : 2a __ __ ROL
1118 : 06 1b __ ASL ACCU + 0 
111a : 2a __ __ ROL
111b : 06 1b __ ASL ACCU + 0 
111d : 2a __ __ ROL
111e : 06 1b __ ASL ACCU + 0 
1120 : 2a __ __ ROL
1121 : 06 1b __ ASL ACCU + 0 
1123 : 2a __ __ ROL
1124 : 85 1c __ STA ACCU + 1 
1126 : a9 00 __ LDA #$00
1128 : 69 ff __ ADC #$ff
112a : 49 ff __ EOR #$ff
112c : 06 1b __ ASL ACCU + 0 
112e : 26 1c __ ROL ACCU + 1 
1130 : 2a __ __ ROL
1131 : c9 ff __ CMP #$ff
1133 : d0 0a __ BNE $113f ; (test_word_signed.s10 + 0)
.s12:
1135 : a5 1c __ LDA ACCU + 1 
1137 : c9 22 __ CMP #$22
1139 : d0 04 __ BNE $113f ; (test_word_signed.s10 + 0)
.s9:
113b : a9 01 __ LDA #$01
113d : d0 02 __ BNE $1141 ; (test_word_signed.s11 + 0)
.s10:
113f : a9 00 __ LDA #$00
.s11:
1141 : 85 0f __ STA P2 
1143 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 218, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1146 : ad 57 19 LDA $1957 ; (h + 2)
1149 : 0a __ __ ASL
114a : 85 1b __ STA ACCU + 0 
114c : ad 58 19 LDA $1958 ; (h + 3)
114f : 2a __ __ ROL
1150 : 06 1b __ ASL ACCU + 0 
1152 : 2a __ __ ROL
1153 : 06 1b __ ASL ACCU + 0 
1155 : 2a __ __ ROL
1156 : 85 1c __ STA ACCU + 1 
1158 : a9 00 __ LDA #$00
115a : 69 ff __ ADC #$ff
115c : 49 ff __ EOR #$ff
115e : 06 1b __ ASL ACCU + 0 
1160 : 26 1c __ ROL ACCU + 1 
1162 : 2a __ __ ROL
1163 : c9 fe __ CMP #$fe
1165 : d0 0a __ BNE $1171 ; (test_word_signed.s14 + 0)
.s16:
1167 : a5 1c __ LDA ACCU + 1 
1169 : c9 b3 __ CMP #$b3
116b : d0 04 __ BNE $1171 ; (test_word_signed.s14 + 0)
.s13:
116d : a9 01 __ LDA #$01
116f : d0 02 __ BNE $1173 ; (test_word_signed.s15 + 0)
.s14:
1171 : a9 00 __ LDA #$00
.s15:
1173 : 85 0f __ STA P2 
1175 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 219, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1178 : ad 58 19 LDA $1958 ; (h + 3)
117b : 0a __ __ ASL
117c : 85 1b __ STA ACCU + 0 
117e : ad 59 19 LDA $1959 ; (h + 4)
1181 : 2a __ __ ROL
1182 : 85 1c __ STA ACCU + 1 
1184 : a9 00 __ LDA #$00
1186 : 69 ff __ ADC #$ff
1188 : 49 ff __ EOR #$ff
118a : 06 1b __ ASL ACCU + 0 
118c : 26 1c __ ROL ACCU + 1 
118e : 2a __ __ ROL
118f : c9 01 __ CMP #$01
1191 : d0 0a __ BNE $119d ; (test_word_signed.s18 + 0)
.s20:
1193 : a5 1c __ LDA ACCU + 1 
1195 : c9 bc __ CMP #$bc
1197 : d0 04 __ BNE $119d ; (test_word_signed.s18 + 0)
.s17:
1199 : a9 01 __ LDA #$01
119b : d0 02 __ BNE $119f ; (test_word_signed.s19 + 0)
.s18:
119d : a9 00 __ LDA #$00
.s19:
119f : 85 0f __ STA P2 
11a1 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 220, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
11a4 : a9 01 __ LDA #$01
11a6 : 85 0f __ STA P2 
11a8 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 225, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
11ab : a9 ff __ LDA #$ff
11ad : 85 45 __ STA T2 + 1 
11af : 85 47 __ STA T3 + 1 
11b1 : 85 4b __ STA T5 + 1 
11b3 : 85 4f __ STA T7 + 1 
11b5 : a9 e0 __ LDA #$e0
11b7 : 85 44 __ STA T2 + 0 
11b9 : a9 00 __ LDA #$00
11bb : 85 48 __ STA T4 + 0 
11bd : 85 4c __ STA T6 + 0 
11bf : a9 20 __ LDA #$20
11c1 : 85 46 __ STA T3 + 0 
11c3 : a9 c8 __ LDA #$c8
11c5 : 85 49 __ STA T4 + 1 
11c7 : a9 60 __ LDA #$60
11c9 : 85 4a __ STA T5 + 0 
11cb : a9 f6 __ LDA #$f6
11cd : 85 4d __ STA T6 + 1 
11cf : a9 a0 __ LDA #$a0
11d1 : 85 4e __ STA T7 + 0 
11d3 : a9 80 __ LDA #$80
11d5 : 85 53 __ STA T8 + 0 
11d7 : a9 fe __ LDA #$fe
11d9 : 85 54 __ STA T8 + 1 
.l21:
; 224, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
11db : a5 45 __ LDA T2 + 1 
11dd : 29 03 __ AND #$03
11df : 85 1c __ STA ACCU + 1 
11e1 : ad 56 19 LDA $1956 ; (h + 1)
11e4 : 29 fc __ AND #$fc
11e6 : 05 1c __ ORA ACCU + 1 
11e8 : 8d 56 19 STA $1956 ; (h + 1)
; 225, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
11eb : a5 53 __ LDA T8 + 0 
11ed : 29 fc __ AND #$fc
11ef : 85 1b __ STA ACCU + 0 
11f1 : a5 54 __ LDA T8 + 1 
11f3 : 29 0f __ AND #$0f
11f5 : 85 1c __ STA ACCU + 1 
11f7 : ad 56 19 LDA $1956 ; (h + 1)
11fa : 29 03 __ AND #$03
11fc : 05 1b __ ORA ACCU + 0 
11fe : 8d 56 19 STA $1956 ; (h + 1)
1201 : ad 57 19 LDA $1957 ; (h + 2)
1204 : 29 f0 __ AND #$f0
1206 : 05 1c __ ORA ACCU + 1 
1208 : 8d 57 19 STA $1957 ; (h + 2)
; 226, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
120b : a5 4c __ LDA T6 + 0 
120d : 29 f0 __ AND #$f0
120f : 85 1b __ STA ACCU + 0 
1211 : a5 4d __ LDA T6 + 1 
1213 : 29 3f __ AND #$3f
1215 : 85 1c __ STA ACCU + 1 
1217 : ad 57 19 LDA $1957 ; (h + 2)
121a : 29 0f __ AND #$0f
121c : 05 1b __ ORA ACCU + 0 
121e : 8d 57 19 STA $1957 ; (h + 2)
1221 : ad 58 19 LDA $1958 ; (h + 3)
1224 : 29 c0 __ AND #$c0
1226 : 05 1c __ ORA ACCU + 1 
1228 : 8d 58 19 STA $1958 ; (h + 3)
; 227, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
122b : a5 48 __ LDA T4 + 0 
122d : 29 c0 __ AND #$c0
122f : 85 1b __ STA ACCU + 0 
1231 : ad 58 19 LDA $1958 ; (h + 3)
1234 : 29 3f __ AND #$3f
1236 : 05 1b __ ORA ACCU + 0 
1238 : 85 43 __ STA T1 + 0 
123a : 8d 58 19 STA $1958 ; (h + 3)
123d : a5 49 __ LDA T4 + 1 
123f : 8d 59 19 STA $1959 ; (h + 4)
; 224, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1242 : a5 44 __ LDA T2 + 0 
1244 : 8d 55 19 STA $1955 ; (h + 0)
; 228, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1247 : 85 1c __ STA ACCU + 1 
1249 : ad 56 19 LDA $1956 ; (h + 1)
124c : 4a __ __ LSR
124d : 66 1c __ ROR ACCU + 1 
124f : 6a __ __ ROR
1250 : 66 1c __ ROR ACCU + 1 
1252 : 29 80 __ AND #$80
1254 : 85 1b __ STA ACCU + 0 
1256 : 26 1c __ ROL ACCU + 1 
1258 : a9 00 __ LDA #$00
125a : 69 ff __ ADC #$ff
125c : 49 ff __ EOR #$ff
125e : 06 1b __ ASL ACCU + 0 
1260 : 26 1c __ ROL ACCU + 1 
1262 : 2a __ __ ROL
1263 : c5 45 __ CMP T2 + 1 
1265 : d0 0a __ BNE $1271 ; (test_word_signed.s23 + 0)
.s25:
1267 : a5 1c __ LDA ACCU + 1 
1269 : c5 44 __ CMP T2 + 0 
126b : d0 04 __ BNE $1271 ; (test_word_signed.s23 + 0)
.s22:
126d : a9 01 __ LDA #$01
126f : d0 02 __ BNE $1273 ; (test_word_signed.s24 + 0)
.s23:
1271 : a9 00 __ LDA #$00
.s24:
1273 : 85 0f __ STA P2 
1275 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 229, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1278 : ad 56 19 LDA $1956 ; (h + 1)
127b : 0a __ __ ASL
127c : 85 1b __ STA ACCU + 0 
127e : ad 57 19 LDA $1957 ; (h + 2)
1281 : 2a __ __ ROL
1282 : 06 1b __ ASL ACCU + 0 
1284 : 2a __ __ ROL
1285 : 06 1b __ ASL ACCU + 0 
1287 : 2a __ __ ROL
1288 : 06 1b __ ASL ACCU + 0 
128a : 2a __ __ ROL
128b : 06 1b __ ASL ACCU + 0 
128d : 2a __ __ ROL
128e : 85 1c __ STA ACCU + 1 
1290 : a9 00 __ LDA #$00
1292 : 69 ff __ ADC #$ff
1294 : 49 ff __ EOR #$ff
1296 : 06 1b __ ASL ACCU + 0 
1298 : 26 1c __ ROL ACCU + 1 
129a : 2a __ __ ROL
129b : c5 4f __ CMP T7 + 1 
129d : d0 0a __ BNE $12a9 ; (test_word_signed.s27 + 0)
.s29:
129f : a5 1c __ LDA ACCU + 1 
12a1 : c5 4e __ CMP T7 + 0 
12a3 : d0 04 __ BNE $12a9 ; (test_word_signed.s27 + 0)
.s26:
12a5 : a9 01 __ LDA #$01
12a7 : d0 02 __ BNE $12ab ; (test_word_signed.s28 + 0)
.s27:
12a9 : a9 00 __ LDA #$00
.s28:
12ab : 85 0f __ STA P2 
12ad : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 230, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
12b0 : ad 57 19 LDA $1957 ; (h + 2)
12b3 : 0a __ __ ASL
12b4 : 85 1b __ STA ACCU + 0 
12b6 : ad 58 19 LDA $1958 ; (h + 3)
12b9 : 2a __ __ ROL
12ba : 06 1b __ ASL ACCU + 0 
12bc : 2a __ __ ROL
12bd : 06 1b __ ASL ACCU + 0 
12bf : 2a __ __ ROL
12c0 : 85 1c __ STA ACCU + 1 
12c2 : a9 00 __ LDA #$00
12c4 : 69 ff __ ADC #$ff
12c6 : 49 ff __ EOR #$ff
12c8 : 06 1b __ ASL ACCU + 0 
12ca : 26 1c __ ROL ACCU + 1 
12cc : 2a __ __ ROL
12cd : c5 4b __ CMP T5 + 1 
12cf : d0 0a __ BNE $12db ; (test_word_signed.s31 + 0)
.s33:
12d1 : a5 1c __ LDA ACCU + 1 
12d3 : c5 4a __ CMP T5 + 0 
12d5 : d0 04 __ BNE $12db ; (test_word_signed.s31 + 0)
.s30:
12d7 : a9 01 __ LDA #$01
12d9 : d0 02 __ BNE $12dd ; (test_word_signed.s32 + 0)
.s31:
12db : a9 00 __ LDA #$00
.s32:
12dd : 85 0f __ STA P2 
12df : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 231, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
12e2 : a5 43 __ LDA T1 + 0 
12e4 : 0a __ __ ASL
12e5 : 85 1c __ STA ACCU + 1 
12e7 : a5 49 __ LDA T4 + 1 
12e9 : 2a __ __ ROL
12ea : 85 1b __ STA ACCU + 0 
12ec : a9 00 __ LDA #$00
12ee : 69 ff __ ADC #$ff
12f0 : 49 ff __ EOR #$ff
12f2 : 06 1c __ ASL ACCU + 1 
12f4 : 26 1b __ ROL ACCU + 0 
12f6 : 2a __ __ ROL
12f7 : c5 47 __ CMP T3 + 1 
12f9 : d0 0a __ BNE $1305 ; (test_word_signed.s35 + 0)
.s37:
12fb : a5 1b __ LDA ACCU + 0 
12fd : c5 46 __ CMP T3 + 0 
12ff : d0 04 __ BNE $1305 ; (test_word_signed.s35 + 0)
.s34:
1301 : a9 01 __ LDA #$01
1303 : d0 02 __ BNE $1307 ; (test_word_signed.s36 + 0)
.s35:
1305 : a9 00 __ LDA #$00
.s36:
1307 : 85 0f __ STA P2 
1309 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
130c : 18 __ __ CLC
130d : a5 48 __ LDA T4 + 0 
130f : 69 c0 __ ADC #$c0
1311 : 85 48 __ STA T4 + 0 
1313 : a5 49 __ LDA T4 + 1 
1315 : 69 01 __ ADC #$01
1317 : 85 49 __ STA T4 + 1 
1319 : 18 __ __ CLC
131a : a5 46 __ LDA T3 + 0 
131c : 69 07 __ ADC #$07
131e : 85 46 __ STA T3 + 0 
1320 : 90 03 __ BCC $1325 ; (test_word_signed.s39 + 0)
.s38:
; 226, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1322 : e6 47 __ INC T3 + 1 
1324 : 18 __ __ CLC
.s39:
1325 : a5 4c __ LDA T6 + 0 
1327 : 69 50 __ ADC #$50
1329 : 85 4c __ STA T6 + 0 
132b : 90 03 __ BCC $1330 ; (test_word_signed.s41 + 0)
.s40:
132d : e6 4d __ INC T6 + 1 
132f : 18 __ __ CLC
.s41:
1330 : a5 4a __ LDA T5 + 0 
1332 : 69 05 __ ADC #$05
1334 : 85 4a __ STA T5 + 0 
1336 : 90 03 __ BCC $133b ; (test_word_signed.s43 + 0)
.s42:
; 225, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1338 : e6 4b __ INC T5 + 1 
133a : 18 __ __ CLC
.s43:
133b : a5 53 __ LDA T8 + 0 
133d : 69 0c __ ADC #$0c
133f : 85 53 __ STA T8 + 0 
1341 : 90 03 __ BCC $1346 ; (test_word_signed.s45 + 0)
.s44:
1343 : e6 54 __ INC T8 + 1 
1345 : 18 __ __ CLC
.s45:
1346 : a5 4e __ LDA T7 + 0 
1348 : 69 03 __ ADC #$03
134a : 85 4e __ STA T7 + 0 
134c : 90 02 __ BCC $1350 ; (test_word_signed.s47 + 0)
.s46:
134e : e6 4f __ INC T7 + 1 
.s47:
; 222, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1350 : e6 44 __ INC T2 + 0 
1352 : d0 02 __ BNE $1356 ; (test_word_signed.s49 + 0)
.s48:
1354 : e6 45 __ INC T2 + 1 
.s49:
1356 : a5 44 __ LDA T2 + 0 
1358 : 10 03 __ BPL $135d ; (test_word_signed.s50 + 0)
135a : 4c db 11 JMP $11db ; (test_word_signed.l21 + 0)
.s50:
135d : c9 20 __ CMP #$20
135f : 90 f9 __ BCC $135a ; (test_word_signed.s49 + 4)
.s3:
1361 : ad fc 9f LDA $9ffc ; (test_word_signed@stack + 0)
1364 : 85 53 __ STA T8 + 0 
1366 : ad fd 9f LDA $9ffd ; (test_word_signed@stack + 1)
1369 : 85 54 __ STA T8 + 1 
; 233, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
136b : 60 __ __ RTS
--------------------------------------------------------------------
test_inc_char_fit: ; test_inc_char_fit()->void
.s4:
; 242, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
136c : a9 57 __ LDA #$57
136e : a0 00 __ LDY #$00
.l5:
; 244, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1370 : 85 44 __ STA T3 + 0 
1372 : 98 __ __ TYA
1373 : 18 __ __ CLC
1374 : 69 07 __ ADC #$07
1376 : 85 43 __ STA T2 + 0 
1378 : 29 0f __ AND #$0f
137a : 85 1b __ STA ACCU + 0 
137c : a5 44 __ LDA T3 + 0 
137e : 29 0f __ AND #$0f
1380 : 85 45 __ STA T4 + 0 
1382 : c5 1b __ CMP ACCU + 0 
1384 : d0 04 __ BNE $138a ; (test_inc_char_fit.s7 + 0)
.s6:
1386 : a9 01 __ LDA #$01
1388 : d0 02 __ BNE $138c ; (test_inc_char_fit.s8 + 0)
.s7:
138a : a9 00 __ LDA #$00
.s8:
138c : 85 0f __ STA P2 
138e : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 245, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1391 : 18 __ __ CLC
1392 : a5 43 __ LDA T2 + 0 
1394 : 69 fa __ ADC #$fa
1396 : 85 43 __ STA T2 + 0 
1398 : 29 01 __ AND #$01
139a : 85 1b __ STA ACCU + 0 
139c : a5 44 __ LDA T3 + 0 
139e : 29 1f __ AND #$1f
13a0 : 4a __ __ LSR
13a1 : 4a __ __ LSR
13a2 : 4a __ __ LSR
13a3 : 4a __ __ LSR
13a4 : c5 1b __ CMP ACCU + 0 
13a6 : d0 04 __ BNE $13ac ; (test_inc_char_fit.s10 + 0)
.s9:
13a8 : a9 01 __ LDA #$01
13aa : d0 02 __ BNE $13ae ; (test_inc_char_fit.s11 + 0)
.s10:
13ac : a9 00 __ LDA #$00
.s11:
13ae : 85 0f __ STA P2 
13b0 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 246, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
13b3 : 18 __ __ CLC
13b4 : a5 43 __ LDA T2 + 0 
13b6 : 69 01 __ ADC #$01
13b8 : 29 07 __ AND #$07
13ba : 85 1b __ STA ACCU + 0 
13bc : a5 44 __ LDA T3 + 0 
13be : 4a __ __ LSR
13bf : 4a __ __ LSR
13c0 : 4a __ __ LSR
13c1 : 4a __ __ LSR
13c2 : 4a __ __ LSR
13c3 : c5 1b __ CMP ACCU + 0 
13c5 : d0 04 __ BNE $13cb ; (test_inc_char_fit.s13 + 0)
.s12:
13c7 : a9 01 __ LDA #$01
13c9 : d0 02 __ BNE $13cd ; (test_inc_char_fit.s14 + 0)
.s13:
13cb : a9 00 __ LDA #$00
.s14:
13cd : 85 0f __ STA P2 
13cf : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 242, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
13d2 : 18 __ __ CLC
13d3 : a5 45 __ LDA T4 + 0 
13d5 : 69 01 __ ADC #$01
13d7 : 29 0f __ AND #$0f
13d9 : 45 44 __ EOR T3 + 0 
13db : 29 0f __ AND #$0f
13dd : 45 44 __ EOR T3 + 0 
13df : 85 1b __ STA ACCU + 0 
13e1 : 18 __ __ CLC
13e2 : 69 10 __ ADC #$10
13e4 : 29 10 __ AND #$10
13e6 : 45 1b __ EOR ACCU + 0 
13e8 : 29 10 __ AND #$10
13ea : 45 1b __ EOR ACCU + 0 
13ec : 85 1b __ STA ACCU + 0 
13ee : 18 __ __ CLC
13ef : 69 20 __ ADC #$20
13f1 : 29 e0 __ AND #$e0
13f3 : 45 1b __ EOR ACCU + 0 
13f5 : 29 e0 __ AND #$e0
13f7 : 45 1b __ EOR ACCU + 0 
13f9 : a4 43 __ LDY T2 + 0 
13fb : c0 10 __ CPY #$10
13fd : b0 03 __ BCS $1402 ; (test_inc_char_fit.s3 + 0)
13ff : 4c 70 13 JMP $1370 ; (test_inc_char_fit.l5 + 0)
.s3:
; 251, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1402 : 60 __ __ RTS
--------------------------------------------------------------------
test_inc_char_cross: ; test_inc_char_cross()->void
.s4:
; 257, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1403 : a9 8b __ LDA #$8b
1405 : 8d fd 9f STA $9ffd ; (bi + 0)
; 258, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1408 : a9 15 __ LDA #$15
140a : 8d fe 9f STA $9ffe ; (bi + 1)
; 259, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
140d : a9 b2 __ LDA #$b2
140f : 8d ff 9f STA $9fff ; (bi + 2)
; 263, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1412 : a9 2c __ LDA #$2c
1414 : 85 45 __ STA T2 + 0 
1416 : a9 21 __ LDA #$21
1418 : 85 46 __ STA T3 + 0 
141a : a9 16 __ LDA #$16
141c : 85 47 __ STA T4 + 0 
141e : a9 0b __ LDA #$0b
1420 : 85 48 __ STA T5 + 0 
.l5:
1422 : a5 48 __ LDA T5 + 0 
1424 : 29 3f __ AND #$3f
1426 : 85 1b __ STA ACCU + 0 
1428 : ad fd 9f LDA $9ffd ; (bi + 0)
142b : 29 3f __ AND #$3f
142d : 85 49 __ STA T7 + 0 
142f : c5 1b __ CMP ACCU + 0 
1431 : d0 04 __ BNE $1437 ; (test_inc_char_cross.s7 + 0)
.s6:
1433 : a9 01 __ LDA #$01
1435 : d0 02 __ BNE $1439 ; (test_inc_char_cross.s8 + 0)
.s7:
1437 : a9 00 __ LDA #$00
.s8:
1439 : 85 0f __ STA P2 
143b : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 264, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
143e : a5 47 __ LDA T4 + 0 
1440 : 29 3f __ AND #$3f
1442 : 85 1b __ STA ACCU + 0 
1444 : ad fe 9f LDA $9ffe ; (bi + 1)
1447 : 29 0f __ AND #$0f
1449 : 85 43 __ STA T1 + 0 
144b : ad fd 9f LDA $9ffd ; (bi + 0)
144e : 0a __ __ ASL
144f : 26 43 __ ROL T1 + 0 
1451 : 0a __ __ ASL
1452 : a5 43 __ LDA T1 + 0 
1454 : 2a __ __ ROL
1455 : c5 1b __ CMP ACCU + 0 
1457 : d0 04 __ BNE $145d ; (test_inc_char_cross.s10 + 0)
.s9:
1459 : a9 01 __ LDA #$01
145b : d0 02 __ BNE $145f ; (test_inc_char_cross.s11 + 0)
.s10:
145d : a9 00 __ LDA #$00
.s11:
145f : 85 0f __ STA P2 
1461 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 265, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1464 : a5 46 __ LDA T3 + 0 
1466 : 29 3f __ AND #$3f
1468 : 85 1b __ STA ACCU + 0 
146a : ad ff 9f LDA $9fff ; (bi + 2)
146d : 29 03 __ AND #$03
146f : 4a __ __ LSR
1470 : 85 44 __ STA T1 + 1 
1472 : ad fe 9f LDA $9ffe ; (bi + 1)
1475 : 6a __ __ ROR
1476 : 46 44 __ LSR T1 + 1 
1478 : 6a __ __ ROR
1479 : 4a __ __ LSR
147a : 4a __ __ LSR
147b : c5 1b __ CMP ACCU + 0 
147d : d0 04 __ BNE $1483 ; (test_inc_char_cross.s13 + 0)
.s12:
147f : a9 01 __ LDA #$01
1481 : d0 02 __ BNE $1485 ; (test_inc_char_cross.s14 + 0)
.s13:
1483 : a9 00 __ LDA #$00
.s14:
1485 : 85 0f __ STA P2 
1487 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 266, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
148a : a5 45 __ LDA T2 + 0 
148c : 29 3f __ AND #$3f
148e : 85 1b __ STA ACCU + 0 
1490 : ad ff 9f LDA $9fff ; (bi + 2)
1493 : 4a __ __ LSR
1494 : 4a __ __ LSR
1495 : c5 1b __ CMP ACCU + 0 
1497 : d0 04 __ BNE $149d ; (test_inc_char_cross.s16 + 0)
.s15:
1499 : a9 01 __ LDA #$01
149b : d0 02 __ BNE $149f ; (test_inc_char_cross.s17 + 0)
.s16:
149d : a9 00 __ LDA #$00
.s17:
149f : 85 0f __ STA P2 
14a1 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 267, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
14a4 : 18 __ __ CLC
14a5 : a5 49 __ LDA T7 + 0 
14a7 : 69 01 __ ADC #$01
14a9 : 29 3f __ AND #$3f
14ab : 4d fd 9f EOR $9ffd ; (bi + 0)
14ae : 29 3f __ AND #$3f
14b0 : 4d fd 9f EOR $9ffd ; (bi + 0)
14b3 : 8d fd 9f STA $9ffd ; (bi + 0)
; 268, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
14b6 : aa __ __ TAX
14b7 : 29 c0 __ AND #$c0
14b9 : 18 __ __ CLC
14ba : 69 40 __ ADC #$40
14bc : 29 c0 __ AND #$c0
14be : 85 43 __ STA T1 + 0 
14c0 : ad fe 9f LDA $9ffe ; (bi + 1)
14c3 : 29 0f __ AND #$0f
14c5 : 69 00 __ ADC #$00
14c7 : 29 0f __ AND #$0f
14c9 : 85 44 __ STA T1 + 1 
14cb : 8a __ __ TXA
14cc : 29 3f __ AND #$3f
14ce : 05 43 __ ORA T1 + 0 
14d0 : 8d fd 9f STA $9ffd ; (bi + 0)
14d3 : ad fe 9f LDA $9ffe ; (bi + 1)
14d6 : 29 f0 __ AND #$f0
14d8 : 05 44 __ ORA T1 + 1 
14da : 8d fe 9f STA $9ffe ; (bi + 1)
; 269, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
14dd : 29 f0 __ AND #$f0
14df : 69 10 __ ADC #$10
14e1 : 29 f0 __ AND #$f0
14e3 : 85 43 __ STA T1 + 0 
14e5 : ad ff 9f LDA $9fff ; (bi + 2)
14e8 : 29 03 __ AND #$03
14ea : 69 00 __ ADC #$00
14ec : 29 03 __ AND #$03
14ee : 85 44 __ STA T1 + 1 
14f0 : ad fe 9f LDA $9ffe ; (bi + 1)
14f3 : 29 0f __ AND #$0f
14f5 : 05 43 __ ORA T1 + 0 
14f7 : 8d fe 9f STA $9ffe ; (bi + 1)
14fa : ad ff 9f LDA $9fff ; (bi + 2)
14fd : 29 fc __ AND #$fc
14ff : 05 44 __ ORA T1 + 1 
1501 : 8d ff 9f STA $9fff ; (bi + 2)
; 270, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1504 : 69 04 __ ADC #$04
1506 : 29 fc __ AND #$fc
1508 : 85 43 __ STA T1 + 0 
150a : ad ff 9f LDA $9fff ; (bi + 2)
150d : 29 03 __ AND #$03
150f : 05 43 __ ORA T1 + 0 
1511 : 8d ff 9f STA $9fff ; (bi + 2)
; 261, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1514 : e6 48 __ INC T5 + 0 
1516 : e6 47 __ INC T4 + 0 
1518 : e6 46 __ INC T3 + 0 
151a : e6 45 __ INC T2 + 0 
151c : a5 45 __ LDA T2 + 0 
151e : c9 6c __ CMP #$6c
1520 : f0 03 __ BEQ $1525 ; (test_inc_char_cross.s3 + 0)
1522 : 4c 22 14 JMP $1422 ; (test_inc_char_cross.l5 + 0)
.s3:
; 272, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1525 : 60 __ __ RTS
--------------------------------------------------------------------
test_add_char_cross: ; test_add_char_cross()->void
.s4:
; 276, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1526 : a9 00 __ LDA #$00
1528 : 8d fd 9f STA $9ffd ; (bi + 0)
152b : 8d fe 9f STA $9ffe ; (bi + 1)
152e : 8d ff 9f STA $9fff ; (bi + 2)
; 277, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1531 : a9 0b __ LDA #$0b
1533 : 85 48 __ STA T5 + 0 
1535 : 8d fd 9f STA $9ffd ; (bi + 0)
; 278, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1538 : a9 00 __ LDA #$00
153a : 85 45 __ STA T2 + 0 
153c : 85 46 __ STA T3 + 0 
153e : 85 49 __ STA T5 + 1 
1540 : a9 05 __ LDA #$05
1542 : 8d fe 9f STA $9ffe ; (bi + 1)
1545 : a9 8b __ LDA #$8b
1547 : 8d fd 9f STA $9ffd ; (bi + 0)
; 279, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
154a : a9 15 __ LDA #$15
154c : 8d fe 9f STA $9ffe ; (bi + 1)
; 280, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
154f : a9 b2 __ LDA #$b2
1551 : 8d ff 9f STA $9fff ; (bi + 2)
; 285, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1554 : a9 16 __ LDA #$16
1556 : 85 47 __ STA T4 + 0 
.l5:
; 284, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1558 : a5 48 __ LDA T5 + 0 
155a : 29 3f __ AND #$3f
155c : 85 1b __ STA ACCU + 0 
155e : ad fd 9f LDA $9ffd ; (bi + 0)
1561 : 29 3f __ AND #$3f
1563 : 85 4a __ STA T7 + 0 
1565 : c5 1b __ CMP ACCU + 0 
1567 : d0 04 __ BNE $156d ; (test_add_char_cross.s7 + 0)
.s6:
1569 : a9 01 __ LDA #$01
156b : d0 02 __ BNE $156f ; (test_add_char_cross.s8 + 0)
.s7:
156d : a9 00 __ LDA #$00
.s8:
156f : 85 0f __ STA P2 
1571 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 285, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1574 : a5 47 __ LDA T4 + 0 
1576 : 29 3f __ AND #$3f
1578 : 85 1b __ STA ACCU + 0 
157a : ad fe 9f LDA $9ffe ; (bi + 1)
157d : 29 0f __ AND #$0f
157f : 85 43 __ STA T1 + 0 
1581 : ad fd 9f LDA $9ffd ; (bi + 0)
1584 : 0a __ __ ASL
1585 : 26 43 __ ROL T1 + 0 
1587 : 0a __ __ ASL
1588 : a5 43 __ LDA T1 + 0 
158a : 2a __ __ ROL
158b : c5 1b __ CMP ACCU + 0 
158d : d0 04 __ BNE $1593 ; (test_add_char_cross.s10 + 0)
.s9:
158f : a9 01 __ LDA #$01
1591 : d0 02 __ BNE $1595 ; (test_add_char_cross.s11 + 0)
.s10:
1593 : a9 00 __ LDA #$00
.s11:
1595 : 85 0f __ STA P2 
1597 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 286, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
159a : 38 __ __ SEC
159b : a9 21 __ LDA #$21
159d : e5 46 __ SBC T3 + 0 
159f : 29 3f __ AND #$3f
15a1 : 85 1b __ STA ACCU + 0 
15a3 : ad ff 9f LDA $9fff ; (bi + 2)
15a6 : 29 03 __ AND #$03
15a8 : 4a __ __ LSR
15a9 : 85 44 __ STA T1 + 1 
15ab : ad fe 9f LDA $9ffe ; (bi + 1)
15ae : 6a __ __ ROR
15af : 46 44 __ LSR T1 + 1 
15b1 : 6a __ __ ROR
15b2 : 4a __ __ LSR
15b3 : 4a __ __ LSR
15b4 : c5 1b __ CMP ACCU + 0 
15b6 : d0 04 __ BNE $15bc ; (test_add_char_cross.s13 + 0)
.s12:
15b8 : a9 01 __ LDA #$01
15ba : d0 02 __ BNE $15be ; (test_add_char_cross.s14 + 0)
.s13:
15bc : a9 00 __ LDA #$00
.s14:
15be : 85 0f __ STA P2 
15c0 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 287, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
15c3 : 38 __ __ SEC
15c4 : a9 2c __ LDA #$2c
15c6 : e5 45 __ SBC T2 + 0 
15c8 : 29 3f __ AND #$3f
15ca : 85 1b __ STA ACCU + 0 
15cc : ad ff 9f LDA $9fff ; (bi + 2)
15cf : 4a __ __ LSR
15d0 : 4a __ __ LSR
15d1 : c5 1b __ CMP ACCU + 0 
15d3 : d0 04 __ BNE $15d9 ; (test_add_char_cross.s16 + 0)
.s15:
15d5 : a9 01 __ LDA #$01
15d7 : d0 02 __ BNE $15db ; (test_add_char_cross.s17 + 0)
.s16:
15d9 : a9 00 __ LDA #$00
.s17:
15db : 85 0f __ STA P2 
15dd : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 288, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
15e0 : 18 __ __ CLC
15e1 : a5 4a __ LDA T7 + 0 
15e3 : 69 05 __ ADC #$05
15e5 : 29 3f __ AND #$3f
15e7 : 4d fd 9f EOR $9ffd ; (bi + 0)
15ea : 29 3f __ AND #$3f
15ec : 4d fd 9f EOR $9ffd ; (bi + 0)
15ef : 8d fd 9f STA $9ffd ; (bi + 0)
; 289, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
15f2 : aa __ __ TAX
15f3 : 29 c0 __ AND #$c0
15f5 : 18 __ __ CLC
15f6 : 69 40 __ ADC #$40
15f8 : 29 c0 __ AND #$c0
15fa : 85 43 __ STA T1 + 0 
15fc : ad fe 9f LDA $9ffe ; (bi + 1)
15ff : 29 0f __ AND #$0f
1601 : 69 05 __ ADC #$05
1603 : 29 0f __ AND #$0f
1605 : 85 44 __ STA T1 + 1 
1607 : 8a __ __ TXA
1608 : 29 3f __ AND #$3f
160a : 05 43 __ ORA T1 + 0 
160c : 8d fd 9f STA $9ffd ; (bi + 0)
160f : ad fe 9f LDA $9ffe ; (bi + 1)
1612 : 29 f0 __ AND #$f0
1614 : 05 44 __ ORA T1 + 1 
1616 : 8d fe 9f STA $9ffe ; (bi + 1)
; 290, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1619 : ad ff 9f LDA $9fff ; (bi + 2)
161c : 29 03 __ AND #$03
161e : 4a __ __ LSR
161f : 85 44 __ STA T1 + 1 
1621 : ad fe 9f LDA $9ffe ; (bi + 1)
1624 : 6a __ __ ROR
1625 : 46 44 __ LSR T1 + 1 
1627 : 6a __ __ ROR
1628 : 4a __ __ LSR
1629 : 4a __ __ LSR
162a : 38 __ __ SEC
162b : e9 04 __ SBC #$04
162d : 0a __ __ ASL
162e : 2a __ __ ROL
162f : 2a __ __ ROL
1630 : 2a __ __ ROL
1631 : aa __ __ TAX
1632 : 29 01 __ AND #$01
1634 : 2a __ __ ROL
1635 : 85 44 __ STA T1 + 1 
1637 : 8a __ __ TXA
1638 : 29 f0 __ AND #$f0
163a : 85 43 __ STA T1 + 0 
163c : ad fe 9f LDA $9ffe ; (bi + 1)
163f : 29 0f __ AND #$0f
1641 : 05 43 __ ORA T1 + 0 
1643 : 8d fe 9f STA $9ffe ; (bi + 1)
1646 : ad ff 9f LDA $9fff ; (bi + 2)
1649 : 29 fc __ AND #$fc
164b : 05 44 __ ORA T1 + 1 
164d : 8d ff 9f STA $9fff ; (bi + 2)
; 291, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1650 : e9 2b __ SBC #$2b
1652 : 29 fc __ AND #$fc
1654 : 85 43 __ STA T1 + 0 
1656 : ad ff 9f LDA $9fff ; (bi + 2)
1659 : 29 03 __ AND #$03
165b : 05 43 __ ORA T1 + 0 
165d : 8d ff 9f STA $9fff ; (bi + 2)
; 282, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1660 : 18 __ __ CLC
1661 : a5 45 __ LDA T2 + 0 
1663 : 69 0b __ ADC #$0b
1665 : 85 45 __ STA T2 + 0 
1667 : 18 __ __ CLC
1668 : a5 46 __ LDA T3 + 0 
166a : 69 04 __ ADC #$04
166c : 85 46 __ STA T3 + 0 
166e : 18 __ __ CLC
166f : a5 47 __ LDA T4 + 0 
1671 : 69 15 __ ADC #$15
1673 : 85 47 __ STA T4 + 0 
1675 : 18 __ __ CLC
1676 : a5 48 __ LDA T5 + 0 
1678 : 69 05 __ ADC #$05
167a : 85 48 __ STA T5 + 0 
167c : a5 49 __ LDA T5 + 1 
167e : 69 00 __ ADC #$00
1680 : 85 49 __ STA T5 + 1 
1682 : c9 01 __ CMP #$01
1684 : f0 03 __ BEQ $1689 ; (test_add_char_cross.s18 + 0)
1686 : 4c 58 15 JMP $1558 ; (test_add_char_cross.l5 + 0)
.s18:
1689 : a5 48 __ LDA T5 + 0 
168b : c9 4b __ CMP #$4b
168d : d0 f7 __ BNE $1686 ; (test_add_char_cross.s17 + 171)
.s3:
; 293, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
168f : 60 __ __ RTS
--------------------------------------------------------------------
test_add_word_fit: ; test_add_word_fit()->void
.s4:
; 301, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1690 : a9 57 __ LDA #$57
1692 : 8d fe 9f STA $9ffe ; (ci + 0)
; 305, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1695 : a9 00 __ LDA #$00
1697 : 85 43 __ STA T2 + 0 
1699 : a9 01 __ LDA #$01
169b : 85 44 __ STA T3 + 0 
169d : a9 07 __ LDA #$07
.l5:
169f : 85 45 __ STA T4 + 0 
16a1 : ad fe 9f LDA $9ffe ; (ci + 0)
16a4 : 85 47 __ STA T6 + 0 
16a6 : 29 0f __ AND #$0f
16a8 : 85 46 __ STA T5 + 0 
16aa : a5 45 __ LDA T4 + 0 
16ac : 29 0f __ AND #$0f
16ae : c5 46 __ CMP T5 + 0 
16b0 : d0 04 __ BNE $16b6 ; (test_add_word_fit.s7 + 0)
.s6:
16b2 : a9 01 __ LDA #$01
16b4 : d0 02 __ BNE $16b8 ; (test_add_word_fit.s8 + 0)
.s7:
16b6 : a9 00 __ LDA #$00
.s8:
16b8 : 85 0f __ STA P2 
16ba : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 306, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
16bd : a5 47 __ LDA T6 + 0 
16bf : 29 1f __ AND #$1f
16c1 : 4a __ __ LSR
16c2 : 4a __ __ LSR
16c3 : 4a __ __ LSR
16c4 : 4a __ __ LSR
16c5 : 85 1b __ STA ACCU + 0 
16c7 : a5 44 __ LDA T3 + 0 
16c9 : 29 01 __ AND #$01
16cb : c5 1b __ CMP ACCU + 0 
16cd : d0 04 __ BNE $16d3 ; (test_add_word_fit.s10 + 0)
.s9:
16cf : a9 01 __ LDA #$01
16d1 : d0 02 __ BNE $16d5 ; (test_add_word_fit.s11 + 0)
.s10:
16d3 : a9 00 __ LDA #$00
.s11:
16d5 : 85 0f __ STA P2 
16d7 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 307, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
16da : a5 47 __ LDA T6 + 0 
16dc : 4a __ __ LSR
16dd : 4a __ __ LSR
16de : 4a __ __ LSR
16df : 4a __ __ LSR
16e0 : 4a __ __ LSR
16e1 : 85 1b __ STA ACCU + 0 
16e3 : 38 __ __ SEC
16e4 : a9 02 __ LDA #$02
16e6 : e5 43 __ SBC T2 + 0 
16e8 : 29 07 __ AND #$07
16ea : c5 1b __ CMP ACCU + 0 
16ec : d0 04 __ BNE $16f2 ; (test_add_word_fit.s13 + 0)
.s12:
16ee : a9 01 __ LDA #$01
16f0 : d0 02 __ BNE $16f4 ; (test_add_word_fit.s14 + 0)
.s13:
16f2 : a9 00 __ LDA #$00
.s14:
16f4 : 85 0f __ STA P2 
16f6 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 310, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
16f9 : 18 __ __ CLC
16fa : a5 46 __ LDA T5 + 0 
16fc : 69 05 __ ADC #$05
16fe : 29 0f __ AND #$0f
1700 : 45 47 __ EOR T6 + 0 
1702 : 29 0f __ AND #$0f
1704 : 45 47 __ EOR T6 + 0 
1706 : 85 1b __ STA ACCU + 0 
1708 : 29 1f __ AND #$1f
170a : 4a __ __ LSR
170b : 4a __ __ LSR
170c : 4a __ __ LSR
170d : 4a __ __ LSR
170e : 18 __ __ CLC
170f : 69 15 __ ADC #$15
1711 : 29 01 __ AND #$01
1713 : 0a __ __ ASL
1714 : 0a __ __ ASL
1715 : 0a __ __ ASL
1716 : 0a __ __ ASL
1717 : 45 1b __ EOR ACCU + 0 
1719 : 29 10 __ AND #$10
171b : 45 1b __ EOR ACCU + 0 
171d : 85 1b __ STA ACCU + 0 
171f : 4a __ __ LSR
1720 : 4a __ __ LSR
1721 : 4a __ __ LSR
1722 : 4a __ __ LSR
1723 : 4a __ __ LSR
1724 : 38 __ __ SEC
1725 : e9 04 __ SBC #$04
1727 : 29 07 __ AND #$07
1729 : 0a __ __ ASL
172a : 0a __ __ ASL
172b : 0a __ __ ASL
172c : 0a __ __ ASL
172d : 0a __ __ ASL
172e : 45 1b __ EOR ACCU + 0 
1730 : 29 e0 __ AND #$e0
1732 : 45 1b __ EOR ACCU + 0 
1734 : 8d fe 9f STA $9ffe ; (ci + 0)
; 303, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1737 : a5 43 __ LDA T2 + 0 
1739 : 69 04 __ ADC #$04
173b : 85 43 __ STA T2 + 0 
173d : 18 __ __ CLC
173e : a5 44 __ LDA T3 + 0 
1740 : 69 15 __ ADC #$15
1742 : 85 44 __ STA T3 + 0 
1744 : 18 __ __ CLC
1745 : a5 45 __ LDA T4 + 0 
1747 : 69 05 __ ADC #$05
1749 : c9 57 __ CMP #$57
174b : f0 03 __ BEQ $1750 ; (test_add_word_fit.s3 + 0)
174d : 4c 9f 16 JMP $169f ; (test_add_word_fit.l5 + 0)
.s3:
; 312, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1750 : 60 __ __ RTS
--------------------------------------------------------------------
test_add_word_cross: ; test_add_word_cross()->void
.s4:
; 316, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1751 : a9 00 __ LDA #$00
1753 : a2 04 __ LDX #$04
.l24:
1755 : 9d fa 9f STA $9ffa,x ; (di + 0)
1758 : ca __ __ DEX
1759 : 10 fa __ BPL $1755 ; (test_add_word_cross.l24 + 0)
.s5:
; 318, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
175b : 8d fb 9f STA $9ffb ; (di + 1)
; 319, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
175e : ad fc 9f LDA $9ffc ; (di + 2)
1761 : 29 f0 __ AND #$f0
1763 : 09 03 __ ORA #$03
1765 : 8d fc 9f STA $9ffc ; (di + 2)
; 318, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1768 : a9 6f __ LDA #$6f
176a : 85 4b __ STA T5 + 0 
176c : 8d fa 9f STA $9ffa ; (di + 0)
; 321, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
176f : 8d fe 9f STA $9ffe ; (di + 4)
; 319, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1772 : a9 78 __ LDA #$78
1774 : 8d fb 9f STA $9ffb ; (di + 1)
; 320, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1777 : a9 d3 __ LDA #$d3
1779 : 8d fc 9f STA $9ffc ; (di + 2)
; 321, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
177c : a9 14 __ LDA #$14
177e : 8d fd 9f STA $9ffd ; (di + 3)
; 326, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1781 : a9 00 __ LDA #$00
1783 : 85 45 __ STA T2 + 0 
1785 : 85 46 __ STA T2 + 1 
1787 : 85 47 __ STA T3 + 0 
1789 : 85 48 __ STA T3 + 1 
178b : 85 4a __ STA T4 + 1 
178d : 85 4c __ STA T5 + 1 
178f : a9 de __ LDA #$de
1791 : 85 49 __ STA T4 + 0 
.l6:
; 325, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1793 : ad fa 9f LDA $9ffa ; (di + 0)
1796 : 85 4d __ STA T7 + 0 
1798 : ad fb 9f LDA $9ffb ; (di + 1)
179b : 29 03 __ AND #$03
179d : 85 4e __ STA T7 + 1 
179f : a5 4c __ LDA T5 + 1 
17a1 : 29 03 __ AND #$03
17a3 : c5 4e __ CMP T7 + 1 
17a5 : d0 0a __ BNE $17b1 ; (test_add_word_cross.s8 + 0)
.s10:
17a7 : a5 4d __ LDA T7 + 0 
17a9 : c5 4b __ CMP T5 + 0 
17ab : d0 04 __ BNE $17b1 ; (test_add_word_cross.s8 + 0)
.s7:
17ad : a9 01 __ LDA #$01
17af : d0 02 __ BNE $17b3 ; (test_add_word_cross.s9 + 0)
.s8:
17b1 : a9 00 __ LDA #$00
.s9:
17b3 : 85 0f __ STA P2 
17b5 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 326, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
17b8 : ad fb 9f LDA $9ffb ; (di + 1)
17bb : 85 1b __ STA ACCU + 0 
17bd : ad fc 9f LDA $9ffc ; (di + 2)
17c0 : 29 0f __ AND #$0f
17c2 : 4a __ __ LSR
17c3 : 66 1b __ ROR ACCU + 0 
17c5 : 4a __ __ LSR
17c6 : 66 1b __ ROR ACCU + 0 
17c8 : 85 1c __ STA ACCU + 1 
17ca : a5 4a __ LDA T4 + 1 
17cc : 29 03 __ AND #$03
17ce : c5 1c __ CMP ACCU + 1 
17d0 : d0 0a __ BNE $17dc ; (test_add_word_cross.s12 + 0)
.s14:
17d2 : a5 1b __ LDA ACCU + 0 
17d4 : c5 49 __ CMP T4 + 0 
17d6 : d0 04 __ BNE $17dc ; (test_add_word_cross.s12 + 0)
.s11:
17d8 : a9 01 __ LDA #$01
17da : d0 02 __ BNE $17de ; (test_add_word_cross.s13 + 0)
.s12:
17dc : a9 00 __ LDA #$00
.s13:
17de : 85 0f __ STA P2 
17e0 : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 327, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
17e3 : ad fc 9f LDA $9ffc ; (di + 2)
17e6 : 85 1b __ STA ACCU + 0 
17e8 : ad fd 9f LDA $9ffd ; (di + 3)
17eb : 29 3f __ AND #$3f
17ed : 4a __ __ LSR
17ee : 66 1b __ ROR ACCU + 0 
17f0 : 4a __ __ LSR
17f1 : 66 1b __ ROR ACCU + 0 
17f3 : 4a __ __ LSR
17f4 : 66 1b __ ROR ACCU + 0 
17f6 : 4a __ __ LSR
17f7 : 66 1b __ ROR ACCU + 0 
17f9 : 85 1c __ STA ACCU + 1 
17fb : 38 __ __ SEC
17fc : a9 4d __ LDA #$4d
17fe : e5 47 __ SBC T3 + 0 
1800 : 85 43 __ STA T1 + 0 
1802 : a9 01 __ LDA #$01
1804 : e5 48 __ SBC T3 + 1 
1806 : 29 03 __ AND #$03
1808 : c5 1c __ CMP ACCU + 1 
180a : d0 0a __ BNE $1816 ; (test_add_word_cross.s16 + 0)
.s18:
180c : a5 1b __ LDA ACCU + 0 
180e : c5 43 __ CMP T1 + 0 
1810 : d0 04 __ BNE $1816 ; (test_add_word_cross.s16 + 0)
.s15:
1812 : a9 01 __ LDA #$01
1814 : d0 02 __ BNE $1818 ; (test_add_word_cross.s17 + 0)
.s16:
1816 : a9 00 __ LDA #$00
.s17:
1818 : 85 0f __ STA P2 
181a : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 328, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
181d : ad fe 9f LDA $9ffe ; (di + 4)
1820 : 85 1b __ STA ACCU + 0 
1822 : ad fd 9f LDA $9ffd ; (di + 3)
1825 : 0a __ __ ASL
1826 : 26 1b __ ROL ACCU + 0 
1828 : 2a __ __ ROL
1829 : 26 1b __ ROL ACCU + 0 
182b : 29 01 __ AND #$01
182d : 2a __ __ ROL
182e : 85 1c __ STA ACCU + 1 
1830 : 38 __ __ SEC
1831 : a9 bc __ LDA #$bc
1833 : e5 45 __ SBC T2 + 0 
1835 : 85 43 __ STA T1 + 0 
1837 : a9 01 __ LDA #$01
1839 : e5 46 __ SBC T2 + 1 
183b : 29 03 __ AND #$03
183d : c5 1c __ CMP ACCU + 1 
183f : d0 0a __ BNE $184b ; (test_add_word_cross.s20 + 0)
.s22:
1841 : a5 1b __ LDA ACCU + 0 
1843 : c5 43 __ CMP T1 + 0 
1845 : d0 04 __ BNE $184b ; (test_add_word_cross.s20 + 0)
.s19:
1847 : a9 01 __ LDA #$01
1849 : d0 02 __ BNE $184d ; (test_add_word_cross.s21 + 0)
.s20:
184b : a9 00 __ LDA #$00
.s21:
184d : 85 0f __ STA P2 
184f : 20 27 09 JSR $0927 ; (assert.s4 + 0)
; 329, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1852 : 18 __ __ CLC
1853 : a5 4d __ LDA T7 + 0 
1855 : 69 05 __ ADC #$05
1857 : 8d fa 9f STA $9ffa ; (di + 0)
185a : a5 4e __ LDA T7 + 1 
185c : 69 00 __ ADC #$00
185e : 29 03 __ AND #$03
1860 : 4d fb 9f EOR $9ffb ; (di + 1)
1863 : 29 03 __ AND #$03
1865 : 4d fb 9f EOR $9ffb ; (di + 1)
1868 : 8d fb 9f STA $9ffb ; (di + 1)
; 330, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
186b : 18 __ __ CLC
186c : 69 54 __ ADC #$54
186e : 29 fc __ AND #$fc
1870 : 85 43 __ STA T1 + 0 
1872 : ad fc 9f LDA $9ffc ; (di + 2)
1875 : 69 00 __ ADC #$00
1877 : 29 0f __ AND #$0f
1879 : 85 44 __ STA T1 + 1 
187b : ad fb 9f LDA $9ffb ; (di + 1)
187e : 29 03 __ AND #$03
1880 : 05 43 __ ORA T1 + 0 
1882 : 8d fb 9f STA $9ffb ; (di + 1)
1885 : ad fc 9f LDA $9ffc ; (di + 2)
1888 : 29 f0 __ AND #$f0
188a : 05 44 __ ORA T1 + 1 
188c : 8d fc 9f STA $9ffc ; (di + 2)
; 331, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
188f : 38 __ __ SEC
1890 : e9 40 __ SBC #$40
1892 : 29 f0 __ AND #$f0
1894 : 85 43 __ STA T1 + 0 
1896 : ad fd 9f LDA $9ffd ; (di + 3)
1899 : e9 00 __ SBC #$00
189b : 29 3f __ AND #$3f
189d : 85 44 __ STA T1 + 1 
189f : ad fc 9f LDA $9ffc ; (di + 2)
18a2 : 29 0f __ AND #$0f
18a4 : 05 43 __ ORA T1 + 0 
18a6 : 8d fc 9f STA $9ffc ; (di + 2)
18a9 : ad fd 9f LDA $9ffd ; (di + 3)
18ac : 29 c0 __ AND #$c0
18ae : 05 44 __ ORA T1 + 1 
18b0 : 8d fd 9f STA $9ffd ; (di + 3)
; 332, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
18b3 : 38 __ __ SEC
18b4 : e9 c0 __ SBC #$c0
18b6 : 29 c0 __ AND #$c0
18b8 : 85 43 __ STA T1 + 0 
18ba : ad fe 9f LDA $9ffe ; (di + 4)
18bd : e9 02 __ SBC #$02
18bf : 8d fe 9f STA $9ffe ; (di + 4)
18c2 : ad fd 9f LDA $9ffd ; (di + 3)
18c5 : 29 3f __ AND #$3f
18c7 : 05 43 __ ORA T1 + 0 
18c9 : 8d fd 9f STA $9ffd ; (di + 3)
; 328, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
18cc : 18 __ __ CLC
18cd : a5 45 __ LDA T2 + 0 
18cf : 69 0b __ ADC #$0b
18d1 : 85 45 __ STA T2 + 0 
18d3 : 90 03 __ BCC $18d8 ; (test_add_word_cross.s26 + 0)
.s25:
; 327, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
18d5 : e6 46 __ INC T2 + 1 
18d7 : 18 __ __ CLC
.s26:
18d8 : a5 47 __ LDA T3 + 0 
18da : 69 04 __ ADC #$04
18dc : 85 47 __ STA T3 + 0 
18de : 90 03 __ BCC $18e3 ; (test_add_word_cross.s28 + 0)
.s27:
; 326, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
18e0 : e6 48 __ INC T3 + 1 
18e2 : 18 __ __ CLC
.s28:
18e3 : a5 49 __ LDA T4 + 0 
18e5 : 69 15 __ ADC #$15
18e7 : 85 49 __ STA T4 + 0 
18e9 : 90 03 __ BCC $18ee ; (test_add_word_cross.s30 + 0)
.s29:
; 325, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
18eb : e6 4a __ INC T4 + 1 
18ed : 18 __ __ CLC
.s30:
; 323, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
18ee : a5 4b __ LDA T5 + 0 
18f0 : 69 05 __ ADC #$05
18f2 : 85 4b __ STA T5 + 0 
18f4 : a5 4c __ LDA T5 + 1 
18f6 : 69 00 __ ADC #$00
18f8 : 85 4c __ STA T5 + 1 
18fa : c9 14 __ CMP #$14
18fc : f0 03 __ BEQ $1901 ; (test_add_word_cross.s23 + 0)
18fe : 4c 93 17 JMP $1793 ; (test_add_word_cross.l6 + 0)
.s23:
1901 : a5 4b __ LDA T5 + 0 
1903 : c9 6f __ CMP #$6f
1905 : d0 f7 __ BNE $18fe ; (test_add_word_cross.s30 + 16)
.s3:
; 334, "/home/winston/Code/oscar64/oscar64/autotest/bitfields/bitfields.cpp"
1907 : 60 __ __ RTS
--------------------------------------------------------------------
mul32by8: ; mul32by8
1908 : a0 00 __ LDY #$00
190a : 84 07 __ STY WORK + 4 
190c : 84 08 __ STY WORK + 5 
190e : 84 09 __ STY WORK + 6 
1910 : 4a __ __ LSR
1911 : b0 0d __ BCS $1920 ; (mul32by8 + 24)
1913 : f0 26 __ BEQ $193b ; (mul32by8 + 51)
1915 : 06 1b __ ASL ACCU + 0 
1917 : 26 1c __ ROL ACCU + 1 
1919 : 26 1d __ ROL ACCU + 2 
191b : 26 1e __ ROL ACCU + 3 
191d : 4a __ __ LSR
191e : 90 f5 __ BCC $1915 ; (mul32by8 + 13)
1920 : aa __ __ TAX
1921 : 18 __ __ CLC
1922 : a5 07 __ LDA WORK + 4 
1924 : 65 1b __ ADC ACCU + 0 
1926 : 85 07 __ STA WORK + 4 
1928 : a5 08 __ LDA WORK + 5 
192a : 65 1c __ ADC ACCU + 1 
192c : 85 08 __ STA WORK + 5 
192e : a5 09 __ LDA WORK + 6 
1930 : 65 1d __ ADC ACCU + 2 
1932 : 85 09 __ STA WORK + 6 
1934 : 98 __ __ TYA
1935 : 65 1e __ ADC ACCU + 3 
1937 : a8 __ __ TAY
1938 : 8a __ __ TXA
1939 : d0 da __ BNE $1915 ; (mul32by8 + 13)
193b : 84 0a __ STY WORK + 7 
193d : 60 __ __ RTS
--------------------------------------------------------------------
spentry:
193e : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
a:
193f : __ __ __ BYT 57                                              : W
--------------------------------------------------------------------
b:
1940 : __ __ __ BYT 8b 15 b2                                        : ...
--------------------------------------------------------------------
c:
1943 : __ __ __ BYT 57                                              : W
--------------------------------------------------------------------
d:
1944 : __ __ __ BYT 6f 78 d3 14 6f                                  : ox..o
--------------------------------------------------------------------
e:
1949 : __ __ __ BYT 57                                              : W
--------------------------------------------------------------------
f:
194a : __ __ __ BYT 07 b2 e1 40 36 15 16 c5 81 6c                   : ...@6....l
--------------------------------------------------------------------
g:
1954 : __ __ __ BYT be                                              : .
--------------------------------------------------------------------
h:
1955 : __ __ __ BYT 6f 88 3c 2b 6f                                  : o.<+o
