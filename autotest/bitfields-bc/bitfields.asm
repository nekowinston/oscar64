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
080e : 8e fa 1f STX $1ffa ; (spentry + 0)
0811 : a2 20 __ LDX #$20
0813 : a0 16 __ LDY #$16
0815 : a9 00 __ LDA #$00
0817 : 85 19 __ STA IP + 0 
0819 : 86 1a __ STX IP + 1 
081b : e0 20 __ CPX #$20
081d : f0 0b __ BEQ $082a ; (startup + 41)
081f : 91 19 __ STA (IP + 0),y 
0821 : c8 __ __ INY
0822 : d0 fb __ BNE $081f ; (startup + 30)
0824 : e8 __ __ INX
0825 : d0 f2 __ BNE $0819 ; (startup + 24)
0827 : 91 19 __ STA (IP + 0),y 
0829 : c8 __ __ INY
082a : c0 16 __ CPY #$16
082c : d0 f9 __ BNE $0827 ; (startup + 38)
082e : a9 00 __ LDA #$00
0830 : a2 f7 __ LDX #$f7
0832 : d0 03 __ BNE $0837 ; (startup + 54)
0834 : 95 00 __ STA $00,x 
0836 : e8 __ __ INX
0837 : e0 f7 __ CPX #$f7
0839 : d0 f9 __ BNE $0834 ; (startup + 51)
083b : a9 fe __ LDA #$fe
083d : 85 23 __ STA SP + 0 
083f : a9 9f __ LDA #$9f
0841 : 85 24 __ STA SP + 1 
0843 : a9 69 __ LDA #$69
0845 : 85 19 __ STA IP + 0 
0847 : a9 08 __ LDA #$08
0849 : 85 1a __ STA IP + 1 
084b : a0 00 __ LDY #$00
084d : f0 03 __ BEQ $0852 ; (startup + 81)
084f : a4 02 __ LDY $02 
0851 : c8 __ __ INY
0852 : b1 19 __ LDA (IP + 0),y 
0854 : 8d 59 08 STA $0859 ; (startup + 88)
0857 : c8 __ __ INY
0858 : 6c 00 09 JMP ($0900)
085b : 98 __ __ TYA
085c : a0 00 __ LDY #$00
085e : 18 __ __ CLC
085f : 65 19 __ ADC IP + 0 
0861 : 85 19 __ STA IP + 0 
0863 : 90 ed __ BCC $0852 ; (startup + 81)
0865 : e6 1a __ INC IP + 1 
0867 : d0 e9 __ BNE $0852 ; (startup + 81)
0869 : f2 __ __ INV
086a : 00 __ __ BRK
086b : 0a __ __ ASL
086c : 02 __ __ INV
086d : a9 4c __ LDA #$4c
086f : 85 54 __ STA $54 
0871 : a9 00 __ LDA #$00
0873 : 85 13 __ STA P6 
0875 : a9 19 __ LDA #$19
0877 : 85 16 __ STA P9 
0879 : 60 __ __ RTS
--------------------------------------------------------------------
main:
0a00:	ENTER	0, 2
0a04:	PUSH	#$0002
0a07:	CALL	test_char_fit + 0
0a0a:	CALL	test_char_cross + 0
0a0d:	CALL	test_word_fit + 0
0a10:	CALL	test_word_cross + 0
0a13:	CALL	test_dword_fit + 0
0a16:	CALL	test_dword_cross + 0
0a19:	CALL	test_char_signed + 0
0a1c:	CALL	test_word_signed + 0
0a1f:	CALL	test_inc_char_fit + 0
0a22:	CALL	test_inc_char_cross + 0
0a25:	CALL	test_add_char_cross + 0
0a28:	CALL	test_add_word_fit + 0
0a2b:	CALL	test_add_word_cross + 0
0a2e:	MOV	ACCU, #0
0a31:	POP	#$0002
0a34:	RETURN	0, 2
--------------------------------------------------------------------
test_char_fit:
0a38:	ENTER	0, 2
0a3c:	PUSH	#$0002
0a3f:	MOVB	T0, a + 0
0a43:	ANDB	T0, #$000F
0a46:	MOVB	ACCU, T0
0a48:	CMPUB	ACCU, #$0007
0a4a:	NOT	ACCU
0a4b:	ANDB	ACCU, #$0001
0a4e:	MOVB	P2, ACCU
0a50:	CALL	assert + 0
0a53:	MOVB	T0, a + 0
0a57:	ANDB	T0, #$0010
0a5a:	MOVB	ACCU, T0
0a5c:	CMPUB	ACCU, #$0010
0a5e:	NOT	ACCU
0a5f:	ANDB	ACCU, #$0001
0a62:	MOVB	P2, ACCU
0a64:	CALL	assert + 0
0a67:	MOVB	T0, a + 0
0a6b:	ANDB	T0, #$00E0
0a6e:	MOVB	ACCU, T0
0a70:	CMPUB	ACCU, #$0040
0a72:	NOT	ACCU
0a73:	ANDB	ACCU, #$0001
0a76:	MOVB	P2, ACCU
0a78:	CALL	assert + 0
0a7b:	MOVB	P2, #1
0a7e:	CALL	assert + 0
0a81:	MOV	T1, #0
0a84:	MOVB	T0, a + 0
0a88:	ANDB	T0, #$00F0
0a8b:	MOVB	ACCU, T0
0a8d:	OR	ACCU, T1
0a8f:	MOVB	T0, ACCU
0a91:	ANDB	T0, #$000F
0a94:	ORB	T0, #$0060
0a97:	MOVB	a + 0, T0
0a9b:	ANDB	T0, #$000F
0a9e:	AND	T0, #$00FF
0aa2:	MOV	ACCU, T1
0aa4:	CMPU	ACCU, T0
0aa6:	NOT	ACCU
0aa7:	ANDB	ACCU, #$0001
0aaa:	MOVB	P2, ACCU
0aac:	CALL	assert + 0
0aaf:	MOVB	T0, a + 0
0ab3:	ANDB	T0, #$0010
0ab6:	MOVB	ACCU, T0
0ab8:	CMPUB	ACCU, #$0000
0aba:	NOT	ACCU
0abb:	ANDB	ACCU, #$0001
0abe:	MOVB	P2, ACCU
0ac0:	CALL	assert + 0
0ac3:	MOVB	T0, a + 0
0ac7:	ANDB	T0, #$00E0
0aca:	MOVB	ACCU, T0
0acc:	CMPUB	ACCU, #$0060
0ace:	NOT	ACCU
0acf:	ANDB	ACCU, #$0001
0ad2:	MOVB	P2, ACCU
0ad4:	CALL	assert + 0
0ad7:	ADD	T1, #$0001
0adb:	MOVB	ACCU, T1
0add:	CMPUB	ACCU, #$0010
0adf:	BGT	$0A84
0ae1:	POP	#$0002
0ae4:	RETURN	0, 2
--------------------------------------------------------------------
assert:
0ae8:	ENTER	0, 2
0aec:	PUSH	#$0002
0aef:	MOVB	ACCU, P2
0af1:	BNE	$0AF9
0af3:	MOV	P0, #-1
0af6:	CALL	exit + 0
0af9:	POP	#$0002
0afc:	RETURN	0, 2
--------------------------------------------------------------------
exit:
0b00:	ENTER	0, 2
0b04:	JSR	$0b0b
0b07:	RETURN	0, 2
--------------------------------------------------------------------
0b0b : a5 0d __ LDA P0 
0b0d : 85 1b __ STA ACCU + 0 
0b0f : a5 0e __ LDA P1 
0b11 : 85 1c __ STA ACCU + 1 
0b13 : ae fa 1f LDX $1ffa ; (spentry + 0)
0b16 : 9a __ __ TXS
0b17 : a9 4c __ LDA #$4c
0b19 : 85 54 __ STA $54 
0b1b : a9 00 __ LDA #$00
0b1d : 85 13 __ STA P6 
0b1f : 60 __ __ RTS
--------------------------------------------------------------------
test_char_cross:
0b20:	ENTER	2, 4
0b24:	PUSH	#$0002
0b27:	MOVB	T0, b + 0
0b2b:	ANDB	T0, #$003F
0b2e:	MOVB	ACCU, T0
0b30:	CMPUB	ACCU, #$000B
0b32:	NOT	ACCU
0b33:	ANDB	ACCU, #$0001
0b36:	MOVB	P2, ACCU
0b38:	CALL	assert + 0
0b3b:	MOV	T0, b + 0
0b3f:	AND	T0, #$0FC0
0b43:	MOVB	ACCU, T0
0b45:	CMPUB	ACCU, #$0080
0b47:	NOT	ACCU
0b48:	ANDB	ACCU, #$0001
0b4b:	MOVB	P2, ACCU
0b4d:	CALL	assert + 0
0b50:	MOV	T0, b + 1
0b54:	AND	T0, #$03F0
0b58:	MOVB	ACCU, T0
0b5a:	CMPUB	ACCU, #$0010
0b5c:	NOT	ACCU
0b5d:	ANDB	ACCU, #$0001
0b60:	MOVB	P2, ACCU
0b62:	CALL	assert + 0
0b65:	MOVB	T0, b + 2
0b69:	ANDB	T0, #$00FC
0b6c:	MOVB	ACCU, T0
0b6e:	CMPUB	ACCU, #$00B0
0b70:	NOT	ACCU
0b71:	ANDB	ACCU, #$0001
0b74:	MOVB	P2, ACCU
0b76:	CALL	assert + 0
0b79:	MOVB	P2, #1
0b7c:	CALL	assert + 0
0b7f:	MOV	T2, #0
0b82:	MOV	T3, #0
0b85:	MOV	T4, #0
0b88:	MOV	T5, #0
0b8b:	MOV	T6, #0
0b8e:	MOV	T7, #0
0b91:	MOVB	T8, #0
0b94:	NOP
0b95:	MOVB	T0, b + 0
0b99:	ANDB	T0, #$00C0
0b9c:	MOVB	ACCU, T0
0b9e:	OR	ACCU, T6
0ba0:	MOVB	b + 0, ACCU
0ba4:	MOV	ACCU, T5
0ba6:	AND	ACCU, #$0FC0
0baa:	MOV	T0, ACCU
0bac:	MOV	T1, b + 0
0bb0:	AND	T1, #$F03F
0bb4:	MOV	ACCU, T1
0bb6:	OR	ACCU, T0
0bb8:	MOV	b + 0, ACCU
0bbc:	MOV	ACCU, T3
0bbe:	AND	ACCU, #$03F0
0bc2:	MOV	T0, ACCU
0bc4:	MOV	T1, b + 1
0bc8:	AND	T1, #$FC0F
0bcc:	MOV	ACCU, T1
0bce:	OR	ACCU, T0
0bd0:	MOV	b + 1, ACCU
0bd4:	MOVB	ACCU, T8
0bd6:	ANDB	ACCU, #$00FC
0bd9:	MOVB	T0, ACCU
0bdb:	MOVB	T1, b + 2
0bdf:	ANDB	T1, #$0003
0be2:	MOVB	ACCU, T1
0be4:	OR	ACCU, T0
0be6:	MOVB	b + 2, ACCU
0bea:	MOVB	T0, b + 0
0bee:	ANDB	T0, #$003F
0bf1:	AND	T0, #$00FF
0bf5:	MOV	ACCU, T6
0bf7:	CMPU	ACCU, T0
0bf9:	NOT	ACCU
0bfa:	ANDB	ACCU, #$0001
0bfd:	MOVB	P2, ACCU
0bff:	CALL	assert + 0
0c02:	MOV	ACCU, T4
0c04:	AND	ACCU, #$003F
0c08:	MOV	T0, ACCU
0c0a:	MOV	T1, b + 0
0c0e:	AND	T1, #$0FFF
0c12:	MOV	ACCU, T1
0c14:	SHRU	ACCU, #6
0c16:	MOV	T1, ACCU
0c18:	MOV	ACCU, T0
0c1a:	CMPU	ACCU, T1
0c1c:	NOT	ACCU
0c1d:	ANDB	ACCU, #$0001
0c20:	MOVB	P2, ACCU
0c22:	CALL	assert + 0
0c25:	MOV	ACCU, T2
0c27:	AND	ACCU, #$003F
0c2b:	MOV	T0, ACCU
0c2d:	MOV	T1, b + 1
0c31:	AND	T1, #$03FF
0c35:	MOV	ACCU, T1
0c37:	SHRU	ACCU, #4
0c39:	MOV	T1, ACCU
0c3b:	MOV	ACCU, T0
0c3d:	CMPU	ACCU, T1
0c3f:	NOT	ACCU
0c40:	ANDB	ACCU, #$0001
0c43:	MOVB	P2, ACCU
0c45:	CALL	assert + 0
0c48:	MOV	ACCU, T7
0c4a:	AND	ACCU, #$003F
0c4e:	MOV	T0, ACCU
0c50:	MOVUB	ACCU, b + 2
0c54:	SHRU	ACCU, #2
0c56:	MOVB	T1, ACCU
0c58:	AND	T1, #$00FF
0c5c:	MOV	ACCU, T0
0c5e:	CMPU	ACCU, T1
0c60:	NOT	ACCU
0c61:	ANDB	ACCU, #$0001
0c64:	MOVB	P2, ACCU
0c66:	CALL	assert + 0
0c69:	ADDB	T8, #$001C
0c6c:	ADD	T7, #$0007
0c70:	ADD	T2, #$0005
0c74:	ADD	T4, #$0003
0c78:	ADD	T5, #$00C0
0c7c:	ADD	T3, #$0050
0c80:	ADD	T6, #$0001
0c84:	MOVB	ACCU, T6
0c86:	NOP
0c87:	CMPUB	ACCU, #$0040
0c89:	BGTF	$0B95
0c8c:	POP	#$0002
0c8f:	RETURN	2, 4
--------------------------------------------------------------------
test_word_fit:
0c93:	ENTER	0, 2
0c97:	PUSH	#$0002
0c9a:	MOVB	T0, c + 0
0c9e:	ANDB	T0, #$000F
0ca1:	MOVB	ACCU, T0
0ca3:	CMPUB	ACCU, #$0007
0ca5:	NOT	ACCU
0ca6:	ANDB	ACCU, #$0001
0ca9:	MOVB	P2, ACCU
0cab:	CALL	assert + 0
0cae:	MOVB	T0, c + 0
0cb2:	ANDB	T0, #$0010
0cb5:	MOVB	ACCU, T0
0cb7:	CMPUB	ACCU, #$0010
0cb9:	NOT	ACCU
0cba:	ANDB	ACCU, #$0001
0cbd:	MOVB	P2, ACCU
0cbf:	CALL	assert + 0
0cc2:	MOVB	T0, c + 0
0cc6:	ANDB	T0, #$00E0
0cc9:	MOVB	ACCU, T0
0ccb:	CMPUB	ACCU, #$0040
0ccd:	NOT	ACCU
0cce:	ANDB	ACCU, #$0001
0cd1:	MOVB	P2, ACCU
0cd3:	CALL	assert + 0
0cd6:	MOVB	P2, #1
0cd9:	CALL	assert + 0
0cdc:	MOV	T1, #0
0cdf:	MOVB	T0, c + 0
0ce3:	ANDB	T0, #$00F0
0ce6:	MOVB	ACCU, T0
0ce8:	OR	ACCU, T1
0cea:	MOVB	T0, ACCU
0cec:	ANDB	T0, #$000F
0cef:	ORB	T0, #$0060
0cf2:	MOVB	c + 0, T0
0cf6:	ANDB	T0, #$000F
0cf9:	AND	T0, #$00FF
0cfd:	MOV	ACCU, T1
0cff:	CMPU	ACCU, T0
0d01:	NOT	ACCU
0d02:	ANDB	ACCU, #$0001
0d05:	MOVB	P2, ACCU
0d07:	CALL	assert + 0
0d0a:	MOVB	T0, c + 0
0d0e:	ANDB	T0, #$0010
0d11:	MOVB	ACCU, T0
0d13:	CMPUB	ACCU, #$0000
0d15:	NOT	ACCU
0d16:	ANDB	ACCU, #$0001
0d19:	MOVB	P2, ACCU
0d1b:	CALL	assert + 0
0d1e:	MOVB	T0, c + 0
0d22:	ANDB	T0, #$00E0
0d25:	MOVB	ACCU, T0
0d27:	CMPUB	ACCU, #$0060
0d29:	NOT	ACCU
0d2a:	ANDB	ACCU, #$0001
0d2d:	MOVB	P2, ACCU
0d2f:	CALL	assert + 0
0d32:	ADD	T1, #$0001
0d36:	MOVB	ACCU, T1
0d38:	CMPUB	ACCU, #$0010
0d3a:	BGT	$0CDF
0d3c:	POP	#$0002
0d3f:	RETURN	0, 2
--------------------------------------------------------------------
test_word_cross:
0d43:	ENTER	4, 6
0d47:	PUSH	#$0002
0d4a:	MOV	T0, d + 0
0d4e:	AND	T0, #$03FF
0d52:	MOV	ACCU, T0
0d54:	CMPU	ACCU, #$006F
0d57:	NOT	ACCU
0d58:	ANDB	ACCU, #$0001
0d5b:	MOVB	P2, ACCU
0d5d:	CALL	assert + 0
0d60:	MOV	T0, d + 1
0d64:	AND	T0, #$0FFC
0d68:	MOV	ACCU, T0
0d6a:	CMPU	ACCU, #$0378
0d6d:	NOT	ACCU
0d6e:	ANDB	ACCU, #$0001
0d71:	MOVB	P2, ACCU
0d73:	CALL	assert + 0
0d76:	MOV	T0, d + 2
0d7a:	AND	T0, #$3FF0
0d7e:	MOV	ACCU, T0
0d80:	CMPU	ACCU, #$14D0
0d83:	NOT	ACCU
0d84:	ANDB	ACCU, #$0001
0d87:	MOVB	P2, ACCU
0d89:	CALL	assert + 0
0d8c:	MOV	T0, d + 3
0d90:	ANDB	T0, #$00C0
0d93:	MOV	ACCU, T0
0d95:	CMPU	ACCU, #$6F00
0d98:	NOT	ACCU
0d99:	ANDB	ACCU, #$0001
0d9c:	MOVB	P2, ACCU
0d9e:	CALL	assert + 0
0da1:	MOVB	P2, #1
0da4:	CALL	assert + 0
0da7:	MOV	T2, #0
0daa:	MOV	T3, #0
0dad:	MOV	T4, #0
0db0:	MOV	T5, #0
0db3:	MOV	T6, #0
0db6:	MOV	T7, #0
0db9:	MOV	T8, #0
0dbc:	NOP
0dbd:	MOV	T0, d + 0
0dc1:	AND	T0, #$FC00
0dc5:	MOV	ACCU, T0
0dc7:	OR	ACCU, T2
0dc9:	MOV	d + 0, ACCU
0dcd:	MOV	ACCU, T8
0dcf:	AND	ACCU, #$0FFC
0dd3:	MOV	T0, ACCU
0dd5:	MOV	T1, d + 1
0dd9:	AND	T1, #$F003
0ddd:	MOV	ACCU, T1
0ddf:	OR	ACCU, T0
0de1:	MOV	d + 1, ACCU
0de5:	MOV	ACCU, T6
0de7:	AND	ACCU, #$3FF0
0deb:	MOV	T0, ACCU
0ded:	MOV	T1, d + 2
0df1:	AND	T1, #$C00F
0df5:	MOV	ACCU, T1
0df7:	OR	ACCU, T0
0df9:	MOV	d + 2, ACCU
0dfd:	MOV	ACCU, T4
0dff:	ANDB	ACCU, #$00C0
0e02:	MOV	T0, ACCU
0e04:	MOV	T1, d + 3
0e08:	AND	T1, #$003F
0e0c:	MOV	ACCU, T1
0e0e:	OR	ACCU, T0
0e10:	MOV	d + 3, ACCU
0e14:	MOV	T0, d + 0
0e18:	AND	T0, #$03FF
0e1c:	MOV	ACCU, T2
0e1e:	CMPU	ACCU, T0
0e20:	NOT	ACCU
0e21:	ANDB	ACCU, #$0001
0e24:	MOVB	P2, ACCU
0e26:	CALL	assert + 0
0e29:	MOV	T0, d + 1
0e2d:	AND	T0, #$0FFF
0e31:	MOV	ACCU, T0
0e33:	SHRU	ACCU, #2
0e35:	MOV	T0, ACCU
0e37:	MOV	ACCU, T7
0e39:	AND	ACCU, #$03FF
0e3d:	CMPU	ACCU, T0
0e3f:	NOT	ACCU
0e40:	ANDB	ACCU, #$0001
0e43:	MOVB	P2, ACCU
0e45:	CALL	assert + 0
0e48:	MOV	T0, d + 2
0e4c:	AND	T0, #$3FFF
0e50:	MOV	ACCU, T0
0e52:	SHRU	ACCU, #4
0e54:	MOV	T0, ACCU
0e56:	MOV	ACCU, T5
0e58:	AND	ACCU, #$03FF
0e5c:	CMPU	ACCU, T0
0e5e:	NOT	ACCU
0e5f:	ANDB	ACCU, #$0001
0e62:	MOVB	P2, ACCU
0e64:	CALL	assert + 0
0e67:	MOV	ACCU, d + 3
0e6b:	SHRU	ACCU, #6
0e6d:	MOV	T0, ACCU
0e6f:	MOV	ACCU, T3
0e71:	AND	ACCU, #$03FF
0e75:	CMPU	ACCU, T0
0e77:	NOT	ACCU
0e78:	ANDB	ACCU, #$0001
0e7b:	MOVB	P2, ACCU
0e7d:	CALL	assert + 0
0e80:	ADD	T4, #$01C0
0e84:	ADD	T3, #$0007
0e88:	ADD	T6, #$0050
0e8c:	ADD	T5, #$0005
0e90:	ADD	T8, #$000C
0e94:	ADD	T7, #$0003
0e98:	ADD	T2, #$0001
0e9c:	MOV	ACCU, T2
0e9e:	CMPU	ACCU, #$0400
0ea1:	BGTF	$0DBD
0ea4:	POP	#$0002
0ea7:	RETURN	4, 6
--------------------------------------------------------------------
test_dword_fit:
0eab:	ENTER	0, 2
0eaf:	PUSH	#$0002
0eb2:	MOVB	T0, e + 0
0eb6:	ANDB	T0, #$000F
0eb9:	MOVB	ACCU, T0
0ebb:	CMPUB	ACCU, #$0007
0ebd:	NOT	ACCU
0ebe:	ANDB	ACCU, #$0001
0ec1:	MOVB	P2, ACCU
0ec3:	CALL	assert + 0
0ec6:	MOVB	T0, e + 0
0eca:	ANDB	T0, #$0010
0ecd:	MOVB	ACCU, T0
0ecf:	CMPUB	ACCU, #$0010
0ed1:	NOT	ACCU
0ed2:	ANDB	ACCU, #$0001
0ed5:	MOVB	P2, ACCU
0ed7:	CALL	assert + 0
0eda:	MOVB	T0, e + 0
0ede:	ANDB	T0, #$00E0
0ee1:	MOVB	ACCU, T0
0ee3:	CMPUB	ACCU, #$0040
0ee5:	NOT	ACCU
0ee6:	ANDB	ACCU, #$0001
0ee9:	MOVB	P2, ACCU
0eeb:	CALL	assert + 0
0eee:	MOVB	P2, #1
0ef1:	CALL	assert + 0
0ef4:	MOV	T2, #0
0ef7:	MOV	ACCU, T2
0ef9:	EXTRT	$00, inp_op_ext_s16 + 0
0efd:	MOVD	T0, ACCU
0eff:	MOVB	T1, e + 0
0f03:	ANDB	T1, #$00F0
0f06:	MOVB	ACCU, T1
0f08:	OR	ACCU, T0
0f0a:	MOVB	T1, ACCU
0f0c:	ANDB	T1, #$000F
0f0f:	ORB	T1, #$0060
0f12:	MOVB	e + 0, T1
0f16:	ANDB	T1, #$000F
0f19:	MOVB	ACCU, T1
0f1b:	EXTRT	$00, inp_op_ext_u16 + 0
0f1f:	MOVD	T1, ACCU
0f21:	MOVD	ACCU, T0
0f23:	EXTRT	T1, inp_op_cmp_u32 + 0
0f27:	NOT	ACCU
0f28:	ANDB	ACCU, #$0001
0f2b:	MOVB	P2, ACCU
0f2d:	CALL	assert + 0
0f30:	MOVB	T0, e + 0
0f34:	ANDB	T0, #$0010
0f37:	MOVB	ACCU, T0
0f39:	CMPUB	ACCU, #$0000
0f3b:	NOT	ACCU
0f3c:	ANDB	ACCU, #$0001
0f3f:	MOVB	P2, ACCU
0f41:	CALL	assert + 0
0f44:	MOVB	T0, e + 0
0f48:	ANDB	T0, #$00E0
0f4b:	MOVB	ACCU, T0
0f4d:	CMPUB	ACCU, #$0060
0f4f:	NOT	ACCU
0f50:	ANDB	ACCU, #$0001
0f53:	MOVB	P2, ACCU
0f55:	CALL	assert + 0
0f58:	ADD	T2, #$0001
0f5c:	MOVB	ACCU, T2
0f5e:	CMPUB	ACCU, #$0010
0f60:	BGT	$0EF7
0f62:	POP	#$0002
0f65:	RETURN	0, 2
--------------------------------------------------------------------
test_dword_cross:
0f69:	ENTER	12, 14
0f6d:	PUSH	#$0002
0f70:	MOVD	ACCU, f + 0
0f74:	MOVD	$03, #$000fffff
0f7a:	EXTRT	$03, inp_op_andr_32 + 0
0f7e:	MOVD	T0, ACCU
0f80:	MOVD	ACCU, #$0001b207
0f86:	EXTRT	T0, inp_op_cmp_u32 + 0
0f8a:	NOT	ACCU
0f8b:	ANDB	ACCU, #$0001
0f8e:	MOVB	P2, ACCU
0f90:	CALL	assert + 0
0f93:	MOVD	ACCU, f + 1
0f97:	MOVD	$03, #$fffff000
0f9d:	EXTRT	$03, inp_op_andr_32 + 0
0fa1:	MOVD	T0, ACCU
0fa3:	MOVD	ACCU, #$3640e000
0fa9:	EXTRT	T0, inp_op_cmp_u32 + 0
0fad:	NOT	ACCU
0fae:	ANDB	ACCU, #$0001
0fb1:	MOVB	P2, ACCU
0fb3:	CALL	assert + 0
0fb6:	MOVD	ACCU, f + 5
0fba:	MOVD	$03, #$000fffff
0fc0:	EXTRT	$03, inp_op_andr_32 + 0
0fc4:	MOVD	T0, ACCU
0fc6:	MOVD	ACCU, #$00051615
0fcc:	EXTRT	T0, inp_op_cmp_u32 + 0
0fd0:	NOT	ACCU
0fd1:	ANDB	ACCU, #$0001
0fd4:	MOVB	P2, ACCU
0fd6:	CALL	assert + 0
0fd9:	MOVD	ACCU, f + 6
0fdd:	MOVD	$03, #$fffff000
0fe3:	EXTRT	$03, inp_op_andr_32 + 0
0fe7:	MOVD	T0, ACCU
0fe9:	MOVD	ACCU, #$6c81c000
0fef:	EXTRT	T0, inp_op_cmp_u32 + 0
0ff3:	NOT	ACCU
0ff4:	ANDB	ACCU, #$0001
0ff7:	MOVB	P2, ACCU
0ff9:	CALL	assert + 0
0ffc:	MOVB	P2, #1
0fff:	CALL	assert + 0
1002:	MOV	T6, #0
1005:	NOP
1006:	MOV	ACCU, T6
1008:	EXTRT	$00, inp_op_ext_s16 + 0
100c:	MOVD	T0, ACCU
100e:	MOVD	$03, #$0000000b
1014:	EXTRT	$03, inp_op_mulr_32 + 0
1018:	MOVD	T1, ACCU
101a:	MOVD	ACCU, f + 0
101e:	MOVD	$03, #$fff00000
1024:	EXTRT	$03, inp_op_andr_32 + 0
1028:	EXTRT	T1, inp_op_orr_32 + 0
102c:	MOVD	f + 0, ACCU
1030:	MOVD	ACCU, T0
1032:	MOVD	$03, #$00000021
1038:	EXTRT	$03, inp_op_mulr_32 + 0
103c:	MOVD	T4, ACCU
103e:	MOVD	$03, #$0000000c
1044:	EXTRT	$03, inp_op_shl_l32 + 0
1048:	MOVD	$03, #$0ffff000
104e:	EXTRT	$03, inp_op_andr_32 + 0
1052:	MOVD	T2, ACCU
1054:	MOVD	ACCU, f + 1
1058:	MOVD	$03, #$00000fff
105e:	EXTRT	$03, inp_op_andr_32 + 0
1062:	EXTRT	T2, inp_op_orr_32 + 0
1066:	MOVD	f + 1, ACCU
106a:	MOVD	ACCU, T0
106c:	MOVD	$03, #$00000037
1072:	EXTRT	$03, inp_op_mulr_32 + 0
1076:	MOVD	T3, ACCU
1078:	MOVD	ACCU, f + 5
107c:	MOVD	$03, #$fff00000
1082:	EXTRT	$03, inp_op_andr_32 + 0
1086:	EXTRT	T3, inp_op_orr_32 + 0
108a:	MOVD	f + 5, ACCU
108e:	MOVD	ACCU, T0
1090:	MOVD	$03, #$0000004d
1096:	EXTRT	$03, inp_op_mulr_32 + 0
109a:	MOVD	T5, ACCU
109c:	MOVD	$03, #$0000000c
10a2:	EXTRT	$03, inp_op_shl_l32 + 0
10a6:	MOVD	$03, #$1ffff000
10ac:	EXTRT	$03, inp_op_andr_32 + 0
10b0:	MOVD	T0, ACCU
10b2:	MOVD	ACCU, f + 6
10b6:	MOVD	$03, #$00000fff
10bc:	EXTRT	$03, inp_op_andr_32 + 0
10c0:	EXTRT	T0, inp_op_orr_32 + 0
10c4:	MOVD	f + 6, ACCU
10c8:	MOVD	ACCU, f + 0
10cc:	MOVD	$03, #$000fffff
10d2:	EXTRT	$03, inp_op_andr_32 + 0
10d6:	MOVD	T0, ACCU
10d8:	MOVD	ACCU, T1
10da:	EXTRT	T0, inp_op_cmp_u32 + 0
10de:	NOT	ACCU
10df:	ANDB	ACCU, #$0001
10e2:	MOVB	P2, ACCU
10e4:	CALL	assert + 0
10e7:	MOVD	ACCU, f + 1
10eb:	MOVD	$03, #$0000000c
10f1:	EXTRT	$03, inp_op_shr_u32 + 0
10f5:	MOVD	T0, ACCU
10f7:	NOP
10f8:	MOVD	ACCU, T4
10fa:	EXTRT	T0, inp_op_cmp_u32 + 0
10fe:	NOT	ACCU
10ff:	ANDB	ACCU, #$0001
1102:	MOVB	P2, ACCU
1104:	CALL	assert + 0
1107:	MOVD	ACCU, f + 5
110b:	MOVD	$03, #$000fffff
1111:	EXTRT	$03, inp_op_andr_32 + 0
1115:	MOVD	T0, ACCU
1117:	MOVD	ACCU, T3
1119:	EXTRT	T0, inp_op_cmp_u32 + 0
111d:	NOT	ACCU
111e:	ANDB	ACCU, #$0001
1121:	MOVB	P2, ACCU
1123:	CALL	assert + 0
1126:	MOVD	ACCU, f + 6
112a:	MOVD	$03, #$0000000c
1130:	EXTRT	$03, inp_op_shr_u32 + 0
1134:	MOVD	T0, ACCU
1136:	MOVD	ACCU, T5
1138:	EXTRT	T0, inp_op_cmp_u32 + 0
113c:	NOT	ACCU
113d:	ANDB	ACCU, #$0001
1140:	MOVB	P2, ACCU
1142:	CALL	assert + 0
1145:	ADD	T6, #$0001
1149:	MOV	ACCU, T6
114b:	CMPU	ACCU, #$0400
114e:	BGTF	$1006
1151:	POP	#$0002
1154:	RETURN	12, 14
--------------------------------------------------------------------
test_char_signed:
1158:	ENTER	0, 2
115c:	PUSH	#$0002
115f:	MOVUB	ACCU, g + 0
1163:	SHL	ACCU, #7
1165:	SEXT8	ACCU
1167:	SHRS	ACCU, #7
1169:	CMPUB	ACCU, #$0000
116b:	NOT	ACCU
116c:	ANDB	ACCU, #$0001
116f:	MOVB	P2, ACCU
1171:	CALL	assert + 0
1174:	MOVUB	ACCU, g + 0
1178:	SHL	ACCU, #2
117a:	SEXT8	ACCU
117c:	SHRS	ACCU, #3
117e:	CMPUB	ACCU, #$00FF
1180:	NOT	ACCU
1181:	ANDB	ACCU, #$0001
1184:	MOVB	P2, ACCU
1186:	CALL	assert + 0
1189:	MOVUB	ACCU, g + 0
118d:	SEXT8	ACCU
118f:	SHRS	ACCU, #6
1191:	CMPUB	ACCU, #$00FE
1193:	NOT	ACCU
1194:	ANDB	ACCU, #$0001
1197:	MOVB	P2, ACCU
1199:	CALL	assert + 0
119c:	MOVB	P2, #1
119f:	CALL	assert + 0
11a2:	MOV	T1, #-16
11a5:	MOVB	T3, #224
11a8:	MOVB	ACCU, T3
11aa:	ANDB	ACCU, #$003E
11ad:	MOVB	T0, ACCU
11af:	MOVB	T2, g + 0
11b3:	ANDB	T2, #$00C0
11b6:	ORB	T2, #$0001
11b9:	MOVB	ACCU, T2
11bb:	OR	ACCU, T0
11bd:	MOVB	T0, ACCU
11bf:	ANDB	T0, #$003F
11c2:	ORB	T0, #$0040
11c5:	MOVB	g + 0, T0
11c9:	MOVB	ACCU, T0
11cb:	SHL	ACCU, #7
11cd:	SEXT8	ACCU
11cf:	SHRS	ACCU, #7
11d1:	CMPUB	ACCU, #$00FF
11d3:	NOT	ACCU
11d4:	ANDB	ACCU, #$0001
11d7:	MOVB	P2, ACCU
11d9:	CALL	assert + 0
11dc:	MOVUB	ACCU, g + 0
11e0:	SHL	ACCU, #2
11e2:	SEXT8	ACCU
11e4:	SHRS	ACCU, #3
11e6:	MOVB	T0, ACCU
11e8:	AND	T0, #$00FF
11ec:	MOV	ACCU, T1
11ee:	CMPU	ACCU, T0
11f0:	NOT	ACCU
11f1:	ANDB	ACCU, #$0001
11f4:	MOVB	P2, ACCU
11f6:	CALL	assert + 0
11f9:	MOVUB	ACCU, g + 0
11fd:	SEXT8	ACCU
11ff:	SHRS	ACCU, #6
1201:	CMPUB	ACCU, #$0001
1203:	NOT	ACCU
1204:	ANDB	ACCU, #$0001
1207:	MOVB	P2, ACCU
1209:	CALL	assert + 0
120c:	ADDB	T3, #$0002
120f:	ADD	T1, #$0001
1213:	MOV	ACCU, T1
1215:	CMPS	ACCU, #$0010
1218:	BGT	$11A8
121a:	POP	#$0002
121d:	RETURN	0, 2
--------------------------------------------------------------------
test_word_signed:
1221:	ENTER	4, 6
1225:	PUSH	#$0002
1228:	MOV	ACCU, h + 0
122c:	SHL	ACCU, #6
122e:	SHRS	ACCU, #6
1230:	CMPU	ACCU, #$006F
1233:	NOT	ACCU
1234:	ANDB	ACCU, #$0001
1237:	MOVB	P2, ACCU
1239:	CALL	assert + 0
123c:	MOV	ACCU, h + 1
1240:	SHL	ACCU, #4
1242:	SHRS	ACCU, #6
1244:	CMPU	ACCU, #$FF22
1247:	NOT	ACCU
1248:	ANDB	ACCU, #$0001
124b:	MOVB	P2, ACCU
124d:	CALL	assert + 0
1250:	MOV	ACCU, h + 2
1254:	SHL	ACCU, #2
1256:	SHRS	ACCU, #6
1258:	CMPU	ACCU, #$FEB3
125b:	NOT	ACCU
125c:	ANDB	ACCU, #$0001
125f:	MOVB	P2, ACCU
1261:	CALL	assert + 0
1264:	MOV	ACCU, h + 3
1268:	SHRS	ACCU, #6
126a:	CMPU	ACCU, #$01BC
126d:	NOT	ACCU
126e:	ANDB	ACCU, #$0001
1271:	MOVB	P2, ACCU
1273:	CALL	assert + 0
1276:	MOVB	P2, #1
1279:	CALL	assert + 0
127c:	MOV	T2, #-32
127f:	MOV	T3, #-224
1282:	MOV	T4, #$c800
1286:	MOV	T5, #-160
1289:	MOV	T6, #$f600
128d:	MOV	T7, #-96
1290:	MOV	T8, #$fe80
1294:	NOP
1295:	MOV	ACCU, T2
1297:	AND	ACCU, #$03FF
129b:	MOV	T0, ACCU
129d:	MOV	T1, h + 0
12a1:	AND	T1, #$FC00
12a5:	MOV	ACCU, T1
12a7:	OR	ACCU, T0
12a9:	MOV	h + 0, ACCU
12ad:	MOV	ACCU, T8
12af:	AND	ACCU, #$0FFC
12b3:	MOV	T0, ACCU
12b5:	MOV	T1, h + 1
12b9:	AND	T1, #$F003
12bd:	MOV	ACCU, T1
12bf:	OR	ACCU, T0
12c1:	MOV	h + 1, ACCU
12c5:	MOV	ACCU, T6
12c7:	AND	ACCU, #$3FF0
12cb:	MOV	T0, ACCU
12cd:	MOV	T1, h + 2
12d1:	AND	T1, #$C00F
12d5:	MOV	ACCU, T1
12d7:	OR	ACCU, T0
12d9:	MOV	h + 2, ACCU
12dd:	MOV	ACCU, T4
12df:	ANDB	ACCU, #$00C0
12e2:	MOV	T0, ACCU
12e4:	MOV	T1, h + 3
12e8:	AND	T1, #$003F
12ec:	MOV	ACCU, T1
12ee:	OR	ACCU, T0
12f0:	MOV	h + 3, ACCU
12f4:	MOV	ACCU, h + 0
12f8:	SHL	ACCU, #6
12fa:	SHRS	ACCU, #6
12fc:	MOV	T0, ACCU
12fe:	MOV	ACCU, T2
1300:	CMPU	ACCU, T0
1302:	NOT	ACCU
1303:	ANDB	ACCU, #$0001
1306:	MOVB	P2, ACCU
1308:	CALL	assert + 0
130b:	MOV	ACCU, h + 1
130f:	SHL	ACCU, #4
1311:	SHRS	ACCU, #6
1313:	MOV	T0, ACCU
1315:	MOV	ACCU, T7
1317:	CMPU	ACCU, T0
1319:	NOT	ACCU
131a:	ANDB	ACCU, #$0001
131d:	MOVB	P2, ACCU
131f:	CALL	assert + 0
1322:	MOV	ACCU, h + 2
1326:	SHL	ACCU, #2
1328:	SHRS	ACCU, #6
132a:	MOV	T0, ACCU
132c:	MOV	ACCU, T5
132e:	CMPU	ACCU, T0
1330:	NOT	ACCU
1331:	ANDB	ACCU, #$0001
1334:	MOVB	P2, ACCU
1336:	CALL	assert + 0
1339:	MOV	ACCU, h + 3
133d:	SHRS	ACCU, #6
133f:	MOV	T0, ACCU
1341:	MOV	ACCU, T3
1343:	CMPU	ACCU, T0
1345:	NOT	ACCU
1346:	ANDB	ACCU, #$0001
1349:	MOVB	P2, ACCU
134b:	CALL	assert + 0
134e:	ADD	T4, #$01C0
1352:	ADD	T3, #$0007
1356:	ADD	T6, #$0050
135a:	ADD	T5, #$0005
135e:	ADD	T8, #$000C
1362:	ADD	T7, #$0003
1366:	ADD	T2, #$0001
136a:	MOV	ACCU, T2
136c:	CMPS	ACCU, #$0020
136f:	BGTF	$1295
1372:	POP	#$0002
1375:	RETURN	4, 6
--------------------------------------------------------------------
test_inc_char_fit:
1379:	ENTER	0, 2
137d:	PUSH	#$0002
1380:	MOVB	T3, #87
1383:	MOV	T0, #0
1386:	MOV	ACCU, T0
1388:	ADD	ACCU, #$0007
138c:	MOV	T2, ACCU
138e:	AND	ACCU, #$000F
1392:	MOV	T0, ACCU
1394:	MOVB	ACCU, T3
1396:	ANDB	ACCU, #$000F
1399:	MOVB	T4, ACCU
139b:	MOVB	ACCU, ACCU
139d:	MOV	T1, ACCU
139f:	MOV	ACCU, T0
13a1:	CMPU	ACCU, T1
13a3:	NOT	ACCU
13a4:	ANDB	ACCU, #$0001
13a7:	MOVB	P2, ACCU
13a9:	CALL	assert + 0
13ac:	ADD	T2, #$FFFA
13b0:	MOV	ACCU, T2
13b2:	AND	ACCU, #$0001
13b6:	MOV	T0, ACCU
13b8:	MOVB	ACCU, T3
13ba:	ANDB	ACCU, #$001F
13bd:	MOVB	ACCU, ACCU
13bf:	SHRU	ACCU, #4
13c1:	MOVB	T1, ACCU
13c3:	AND	T1, #$00FF
13c7:	MOV	ACCU, T0
13c9:	CMPU	ACCU, T1
13cb:	NOT	ACCU
13cc:	ANDB	ACCU, #$0001
13cf:	MOVB	P2, ACCU
13d1:	CALL	assert + 0
13d4:	MOV	ACCU, T2
13d6:	ADD	ACCU, #$0001
13da:	MOV	T0, ACCU
13dc:	AND	T0, #$0007
13e0:	MOVB	ACCU, T3
13e2:	SHRU	ACCU, #5
13e4:	MOVB	T1, ACCU
13e6:	AND	T1, #$00FF
13ea:	MOV	ACCU, T0
13ec:	CMPU	ACCU, T1
13ee:	NOT	ACCU
13ef:	ANDB	ACCU, #$0001
13f2:	MOVB	P2, ACCU
13f4:	CALL	assert + 0
13f7:	MOVB	ACCU, T4
13f9:	ADDB	ACCU, #$0001
13fc:	MOVB	T0, ACCU
13fe:	ANDB	T0, #$000F
1401:	MOVB	ACCU, T3
1403:	ANDB	ACCU, #$00F0
1406:	OR	ACCU, T0
1408:	MOVB	T0, ACCU
140a:	ADDB	ACCU, #$0010
140d:	MOVB	T1, ACCU
140f:	ANDB	T1, #$0010
1412:	ANDB	T0, #$00EF
1415:	MOVB	ACCU, T0
1417:	OR	ACCU, T1
1419:	MOVB	T0, ACCU
141b:	ADDB	ACCU, #$0020
141e:	MOVB	T1, ACCU
1420:	ANDB	T1, #$00E0
1423:	ANDB	T0, #$001F
1426:	MOVB	ACCU, T0
1428:	OR	ACCU, T1
142a:	MOVB	T3, ACCU
142c:	MOV	ACCU, T2
142e:	MOV	T0, ACCU
1430:	CMPUB	ACCU, #$0010
1432:	BGTF	$1386
1435:	POP	#$0002
1438:	RETURN	0, 2
--------------------------------------------------------------------
test_inc_char_cross:
143c:	ENTER	0, 5
1440:	PUSH	#$0002
1443:	MOVB	T0, 0(FP)
1446:	ANDB	T0, #$00C0
1449:	ORB	T0, #$000B
144c:	MOVB	0(FP), T0
144f:	MOV	T0, 0(FP)
1452:	AND	T0, #$F03F
1456:	OR	T0, #$0580
145a:	MOV	0(FP), T0
145d:	MOV	T0, 1(FP)
1460:	AND	T0, #$FC0F
1464:	OR	T0, #$0210
1468:	MOV	1(FP), T0
146b:	MOVB	T0, 2(FP)
146e:	ANDB	T0, #$0003
1471:	ORB	T0, #$00B0
1474:	MOVB	2(FP), T0
1477:	MOV	T2, #44
147a:	MOV	T3, #33
147d:	MOV	T4, #22
1480:	MOV	T5, #11
1483:	NOP
1484:	MOV	ACCU, T5
1486:	AND	ACCU, #$003F
148a:	MOV	T0, ACCU
148c:	MOVB	T6, 0(FP)
148f:	MOVB	ACCU, T6
1491:	ANDB	ACCU, #$003F
1494:	MOVB	T7, ACCU
1496:	MOVB	ACCU, ACCU
1498:	MOV	T1, ACCU
149a:	MOV	ACCU, T0
149c:	CMPU	ACCU, T1
149e:	NOT	ACCU
149f:	ANDB	ACCU, #$0001
14a2:	MOVB	P2, ACCU
14a4:	CALL	assert + 0
14a7:	MOV	ACCU, T4
14a9:	AND	ACCU, #$003F
14ad:	MOV	T0, ACCU
14af:	MOV	T1, 0(FP)
14b2:	AND	T1, #$0FFF
14b6:	MOV	ACCU, T1
14b8:	SHRU	ACCU, #6
14ba:	MOV	T1, ACCU
14bc:	MOV	ACCU, T0
14be:	CMPU	ACCU, T1
14c0:	NOT	ACCU
14c1:	ANDB	ACCU, #$0001
14c4:	MOVB	P2, ACCU
14c6:	CALL	assert + 0
14c9:	MOV	ACCU, T3
14cb:	AND	ACCU, #$003F
14cf:	MOV	T0, ACCU
14d1:	MOV	T1, 1(FP)
14d4:	AND	T1, #$03FF
14d8:	MOV	ACCU, T1
14da:	SHRU	ACCU, #4
14dc:	MOV	T1, ACCU
14de:	MOV	ACCU, T0
14e0:	CMPU	ACCU, T1
14e2:	NOT	ACCU
14e3:	ANDB	ACCU, #$0001
14e6:	MOVB	P2, ACCU
14e8:	CALL	assert + 0
14eb:	MOV	ACCU, T2
14ed:	AND	ACCU, #$003F
14f1:	MOV	T0, ACCU
14f3:	MOVUB	ACCU, 2(FP)
14f6:	SHRU	ACCU, #2
14f8:	MOVB	T1, ACCU
14fa:	AND	T1, #$00FF
14fe:	MOV	ACCU, T0
1500:	CMPU	ACCU, T1
1502:	NOT	ACCU
1503:	ANDB	ACCU, #$0001
1506:	MOVB	P2, ACCU
1508:	CALL	assert + 0
150b:	MOVB	ACCU, T7
150d:	ADDB	ACCU, #$0001
1510:	MOVB	T0, ACCU
1512:	ANDB	T0, #$003F
1515:	MOVB	ACCU, T6
1517:	ANDB	ACCU, #$00C0
151a:	OR	ACCU, T0
151c:	MOVB	0(FP), ACCU
151f:	MOV	T0, 0(FP)
1522:	MOV	ACCU, T0
1524:	AND	ACCU, #$0FC0
1528:	MOV	T1, ACCU
152a:	ADD	T1, #$0040
152e:	AND	T1, #$0FC0
1532:	AND	T0, #$F03F
1536:	MOV	ACCU, T0
1538:	OR	ACCU, T1
153a:	MOV	0(FP), ACCU
153d:	MOV	T0, 1(FP)
1540:	MOV	ACCU, T0
1542:	AND	ACCU, #$03F0
1546:	MOV	T1, ACCU
1548:	ADD	T1, #$0010
154c:	AND	T1, #$03F0
1550:	AND	T0, #$FC0F
1554:	MOV	ACCU, T0
1556:	OR	ACCU, T1
1558:	MOV	1(FP), ACCU
155b:	MOVB	T0, 2(FP)
155e:	MOVB	ACCU, T0
1560:	ADDB	ACCU, #$0004
1563:	MOVB	T1, ACCU
1565:	ANDB	T1, #$00FC
1568:	ANDB	T0, #$0003
156b:	MOVB	ACCU, T0
156d:	OR	ACCU, T1
156f:	MOVB	2(FP), ACCU
1572:	ADD	T5, #$0001
1576:	NOP
1577:	ADD	T4, #$0001
157b:	ADD	T3, #$0001
157f:	ADD	T2, #$0001
1583:	MOVB	ACCU, T2
1585:	CMPUB	ACCU, #$006C
1587:	BNEF	$1484
158a:	POP	#$0002
158d:	RETURN	0, 5
--------------------------------------------------------------------
test_add_char_cross:
1591:	ENTER	0, 5
1595:	PUSH	#$0002
1598:	LEA	ACCU, $16fa
159c:	LEA	ADDR, 0(FP)
15a0:	COPY	#3
15a2:	MOV	ACCU, #11
15a5:	MOVB	0(FP), ACCU
15a8:	MOV	T0, 0(FP)
15ab:	AND	T0, #$F03F
15af:	OR	T0, #$0580
15b3:	MOV	0(FP), T0
15b6:	MOV	T0, 1(FP)
15b9:	AND	T0, #$FC0F
15bd:	OR	T0, #$0210
15c1:	MOV	1(FP), T0
15c4:	MOVB	T0, 2(FP)
15c7:	ANDB	T0, #$0003
15ca:	ORB	T0, #$00B0
15cd:	MOVB	2(FP), T0
15d0:	MOV	T2, #0
15d3:	MOV	T3, #0
15d6:	MOV	T4, #22
15d9:	MOV	T5, #11
15dc:	NOP
15dd:	MOV	ACCU, T5
15df:	AND	ACCU, #$003F
15e3:	MOV	T0, ACCU
15e5:	MOVB	T6, 0(FP)
15e8:	MOVB	ACCU, T6
15ea:	ANDB	ACCU, #$003F
15ed:	MOVB	T7, ACCU
15ef:	MOVB	ACCU, ACCU
15f1:	MOV	T1, ACCU
15f3:	MOV	ACCU, T0
15f5:	CMPU	ACCU, T1
15f7:	NOT	ACCU
15f8:	ANDB	ACCU, #$0001
15fb:	MOVB	P2, ACCU
15fd:	CALL	assert + 0
1600:	MOV	ACCU, T4
1602:	AND	ACCU, #$003F
1606:	MOV	T0, ACCU
1608:	MOV	T1, 0(FP)
160b:	AND	T1, #$0FFF
160f:	MOV	ACCU, T1
1611:	SHRU	ACCU, #6
1613:	MOV	T1, ACCU
1615:	MOV	ACCU, T0
1617:	CMPU	ACCU, T1
1619:	NOT	ACCU
161a:	ANDB	ACCU, #$0001
161d:	MOVB	P2, ACCU
161f:	CALL	assert + 0
1622:	MOV	ACCU, T3
1624:	SUBR	ACCU, #$0021
1628:	MOV	T0, ACCU
162a:	AND	T0, #$003F
162e:	MOV	T1, 1(FP)
1631:	AND	T1, #$03FF
1635:	MOV	ACCU, T1
1637:	SHRU	ACCU, #4
1639:	MOV	T1, ACCU
163b:	MOV	ACCU, T0
163d:	CMPU	ACCU, T1
163f:	NOT	ACCU
1640:	ANDB	ACCU, #$0001
1643:	MOVB	P2, ACCU
1645:	CALL	assert + 0
1648:	MOV	ACCU, T2
164a:	SUBR	ACCU, #$002C
164e:	MOV	T0, ACCU
1650:	AND	T0, #$003F
1654:	MOVUB	ACCU, 2(FP)
1657:	SHRU	ACCU, #2
1659:	MOVB	T1, ACCU
165b:	AND	T1, #$00FF
165f:	MOV	ACCU, T0
1661:	CMPU	ACCU, T1
1663:	NOT	ACCU
1664:	ANDB	ACCU, #$0001
1667:	MOVB	P2, ACCU
1669:	CALL	assert + 0
166c:	MOVB	ACCU, T7
166e:	ADDB	ACCU, #$0005
1671:	MOVB	T0, ACCU
1673:	ANDB	T0, #$003F
1676:	MOVB	ACCU, T6
1678:	ANDB	ACCU, #$00C0
167b:	OR	ACCU, T0
167d:	MOVB	0(FP), ACCU
1680:	MOV	T0, 0(FP)
1683:	MOV	ACCU, T0
1685:	AND	ACCU, #$0FC0
1689:	MOV	T1, ACCU
168b:	ADD	T1, #$0540
168f:	AND	T1, #$0FC0
1693:	AND	T0, #$F03F
1697:	MOV	ACCU, T0
1699:	OR	ACCU, T1
169b:	MOV	0(FP), ACCU
169e:	MOV	T0, 1(FP)
16a1:	MOV	ACCU, T0
16a3:	AND	ACCU, #$03FF
16a7:	SHRU	ACCU, #4
16a9:	MOV	T1, ACCU
16ab:	ADDB	T1, #$00FC
16ae:	MOVB	ACCU, T1
16b0:	SHL	ACCU, #4
16b2:	MOV	T1, ACCU
16b4:	AND	T1, #$03F0
16b8:	AND	T0, #$FC0F
16bc:	MOV	ACCU, T0
16be:	OR	ACCU, T1
16c0:	MOV	1(FP), ACCU
16c3:	MOVB	T0, 2(FP)
16c6:	MOVB	ACCU, T0
16c8:	ADDB	ACCU, #$00D4
16cb:	MOVB	T1, ACCU
16cd:	ANDB	T1, #$00FC
16d0:	NOP
16d1:	ANDB	T0, #$0003
16d4:	MOVB	ACCU, T0
16d6:	OR	ACCU, T1
16d8:	MOVB	2(FP), ACCU
16db:	ADD	T2, #$000B
16df:	ADD	T3, #$0004
16e3:	ADD	T4, #$0015
16e7:	ADD	T5, #$0005
16eb:	MOV	ACCU, T5
16ed:	CMPU	ACCU, #$014B
16f0:	BNEF	$15DD
16f3:	POP	#$0002
16f6:	RETURN	0, 5
--------------------------------------------------------------------
16fa : __ __ __ BYT 00 00 00                                        : ...
--------------------------------------------------------------------
test_add_word_fit:
16fd:	ENTER	0, 3
1701:	PUSH	#$0002
1704:	MOV	ACCU, #87
1707:	MOVB	0(FP), ACCU
170a:	MOV	T2, #0
170d:	MOV	T3, #1
1710:	MOV	T4, #7
1713:	MOVB	T6, 0(FP)
1716:	MOVB	ACCU, T6
1718:	ANDB	ACCU, #$000F
171b:	MOVB	ACCU, ACCU
171d:	MOV	T5, ACCU
171f:	MOV	ACCU, T4
1721:	AND	ACCU, #$000F
1725:	CMPU	ACCU, T5
1727:	NOT	ACCU
1728:	ANDB	ACCU, #$0001
172b:	MOVB	P2, ACCU
172d:	CALL	assert + 0
1730:	MOVB	ACCU, T6
1732:	ANDB	ACCU, #$001F
1735:	MOVB	ACCU, ACCU
1737:	SHRU	ACCU, #4
1739:	MOVB	T0, ACCU
173b:	AND	T0, #$00FF
173f:	MOV	ACCU, T3
1741:	AND	ACCU, #$0001
1745:	CMPU	ACCU, T0
1747:	NOT	ACCU
1748:	ANDB	ACCU, #$0001
174b:	MOVB	P2, ACCU
174d:	CALL	assert + 0
1750:	MOVB	ACCU, T6
1752:	SHRU	ACCU, #5
1754:	MOVB	T0, ACCU
1756:	AND	T0, #$00FF
175a:	MOV	ACCU, T2
175c:	SUBR	ACCU, #$0002
1760:	AND	ACCU, #$0007
1764:	CMPU	ACCU, T0
1766:	NOT	ACCU
1767:	ANDB	ACCU, #$0001
176a:	MOVB	P2, ACCU
176c:	CALL	assert + 0
176f:	MOV	ACCU, T5
1771:	ADD	ACCU, #$0005
1775:	MOV	T0, ACCU
1777:	ANDB	T0, #$000F
177a:	MOVB	ACCU, T6
177c:	ANDB	ACCU, #$00F0
177f:	OR	ACCU, T0
1781:	MOVB	T1, ACCU
1783:	ANDB	ACCU, #$001F
1786:	MOVB	ACCU, ACCU
1788:	SHRU	ACCU, #4
178a:	MOVB	T0, ACCU
178c:	AND	T0, #$00FF
1790:	ADD	T0, #$0015
1794:	MOVB	ACCU, T0
1796:	SHL	ACCU, #4
1798:	MOVB	T0, ACCU
179a:	ANDB	T0, #$0010
179d:	ANDB	T1, #$00EF
17a0:	MOVB	ACCU, T1
17a2:	OR	ACCU, T0
17a4:	MOVB	T1, ACCU
17a6:	MOVB	ACCU, ACCU
17a8:	SHRU	ACCU, #5
17aa:	MOVB	T0, ACCU
17ac:	AND	T0, #$00FF
17b0:	ADD	T0, #$FFFC
17b4:	MOVB	ACCU, T0
17b6:	SHL	ACCU, #5
17b8:	MOVB	T0, ACCU
17ba:	ANDB	T0, #$00E0
17bd:	ANDB	T1, #$001F
17c0:	MOVB	ACCU, T1
17c2:	OR	ACCU, T0
17c4:	MOVB	0(FP), ACCU
17c7:	ADD	T2, #$0004
17cb:	ADD	T3, #$0015
17cf:	ADD	T4, #$0005
17d3:	MOVB	ACCU, T4
17d5:	CMPUB	ACCU, #$0057
17d7:	BNEF	$1713
17da:	POP	#$0002
17dd:	RETURN	0, 3
--------------------------------------------------------------------
test_add_word_cross:
17e1:	ENTER	2, 9
17e5:	PUSH	#$0002
17e8:	LEA	ACCU, $192b
17ec:	LEA	ADDR, 0(FP)
17f0:	COPY	#5
17f2:	MOV	ACCU, #111
17f5:	MOV	0(FP), ACCU
17f8:	MOV	T0, 1(FP)
17fb:	AND	T0, #$F003
17ff:	OR	T0, #$0378
1803:	MOV	1(FP), T0
1806:	MOV	T0, 2(FP)
1809:	AND	T0, #$C00F
180d:	OR	T0, #$14D0
1811:	MOV	2(FP), T0
1814:	MOV	T0, 3(FP)
1817:	AND	T0, #$003F
181b:	OR	T0, #$6F00
181f:	MOV	3(FP), T0
1822:	MOV	T2, #0
1825:	MOV	T3, #0
1828:	MOV	T4, #222
182b:	MOV	T5, #111
182e:	NOP
182f:	MOV	T6, 0(FP)
1832:	MOV	ACCU, T6
1834:	AND	ACCU, #$03FF
1838:	MOV	T7, ACCU
183a:	MOV	ACCU, T5
183c:	AND	ACCU, #$03FF
1840:	CMPU	ACCU, T7
1842:	NOT	ACCU
1843:	ANDB	ACCU, #$0001
1846:	MOVB	P2, ACCU
1848:	CALL	assert + 0
184b:	MOV	T0, 1(FP)
184e:	AND	T0, #$0FFF
1852:	MOV	ACCU, T0
1854:	SHRU	ACCU, #2
1856:	MOV	T0, ACCU
1858:	MOV	ACCU, T4
185a:	AND	ACCU, #$03FF
185e:	CMPU	ACCU, T0
1860:	NOT	ACCU
1861:	ANDB	ACCU, #$0001
1864:	MOVB	P2, ACCU
1866:	CALL	assert + 0
1869:	MOV	T0, 2(FP)
186c:	AND	T0, #$3FFF
1870:	MOV	ACCU, T0
1872:	SHRU	ACCU, #4
1874:	MOV	T0, ACCU
1876:	MOV	ACCU, T3
1878:	SUBR	ACCU, #$014D
187c:	AND	ACCU, #$03FF
1880:	CMPU	ACCU, T0
1882:	NOT	ACCU
1883:	ANDB	ACCU, #$0001
1886:	MOVB	P2, ACCU
1888:	CALL	assert + 0
188b:	MOV	ACCU, 3(FP)
188e:	SHRU	ACCU, #6
1890:	MOV	T0, ACCU
1892:	MOV	ACCU, T2
1894:	SUBR	ACCU, #$01BC
1898:	AND	ACCU, #$03FF
189c:	CMPU	ACCU, T0
189e:	NOT	ACCU
189f:	ANDB	ACCU, #$0001
18a2:	MOVB	P2, ACCU
18a4:	CALL	assert + 0
18a7:	MOV	ACCU, T7
18a9:	ADD	ACCU, #$0005
18ad:	MOV	T0, ACCU
18af:	AND	T0, #$03FF
18b3:	MOV	ACCU, T6
18b5:	AND	ACCU, #$FC00
18b9:	OR	ACCU, T0
18bb:	MOV	0(FP), ACCU
18be:	MOV	T0, 1(FP)
18c1:	MOV	ACCU, T0
18c3:	ADD	ACCU, #$0054
18c7:	MOV	T1, ACCU
18c9:	AND	T1, #$0FFC
18cd:	AND	T0, #$F003
18d1:	MOV	ACCU, T0
18d3:	OR	ACCU, T1
18d5:	MOV	1(FP), ACCU
18d8:	MOV	T0, 2(FP)
18db:	MOV	ACCU, T0
18dd:	ADD	ACCU, #$FFC0
18e1:	MOV	T1, ACCU
18e3:	AND	T1, #$3FF0
18e7:	AND	T0, #$C00F
18eb:	MOV	ACCU, T0
18ed:	OR	ACCU, T1
18ef:	MOV	2(FP), ACCU
18f2:	MOV	T0, 3(FP)
18f5:	MOV	ACCU, T0
18f7:	ADD	ACCU, #$FD40
18fb:	MOV	T1, ACCU
18fd:	ANDB	T1, #$00C0
1900:	AND	T0, #$003F
1904:	MOV	ACCU, T0
1906:	OR	ACCU, T1
1908:	MOV	3(FP), ACCU
190b:	ADD	T2, #$000B
190f:	ADD	T3, #$0004
1913:	ADD	T4, #$0015
1917:	ADD	T5, #$0005
191b:	MOV	ACCU, T5
191d:	CMPU	ACCU, #$146F
1920:	NOP
1921:	BNEF	$182F
1924:	POP	#$0002
1927:	RETURN	2, 9
--------------------------------------------------------------------
192b : __ __ __ BYT 00 00 00 00 00                                  : .....
--------------------------------------------------------------------
inp_op_ext_s16: ; inp_op_ext_s16
1930 : a5 1c __ LDA ACCU + 1 
1932 : 09 7f __ ORA #$7f
1934 : 30 02 __ BMI $1938 ; (inp_op_ext_s16 + 8)
1936 : a9 00 __ LDA #$00
1938 : 85 1d __ STA ACCU + 2 
193a : 85 1e __ STA ACCU + 3 
193c : 60 __ __ RTS
--------------------------------------------------------------------
inp_op_ext_u16: ; inp_op_ext_u16
193d : a9 00 __ LDA #$00
193f : 85 1d __ STA ACCU + 2 
1941 : 85 1e __ STA ACCU + 3 
1943 : 60 __ __ RTS
--------------------------------------------------------------------
inp_op_andr_32: ; inp_op_andr_32
1944 : a5 1b __ LDA ACCU + 0 
1946 : 35 00 __ AND $00,x 
1948 : 85 1b __ STA ACCU + 0 
194a : a5 1c __ LDA ACCU + 1 
194c : 35 01 __ AND $01,x 
194e : 85 1c __ STA ACCU + 1 
1950 : a5 1d __ LDA ACCU + 2 
1952 : 35 02 __ AND $02,x 
1954 : 85 1d __ STA ACCU + 2 
1956 : a5 1e __ LDA ACCU + 3 
1958 : 35 03 __ AND WORK + 0,x 
195a : 85 1e __ STA ACCU + 3 
195c : 60 __ __ RTS
--------------------------------------------------------------------
inp_op_orr_32: ; inp_op_orr_32
195d : a5 1b __ LDA ACCU + 0 
195f : 15 00 __ ORA $00,x 
1961 : 85 1b __ STA ACCU + 0 
1963 : a5 1c __ LDA ACCU + 1 
1965 : 15 01 __ ORA $01,x 
1967 : 85 1c __ STA ACCU + 1 
1969 : a5 1d __ LDA ACCU + 2 
196b : 15 02 __ ORA $02,x 
196d : 85 1d __ STA ACCU + 2 
196f : a5 1e __ LDA ACCU + 3 
1971 : 15 03 __ ORA WORK + 0,x 
1973 : 85 1e __ STA ACCU + 3 
1975 : 60 __ __ RTS
--------------------------------------------------------------------
inp_op_mulr_32: ; inp_op_mulr_32
1976 : a9 00 __ LDA #$00
1978 : 85 07 __ STA WORK + 4 
197a : 85 08 __ STA WORK + 5 
197c : 85 09 __ STA WORK + 6 
197e : 85 0a __ STA WORK + 7 
1980 : b5 00 __ LDA $00,x 
1982 : 85 03 __ STA WORK + 0 
1984 : b5 01 __ LDA $01,x 
1986 : 85 04 __ STA WORK + 1 
1988 : b5 02 __ LDA $02,x 
198a : 85 05 __ STA WORK + 2 
198c : b5 03 __ LDA WORK + 0,x 
198e : 85 06 __ STA WORK + 3 
1990 : a2 20 __ LDX #$20
1992 : 46 06 __ LSR WORK + 3 
1994 : 66 05 __ ROR WORK + 2 
1996 : 66 04 __ ROR WORK + 1 
1998 : 66 03 __ ROR WORK + 0 
199a : 90 19 __ BCC $19b5 ; (inp_op_mulr_32 + 63)
199c : 18 __ __ CLC
199d : a5 07 __ LDA WORK + 4 
199f : 65 1b __ ADC ACCU + 0 
19a1 : 85 07 __ STA WORK + 4 
19a3 : a5 08 __ LDA WORK + 5 
19a5 : 65 1c __ ADC ACCU + 1 
19a7 : 85 08 __ STA WORK + 5 
19a9 : a5 09 __ LDA WORK + 6 
19ab : 65 1d __ ADC ACCU + 2 
19ad : 85 09 __ STA WORK + 6 
19af : a5 0a __ LDA WORK + 7 
19b1 : 65 1e __ ADC ACCU + 3 
19b3 : 85 0a __ STA WORK + 7 
19b5 : 06 1b __ ASL ACCU + 0 
19b7 : 26 1c __ ROL ACCU + 1 
19b9 : 26 1d __ ROL ACCU + 2 
19bb : 26 1e __ ROL ACCU + 3 
19bd : ca __ __ DEX
19be : d0 d2 __ BNE $1992 ; (inp_op_mulr_32 + 28)
19c0 : a5 07 __ LDA WORK + 4 
19c2 : 85 1b __ STA ACCU + 0 
19c4 : a5 08 __ LDA WORK + 5 
19c6 : 85 1c __ STA ACCU + 1 
19c8 : a5 09 __ LDA WORK + 6 
19ca : 85 1d __ STA ACCU + 2 
19cc : a5 0a __ LDA WORK + 7 
19ce : 85 1e __ STA ACCU + 3 
19d0 : 60 __ __ RTS
--------------------------------------------------------------------
inp_op_shl_l32: ; inp_op_shl_l32
19d1 : b5 00 __ LDA $00,x 
19d3 : 29 1f __ AND #$1f
19d5 : f0 0f __ BEQ $19e6 ; (inp_op_shl_l32 + 21)
19d7 : aa __ __ TAX
19d8 : a5 1b __ LDA ACCU + 0 
19da : 0a __ __ ASL
19db : 26 1c __ ROL ACCU + 1 
19dd : 26 1d __ ROL ACCU + 2 
19df : 26 1e __ ROL ACCU + 3 
19e1 : ca __ __ DEX
19e2 : d0 f6 __ BNE $19da ; (inp_op_shl_l32 + 9)
19e4 : 85 1b __ STA ACCU + 0 
19e6 : 60 __ __ RTS
--------------------------------------------------------------------
inp_op_shr_u32: ; inp_op_shr_u32
19e7 : b5 00 __ LDA $00,x 
19e9 : 29 1f __ AND #$1f
19eb : f0 0f __ BEQ $19fc ; (inp_op_shr_u32 + 21)
19ed : aa __ __ TAX
19ee : a5 1e __ LDA ACCU + 3 
19f0 : 4a __ __ LSR
19f1 : 66 1d __ ROR ACCU + 2 
19f3 : 66 1c __ ROR ACCU + 1 
19f5 : 66 1b __ ROR ACCU + 0 
19f7 : ca __ __ DEX
19f8 : d0 f6 __ BNE $19f0 ; (inp_op_shr_u32 + 9)
19fa : 85 1e __ STA ACCU + 3 
19fc : 60 __ __ RTS
--------------------------------------------------------------------
inp_op_cmp_u32: ; inp_op_cmp_u32
19fd : b5 03 __ LDA WORK + 0,x 
19ff : c5 1e __ CMP ACCU + 3 
1a01 : d0 20 __ BNE $1a23 ; (inp_op_cmp_u32 + 38)
1a03 : b5 02 __ LDA $02,x 
1a05 : c5 1d __ CMP ACCU + 2 
1a07 : d0 1a __ BNE $1a23 ; (inp_op_cmp_u32 + 38)
1a09 : b5 01 __ LDA $01,x 
1a0b : c5 1c __ CMP ACCU + 1 
1a0d : d0 14 __ BNE $1a23 ; (inp_op_cmp_u32 + 38)
1a0f : b5 00 __ LDA $00,x 
1a11 : c5 1b __ CMP ACCU + 0 
1a13 : d0 0e __ BNE $1a23 ; (inp_op_cmp_u32 + 38)
1a15 : a9 00 __ LDA #$00
1a17 : 85 1b __ STA ACCU + 0 
1a19 : 85 1c __ STA ACCU + 1 
1a1b : 60 __ __ RTS
1a1c : a9 ff __ LDA #$ff
1a1e : 85 1b __ STA ACCU + 0 
1a20 : 85 1c __ STA ACCU + 1 
1a22 : 60 __ __ RTS
1a23 : 90 f7 __ BCC $1a1c ; (inp_op_cmp_u32 + 31)
1a25 : a9 01 __ LDA #$01
1a27 : 85 1b __ STA ACCU + 0 
1a29 : a9 00 __ LDA #$00
1a2b : 85 1c __ STA ACCU + 1 
1a2d : 60 __ __ RTS
--------------------------------------------------------------------
inp_nop: ; inp_nop
1a2e : 4c 5b 08 JMP $085b ; (startup + 90)
--------------------------------------------------------------------
inp_const_8: ; inp_const_8
1a31 : b1 19 __ LDA (IP + 0),y 
1a33 : aa __ __ TAX
1a34 : c8 __ __ INY
1a35 : b1 19 __ LDA (IP + 0),y 
1a37 : 95 00 __ STA $00,x 
1a39 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_const_p8: ; inp_const_p8
1a3c : b1 19 __ LDA (IP + 0),y 
1a3e : aa __ __ TAX
1a3f : c8 __ __ INY
1a40 : b1 19 __ LDA (IP + 0),y 
1a42 : 95 00 __ STA $00,x 
1a44 : a9 00 __ LDA #$00
1a46 : 95 01 __ STA $01,x 
1a48 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_const_n8: ; inp_const_n8
1a4b : b1 19 __ LDA (IP + 0),y 
1a4d : aa __ __ TAX
1a4e : c8 __ __ INY
1a4f : b1 19 __ LDA (IP + 0),y 
1a51 : 95 00 __ STA $00,x 
1a53 : a9 ff __ LDA #$ff
1a55 : 95 01 __ STA $01,x 
1a57 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_const_16: ; inp_const_16
1a5a : b1 19 __ LDA (IP + 0),y 
1a5c : aa __ __ TAX
1a5d : c8 __ __ INY
1a5e : b1 19 __ LDA (IP + 0),y 
1a60 : 95 00 __ STA $00,x 
1a62 : c8 __ __ INY
1a63 : b1 19 __ LDA (IP + 0),y 
1a65 : 95 01 __ STA $01,x 
1a67 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_const_32: ; inp_const_32
1a6a : b1 19 __ LDA (IP + 0),y 
1a6c : aa __ __ TAX
1a6d : c8 __ __ INY
1a6e : b1 19 __ LDA (IP + 0),y 
1a70 : 95 00 __ STA $00,x 
1a72 : c8 __ __ INY
1a73 : b1 19 __ LDA (IP + 0),y 
1a75 : 95 01 __ STA $01,x 
1a77 : c8 __ __ INY
1a78 : b1 19 __ LDA (IP + 0),y 
1a7a : 95 02 __ STA $02,x 
1a7c : c8 __ __ INY
1a7d : b1 19 __ LDA (IP + 0),y 
1a7f : 95 03 __ STA WORK + 0,x 
1a81 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_load_reg_8: ; inp_load_reg_8
1a84 : b1 19 __ LDA (IP + 0),y 
1a86 : aa __ __ TAX
1a87 : b5 00 __ LDA $00,x 
1a89 : 85 1b __ STA ACCU + 0 
1a8b : a9 00 __ LDA #$00
1a8d : 85 1c __ STA ACCU + 1 
1a8f : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_store_reg_8: ; inp_store_reg_8
1a92 : b1 19 __ LDA (IP + 0),y 
1a94 : aa __ __ TAX
1a95 : a5 1b __ LDA ACCU + 0 
1a97 : 95 00 __ STA $00,x 
1a99 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_load_reg_16: ; inp_load_reg_16
1a9c : b1 19 __ LDA (IP + 0),y 
1a9e : aa __ __ TAX
1a9f : b5 00 __ LDA $00,x 
1aa1 : 85 1b __ STA ACCU + 0 
1aa3 : b5 01 __ LDA $01,x 
1aa5 : 85 1c __ STA ACCU + 1 
1aa7 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_store_reg_16: ; inp_store_reg_16
1aaa : b1 19 __ LDA (IP + 0),y 
1aac : aa __ __ TAX
1aad : a5 1b __ LDA ACCU + 0 
1aaf : 95 00 __ STA $00,x 
1ab1 : a5 1c __ LDA ACCU + 1 
1ab3 : 95 01 __ STA $01,x 
1ab5 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_load_reg_32: ; inp_load_reg_32
1ab8 : b1 19 __ LDA (IP + 0),y 
1aba : aa __ __ TAX
1abb : b5 00 __ LDA $00,x 
1abd : 85 1b __ STA ACCU + 0 
1abf : b5 01 __ LDA $01,x 
1ac1 : 85 1c __ STA ACCU + 1 
1ac3 : b5 02 __ LDA $02,x 
1ac5 : 85 1d __ STA ACCU + 2 
1ac7 : b5 03 __ LDA WORK + 0,x 
1ac9 : 85 1e __ STA ACCU + 3 
1acb : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_store_reg_32: ; inp_store_reg_32
1ace : b1 19 __ LDA (IP + 0),y 
1ad0 : aa __ __ TAX
1ad1 : a5 1b __ LDA ACCU + 0 
1ad3 : 95 00 __ STA $00,x 
1ad5 : a5 1c __ LDA ACCU + 1 
1ad7 : 95 01 __ STA $01,x 
1ad9 : a5 1d __ LDA ACCU + 2 
1adb : 95 02 __ STA $02,x 
1add : a5 1e __ LDA ACCU + 3 
1adf : 95 03 __ STA WORK + 0,x 
1ae1 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_load_abs_8: ; inp_load_abs_8
1ae4 : b1 19 __ LDA (IP + 0),y 
1ae6 : 85 1f __ STA ADDR + 0 
1ae8 : c8 __ __ INY
1ae9 : b1 19 __ LDA (IP + 0),y 
1aeb : 85 20 __ STA ADDR + 1 
1aed : c8 __ __ INY
1aee : b1 19 __ LDA (IP + 0),y 
1af0 : aa __ __ TAX
1af1 : 84 02 __ STY $02 
1af3 : a0 00 __ LDY #$00
1af5 : b1 1f __ LDA (ADDR + 0),y 
1af7 : 95 00 __ STA $00,x 
1af9 : 4c 4f 08 JMP $084f ; (startup + 78)
1afc : b1 19 __ LDA (IP + 0),y 
1afe : aa __ __ TAX
1aff : c8 __ __ INY
1b00 : b1 19 __ LDA (IP + 0),y 
1b02 : 84 02 __ STY $02 
1b04 : a8 __ __ TAY
1b05 : 4c f5 1a JMP $1af5 ; (inp_load_abs_8 + 17)
--------------------------------------------------------------------
inp_load_abs_u8: ; inp_load_abs_u8
1b08 : b1 19 __ LDA (IP + 0),y 
1b0a : 85 1f __ STA ADDR + 0 
1b0c : c8 __ __ INY
1b0d : b1 19 __ LDA (IP + 0),y 
1b0f : 85 20 __ STA ADDR + 1 
1b11 : c8 __ __ INY
1b12 : b1 19 __ LDA (IP + 0),y 
1b14 : aa __ __ TAX
1b15 : 84 02 __ STY $02 
1b17 : a0 00 __ LDY #$00
1b19 : b1 1f __ LDA (ADDR + 0),y 
1b1b : 95 00 __ STA $00,x 
1b1d : a9 00 __ LDA #$00
1b1f : 95 01 __ STA $01,x 
1b21 : 4c 4f 08 JMP $084f ; (startup + 78)
1b24 : b1 19 __ LDA (IP + 0),y 
1b26 : aa __ __ TAX
1b27 : c8 __ __ INY
1b28 : b1 19 __ LDA (IP + 0),y 
1b2a : 84 02 __ STY $02 
1b2c : a8 __ __ TAY
1b2d : 4c 19 1b JMP $1b19 ; (inp_load_abs_u8 + 17)
--------------------------------------------------------------------
inp_load_abs_16: ; inp_load_abs_16
1b30 : b1 19 __ LDA (IP + 0),y 
1b32 : 85 1f __ STA ADDR + 0 
1b34 : c8 __ __ INY
1b35 : b1 19 __ LDA (IP + 0),y 
1b37 : 85 20 __ STA ADDR + 1 
1b39 : c8 __ __ INY
1b3a : b1 19 __ LDA (IP + 0),y 
1b3c : aa __ __ TAX
1b3d : 84 02 __ STY $02 
1b3f : a0 00 __ LDY #$00
1b41 : b1 1f __ LDA (ADDR + 0),y 
1b43 : 95 00 __ STA $00,x 
1b45 : c8 __ __ INY
1b46 : b1 1f __ LDA (ADDR + 0),y 
1b48 : 95 01 __ STA $01,x 
1b4a : 4c 4f 08 JMP $084f ; (startup + 78)
1b4d : b1 19 __ LDA (IP + 0),y 
1b4f : aa __ __ TAX
1b50 : c8 __ __ INY
1b51 : b1 19 __ LDA (IP + 0),y 
1b53 : 84 02 __ STY $02 
1b55 : a8 __ __ TAY
1b56 : 4c 41 1b JMP $1b41 ; (inp_load_abs_16 + 17)
--------------------------------------------------------------------
inp_load_abs_32: ; inp_load_abs_32
1b59 : b1 19 __ LDA (IP + 0),y 
1b5b : 85 1f __ STA ADDR + 0 
1b5d : c8 __ __ INY
1b5e : b1 19 __ LDA (IP + 0),y 
1b60 : 85 20 __ STA ADDR + 1 
1b62 : c8 __ __ INY
1b63 : b1 19 __ LDA (IP + 0),y 
1b65 : aa __ __ TAX
1b66 : 84 02 __ STY $02 
1b68 : a0 00 __ LDY #$00
1b6a : b1 1f __ LDA (ADDR + 0),y 
1b6c : 95 00 __ STA $00,x 
1b6e : c8 __ __ INY
1b6f : b1 1f __ LDA (ADDR + 0),y 
1b71 : 95 01 __ STA $01,x 
1b73 : c8 __ __ INY
1b74 : b1 1f __ LDA (ADDR + 0),y 
1b76 : 95 02 __ STA $02,x 
1b78 : c8 __ __ INY
1b79 : b1 1f __ LDA (ADDR + 0),y 
1b7b : 95 03 __ STA WORK + 0,x 
1b7d : 4c 4f 08 JMP $084f ; (startup + 78)
1b80 : b1 19 __ LDA (IP + 0),y 
1b82 : aa __ __ TAX
1b83 : c8 __ __ INY
1b84 : b1 19 __ LDA (IP + 0),y 
1b86 : 84 02 __ STY $02 
1b88 : a8 __ __ TAY
1b89 : 4c 6a 1b JMP $1b6a ; (inp_load_abs_32 + 17)
--------------------------------------------------------------------
inp_store_abs_8: ; inp_store_abs_8
1b8c : b1 19 __ LDA (IP + 0),y 
1b8e : 85 1f __ STA ADDR + 0 
1b90 : c8 __ __ INY
1b91 : b1 19 __ LDA (IP + 0),y 
1b93 : 85 20 __ STA ADDR + 1 
1b95 : c8 __ __ INY
1b96 : b1 19 __ LDA (IP + 0),y 
1b98 : aa __ __ TAX
1b99 : 84 02 __ STY $02 
1b9b : a0 00 __ LDY #$00
1b9d : b5 00 __ LDA $00,x 
1b9f : 91 1f __ STA (ADDR + 0),y 
1ba1 : 4c 4f 08 JMP $084f ; (startup + 78)
1ba4 : b1 19 __ LDA (IP + 0),y 
1ba6 : aa __ __ TAX
1ba7 : c8 __ __ INY
1ba8 : b1 19 __ LDA (IP + 0),y 
1baa : 84 02 __ STY $02 
1bac : a8 __ __ TAY
1bad : 4c 9d 1b JMP $1b9d ; (inp_store_abs_8 + 17)
--------------------------------------------------------------------
inp_store_abs_16: ; inp_store_abs_16
1bb0 : b1 19 __ LDA (IP + 0),y 
1bb2 : 85 1f __ STA ADDR + 0 
1bb4 : c8 __ __ INY
1bb5 : b1 19 __ LDA (IP + 0),y 
1bb7 : 85 20 __ STA ADDR + 1 
1bb9 : c8 __ __ INY
1bba : b1 19 __ LDA (IP + 0),y 
1bbc : aa __ __ TAX
1bbd : 84 02 __ STY $02 
1bbf : a0 00 __ LDY #$00
1bc1 : b5 00 __ LDA $00,x 
1bc3 : 91 1f __ STA (ADDR + 0),y 
1bc5 : c8 __ __ INY
1bc6 : b5 01 __ LDA $01,x 
1bc8 : 91 1f __ STA (ADDR + 0),y 
1bca : 4c 4f 08 JMP $084f ; (startup + 78)
1bcd : b1 19 __ LDA (IP + 0),y 
1bcf : aa __ __ TAX
1bd0 : c8 __ __ INY
1bd1 : b1 19 __ LDA (IP + 0),y 
1bd3 : 84 02 __ STY $02 
1bd5 : a8 __ __ TAY
1bd6 : 4c c1 1b JMP $1bc1 ; (inp_store_abs_16 + 17)
--------------------------------------------------------------------
inp_store_abs_32: ; inp_store_abs_32
1bd9 : b1 19 __ LDA (IP + 0),y 
1bdb : 85 1f __ STA ADDR + 0 
1bdd : c8 __ __ INY
1bde : b1 19 __ LDA (IP + 0),y 
1be0 : 85 20 __ STA ADDR + 1 
1be2 : c8 __ __ INY
1be3 : b1 19 __ LDA (IP + 0),y 
1be5 : aa __ __ TAX
1be6 : 84 02 __ STY $02 
1be8 : a0 00 __ LDY #$00
1bea : b5 00 __ LDA $00,x 
1bec : 91 1f __ STA (ADDR + 0),y 
1bee : c8 __ __ INY
1bef : b5 01 __ LDA $01,x 
1bf1 : 91 1f __ STA (ADDR + 0),y 
1bf3 : c8 __ __ INY
1bf4 : b5 02 __ LDA $02,x 
1bf6 : 91 1f __ STA (ADDR + 0),y 
1bf8 : c8 __ __ INY
1bf9 : b5 03 __ LDA WORK + 0,x 
1bfb : 91 1f __ STA (ADDR + 0),y 
1bfd : 4c 4f 08 JMP $084f ; (startup + 78)
1c00 : b1 19 __ LDA (IP + 0),y 
1c02 : aa __ __ TAX
1c03 : c8 __ __ INY
1c04 : b1 19 __ LDA (IP + 0),y 
1c06 : 84 02 __ STY $02 
1c08 : a8 __ __ TAY
1c09 : 4c ea 1b JMP $1bea ; (inp_store_abs_32 + 17)
--------------------------------------------------------------------
inp_lea_abs: ; inp_lea_abs
1c0c : b1 19 __ LDA (IP + 0),y 
1c0e : aa __ __ TAX
1c0f : c8 __ __ INY
1c10 : b1 19 __ LDA (IP + 0),y 
1c12 : 95 00 __ STA $00,x 
1c14 : c8 __ __ INY
1c15 : b1 19 __ LDA (IP + 0),y 
1c17 : 95 01 __ STA $01,x 
1c19 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_load_local_8: ; inp_load_local_8
1c1c : b1 19 __ LDA (IP + 0),y 
1c1e : aa __ __ TAX
1c1f : c8 __ __ INY
1c20 : b1 19 __ LDA (IP + 0),y 
1c22 : 84 02 __ STY $02 
1c24 : a8 __ __ TAY
1c25 : b1 25 __ LDA (FP + 0),y 
1c27 : 95 00 __ STA $00,x 
1c29 : 4c 4f 08 JMP $084f ; (startup + 78)
--------------------------------------------------------------------
inp_load_local_u8: ; inp_load_local_u8
1c2c : b1 19 __ LDA (IP + 0),y 
1c2e : aa __ __ TAX
1c2f : c8 __ __ INY
1c30 : b1 19 __ LDA (IP + 0),y 
1c32 : 84 02 __ STY $02 
1c34 : a8 __ __ TAY
1c35 : b1 25 __ LDA (FP + 0),y 
1c37 : 95 00 __ STA $00,x 
1c39 : a9 00 __ LDA #$00
1c3b : 95 01 __ STA $01,x 
1c3d : 4c 4f 08 JMP $084f ; (startup + 78)
--------------------------------------------------------------------
inp_load_local_16: ; inp_load_local_16
1c40 : b1 19 __ LDA (IP + 0),y 
1c42 : aa __ __ TAX
1c43 : c8 __ __ INY
1c44 : b1 19 __ LDA (IP + 0),y 
1c46 : 84 02 __ STY $02 
1c48 : a8 __ __ TAY
1c49 : b1 25 __ LDA (FP + 0),y 
1c4b : 95 00 __ STA $00,x 
1c4d : c8 __ __ INY
1c4e : b1 25 __ LDA (FP + 0),y 
1c50 : 95 01 __ STA $01,x 
1c52 : 4c 4f 08 JMP $084f ; (startup + 78)
--------------------------------------------------------------------
inp_store_local_8: ; inp_store_local_8
1c55 : b1 19 __ LDA (IP + 0),y 
1c57 : aa __ __ TAX
1c58 : c8 __ __ INY
1c59 : b1 19 __ LDA (IP + 0),y 
1c5b : 84 02 __ STY $02 
1c5d : a8 __ __ TAY
1c5e : b5 00 __ LDA $00,x 
1c60 : 91 25 __ STA (FP + 0),y 
1c62 : 4c 4f 08 JMP $084f ; (startup + 78)
--------------------------------------------------------------------
inp_store_local_16: ; inp_store_local_16
1c65 : b1 19 __ LDA (IP + 0),y 
1c67 : aa __ __ TAX
1c68 : c8 __ __ INY
1c69 : b1 19 __ LDA (IP + 0),y 
1c6b : 84 02 __ STY $02 
1c6d : a8 __ __ TAY
1c6e : b5 00 __ LDA $00,x 
1c70 : 91 25 __ STA (FP + 0),y 
1c72 : c8 __ __ INY
1c73 : b5 01 __ LDA $01,x 
1c75 : 91 25 __ STA (FP + 0),y 
1c77 : 4c 4f 08 JMP $084f ; (startup + 78)
--------------------------------------------------------------------
inp_lea_local: ; inp_lea_local
1c7a : b1 19 __ LDA (IP + 0),y 
1c7c : aa __ __ TAX
1c7d : c8 __ __ INY
1c7e : 18 __ __ CLC
1c7f : b1 19 __ LDA (IP + 0),y 
1c81 : 65 25 __ ADC FP + 0 
1c83 : 95 00 __ STA $00,x 
1c85 : c8 __ __ INY
1c86 : b1 19 __ LDA (IP + 0),y 
1c88 : 65 26 __ ADC FP + 1 
1c8a : 95 01 __ STA $01,x 
1c8c : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_binop_orr_16: ; inp_binop_orr_16
1c8f : b1 19 __ LDA (IP + 0),y 
1c91 : aa __ __ TAX
1c92 : a5 1b __ LDA ACCU + 0 
1c94 : 15 00 __ ORA $00,x 
1c96 : 85 1b __ STA ACCU + 0 
1c98 : a5 1c __ LDA ACCU + 1 
1c9a : 15 01 __ ORA $01,x 
1c9c : 85 1c __ STA ACCU + 1 
1c9e : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_binop_addi_16: ; inp_binop_addi_16
1ca1 : b1 19 __ LDA (IP + 0),y 
1ca3 : c8 __ __ INY
1ca4 : aa __ __ TAX
1ca5 : 18 __ __ CLC
1ca6 : b5 00 __ LDA $00,x 
1ca8 : 71 19 __ ADC (IP + 0),y 
1caa : c8 __ __ INY
1cab : 95 00 __ STA $00,x 
1cad : b5 01 __ LDA $01,x 
1caf : 71 19 __ ADC (IP + 0),y 
1cb1 : 95 01 __ STA $01,x 
1cb3 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_binop_subi_16: ; inp_binop_subi_16
1cb6 : b1 19 __ LDA (IP + 0),y 
1cb8 : c8 __ __ INY
1cb9 : aa __ __ TAX
1cba : 38 __ __ SEC
1cbb : b1 19 __ LDA (IP + 0),y 
1cbd : c8 __ __ INY
1cbe : f5 00 __ SBC $00,x 
1cc0 : 95 00 __ STA $00,x 
1cc2 : b1 19 __ LDA (IP + 0),y 
1cc4 : f5 01 __ SBC $01,x 
1cc6 : 95 01 __ STA $01,x 
1cc8 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_binop_andi_16: ; inp_binop_andi_16
1ccb : b1 19 __ LDA (IP + 0),y 
1ccd : c8 __ __ INY
1cce : aa __ __ TAX
1ccf : b5 00 __ LDA $00,x 
1cd1 : 31 19 __ AND (IP + 0),y 
1cd3 : c8 __ __ INY
1cd4 : 95 00 __ STA $00,x 
1cd6 : b5 01 __ LDA $01,x 
1cd8 : 31 19 __ AND (IP + 0),y 
1cda : 95 01 __ STA $01,x 
1cdc : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_binop_ori_16: ; inp_binop_ori_16
1cdf : b1 19 __ LDA (IP + 0),y 
1ce1 : c8 __ __ INY
1ce2 : aa __ __ TAX
1ce3 : b5 00 __ LDA $00,x 
1ce5 : 11 19 __ ORA (IP + 0),y 
1ce7 : c8 __ __ INY
1ce8 : 95 00 __ STA $00,x 
1cea : b5 01 __ LDA $01,x 
1cec : 11 19 __ ORA (IP + 0),y 
1cee : 95 01 __ STA $01,x 
1cf0 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_binop_addi_8: ; inp_binop_addi_8
1cf3 : b1 19 __ LDA (IP + 0),y 
1cf5 : c8 __ __ INY
1cf6 : aa __ __ TAX
1cf7 : 18 __ __ CLC
1cf8 : b5 00 __ LDA $00,x 
1cfa : 71 19 __ ADC (IP + 0),y 
1cfc : 95 00 __ STA $00,x 
1cfe : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_binop_andi_8: ; inp_binop_andi_8
1d01 : b1 19 __ LDA (IP + 0),y 
1d03 : c8 __ __ INY
1d04 : aa __ __ TAX
1d05 : b5 00 __ LDA $00,x 
1d07 : 31 19 __ AND (IP + 0),y 
1d09 : 95 00 __ STA $00,x 
1d0b : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_binop_ori_8: ; inp_binop_ori_8
1d0e : b1 19 __ LDA (IP + 0),y 
1d10 : c8 __ __ INY
1d11 : aa __ __ TAX
1d12 : b5 00 __ LDA $00,x 
1d14 : 11 19 __ ORA (IP + 0),y 
1d16 : 95 00 __ STA $00,x 
1d18 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_binop_shl_16: ; inp_binop_shl_16
1d1b : b1 19 __ LDA (IP + 0),y 
1d1d : aa __ __ TAX
1d1e : b5 00 __ LDA $00,x 
1d20 : 2c b1 19 BIT $19b1 ; (inp_op_mulr_32 + 59)
1d23 : 29 0f __ AND #$0f
1d25 : f0 0b __ BEQ $1d32 ; (inp_binop_shl_16 + 23)
1d27 : aa __ __ TAX
1d28 : a5 1c __ LDA ACCU + 1 
1d2a : 06 1b __ ASL ACCU + 0 
1d2c : 2a __ __ ROL
1d2d : ca __ __ DEX
1d2e : d0 fa __ BNE $1d2a ; (inp_binop_shl_16 + 15)
1d30 : 85 1c __ STA ACCU + 1 
1d32 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_binop_shr_u16: ; inp_binop_shr_u16
1d35 : b1 19 __ LDA (IP + 0),y 
1d37 : aa __ __ TAX
1d38 : b5 00 __ LDA $00,x 
1d3a : 2c b1 19 BIT $19b1 ; (inp_op_mulr_32 + 59)
1d3d : 29 0f __ AND #$0f
1d3f : f0 0b __ BEQ $1d4c ; (inp_binop_shr_u16 + 23)
1d41 : aa __ __ TAX
1d42 : a5 1c __ LDA ACCU + 1 
1d44 : 4a __ __ LSR
1d45 : 66 1b __ ROR ACCU + 0 
1d47 : ca __ __ DEX
1d48 : d0 fa __ BNE $1d44 ; (inp_binop_shr_u16 + 15)
1d4a : 85 1c __ STA ACCU + 1 
1d4c : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_binop_shr_s16: ; inp_binop_shr_s16
1d4f : b1 19 __ LDA (IP + 0),y 
1d51 : aa __ __ TAX
1d52 : b5 00 __ LDA $00,x 
1d54 : 2c b1 19 BIT $19b1 ; (inp_op_mulr_32 + 59)
1d57 : 29 0f __ AND #$0f
1d59 : f0 0d __ BEQ $1d68 ; (inp_binop_shr_s16 + 25)
1d5b : aa __ __ TAX
1d5c : a5 1c __ LDA ACCU + 1 
1d5e : c9 80 __ CMP #$80
1d60 : 6a __ __ ROR
1d61 : 66 1b __ ROR ACCU + 0 
1d63 : ca __ __ DEX
1d64 : d0 f8 __ BNE $1d5e ; (inp_binop_shr_s16 + 15)
1d66 : 85 1c __ STA ACCU + 1 
1d68 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
cmp16: ; cmp16
1d6b : b1 19 __ LDA (IP + 0),y 
1d6d : aa __ __ TAX
1d6e : 38 __ __ SEC
1d6f : b5 01 __ LDA $01,x 
1d71 : e5 1c __ SBC ACCU + 1 
1d73 : f0 11 __ BEQ $1d86 ; (cmp16 + 27)
1d75 : 50 02 __ BVC $1d79 ; (cmp16 + 14)
1d77 : 49 80 __ EOR #$80
1d79 : 30 2a __ BMI $1da5 ; (cmp16 + 58)
1d7b : 10 33 __ BPL $1db0 ; (cmp16 + 69)
1d7d : b1 19 __ LDA (IP + 0),y 
1d7f : aa __ __ TAX
1d80 : b5 01 __ LDA $01,x 
1d82 : c5 1c __ CMP ACCU + 1 
1d84 : d0 28 __ BNE $1dae ; (cmp16 + 67)
1d86 : b5 00 __ LDA $00,x 
1d88 : c5 1b __ CMP ACCU + 0 
1d8a : d0 22 __ BNE $1dae ; (cmp16 + 67)
1d8c : f0 0e __ BEQ $1d9c ; (cmp16 + 49)
1d8e : b1 19 __ LDA (IP + 0),y 
1d90 : aa __ __ TAX
1d91 : c8 __ __ INY
1d92 : b1 19 __ LDA (IP + 0),y 
1d94 : c5 1c __ CMP ACCU + 1 
1d96 : d0 16 __ BNE $1dae ; (cmp16 + 67)
1d98 : e4 1b __ CPX ACCU + 0 
1d9a : d0 12 __ BNE $1dae ; (cmp16 + 67)
1d9c : a9 00 __ LDA #$00
1d9e : 85 1b __ STA ACCU + 0 
1da0 : 85 1c __ STA ACCU + 1 
1da2 : 4c 51 08 JMP $0851 ; (startup + 80)
1da5 : a9 ff __ LDA #$ff
1da7 : 85 1b __ STA ACCU + 0 
1da9 : 85 1c __ STA ACCU + 1 
1dab : 4c 51 08 JMP $0851 ; (startup + 80)
1dae : 90 f5 __ BCC $1da5 ; (cmp16 + 58)
1db0 : a9 01 __ LDA #$01
1db2 : 85 1b __ STA ACCU + 0 
1db4 : a9 00 __ LDA #$00
1db6 : 85 1c __ STA ACCU + 1 
1db8 : 4c 51 08 JMP $0851 ; (startup + 80)
1dbb : b1 19 __ LDA (IP + 0),y 
1dbd : c8 __ __ INY
1dbe : aa __ __ TAX
1dbf : b1 19 __ LDA (IP + 0),y 
1dc1 : 38 __ __ SEC
1dc2 : e5 1c __ SBC ACCU + 1 
1dc4 : d0 af __ BNE $1d75 ; (cmp16 + 10)
1dc6 : e4 1b __ CPX ACCU + 0 
1dc8 : d0 e4 __ BNE $1dae ; (cmp16 + 67)
1dca : f0 d0 __ BEQ $1d9c ; (cmp16 + 49)
1dcc : 60 __ __ RTS
--------------------------------------------------------------------
cmp8: ; cmp8
1dcd : b1 19 __ LDA (IP + 0),y 
1dcf : aa __ __ TAX
1dd0 : 38 __ __ SEC
1dd1 : b5 00 __ LDA $00,x 
1dd3 : e5 1b __ SBC ACCU + 0 
1dd5 : f0 19 __ BEQ $1df0 ; (cmp8 + 35)
1dd7 : 50 02 __ BVC $1ddb ; (cmp8 + 14)
1dd9 : 49 80 __ EOR #$80
1ddb : 30 1c __ BMI $1df9 ; (cmp8 + 44)
1ddd : 10 25 __ BPL $1e04 ; (cmp8 + 55)
1ddf : b1 19 __ LDA (IP + 0),y 
1de1 : aa __ __ TAX
1de2 : b5 00 __ LDA $00,x 
1de4 : c5 1b __ CMP ACCU + 0 
1de6 : d0 1a __ BNE $1e02 ; (cmp8 + 53)
1de8 : f0 06 __ BEQ $1df0 ; (cmp8 + 35)
1dea : b1 19 __ LDA (IP + 0),y 
1dec : c5 1b __ CMP ACCU + 0 
1dee : d0 12 __ BNE $1e02 ; (cmp8 + 53)
1df0 : a9 00 __ LDA #$00
1df2 : 85 1b __ STA ACCU + 0 
1df4 : 85 1c __ STA ACCU + 1 
1df6 : 4c 51 08 JMP $0851 ; (startup + 80)
1df9 : a9 ff __ LDA #$ff
1dfb : 85 1b __ STA ACCU + 0 
1dfd : 85 1c __ STA ACCU + 1 
1dff : 4c 51 08 JMP $0851 ; (startup + 80)
1e02 : 90 f5 __ BCC $1df9 ; (cmp8 + 44)
1e04 : a9 01 __ LDA #$01
1e06 : 85 1b __ STA ACCU + 0 
1e08 : a9 00 __ LDA #$00
1e0a : 85 1c __ STA ACCU + 1 
1e0c : 4c 51 08 JMP $0851 ; (startup + 80)
1e0f : b1 19 __ LDA (IP + 0),y 
1e11 : 38 __ __ SEC
1e12 : e5 1b __ SBC ACCU + 0 
1e14 : d0 c1 __ BNE $1dd7 ; (cmp8 + 10)
1e16 : f0 d8 __ BEQ $1df0 ; (cmp8 + 35)
1e18 : 60 __ __ RTS
--------------------------------------------------------------------
inp_op_invert_16: ; inp_op_invert_16
1e19 : a5 1b __ LDA ACCU + 0 
1e1b : 49 ff __ EOR #$ff
1e1d : 85 1b __ STA ACCU + 0 
1e1f : a5 1c __ LDA ACCU + 1 
1e21 : 49 ff __ EOR #$ff
1e23 : 85 1c __ STA ACCU + 1 
1e25 : 4c 52 08 JMP $0852 ; (startup + 81)
--------------------------------------------------------------------
inp_conv_s8_s16: ; inp_conv_s8_s16
1e28 : b1 19 __ LDA (IP + 0),y 
1e2a : aa __ __ TAX
1e2b : a9 80 __ LDA #$80
1e2d : 35 00 __ AND $00,x 
1e2f : 10 02 __ BPL $1e33 ; (inp_conv_s8_s16 + 11)
1e31 : a9 ff __ LDA #$ff
1e33 : 95 01 __ STA $01,x 
1e35 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
bra: ; bra
1e38 : b1 19 __ LDA (IP + 0),y 
1e3a : 30 0c __ BMI $1e48 ; (bra + 16)
1e3c : 38 __ __ SEC
1e3d : 65 19 __ ADC IP + 0 
1e3f : 85 19 __ STA IP + 0 
1e41 : 90 02 __ BCC $1e45 ; (bra + 13)
1e43 : e6 1a __ INC IP + 1 
1e45 : 4c 5b 08 JMP $085b ; (startup + 90)
1e48 : 38 __ __ SEC
1e49 : 65 19 __ ADC IP + 0 
1e4b : 85 19 __ STA IP + 0 
1e4d : b0 02 __ BCS $1e51 ; (bra + 25)
1e4f : c6 1a __ DEC IP + 1 
1e51 : 4c 5b 08 JMP $085b ; (startup + 90)
1e54 : a5 1b __ LDA ACCU + 0 
1e56 : 05 1c __ ORA ACCU + 1 
1e58 : f0 de __ BEQ $1e38 ; (bra + 0)
1e5a : 4c 51 08 JMP $0851 ; (startup + 80)
1e5d : a5 1b __ LDA ACCU + 0 
1e5f : 05 1c __ ORA ACCU + 1 
1e61 : d0 d5 __ BNE $1e38 ; (bra + 0)
1e63 : 4c 51 08 JMP $0851 ; (startup + 80)
1e66 : a5 1c __ LDA ACCU + 1 
1e68 : 30 04 __ BMI $1e6e ; (bra + 54)
1e6a : 05 1b __ ORA ACCU + 0 
1e6c : d0 ca __ BNE $1e38 ; (bra + 0)
1e6e : 4c 51 08 JMP $0851 ; (startup + 80)
1e71 : a5 1c __ LDA ACCU + 1 
1e73 : 10 c3 __ BPL $1e38 ; (bra + 0)
1e75 : 4c 51 08 JMP $0851 ; (startup + 80)
1e78 : a5 1c __ LDA ACCU + 1 
1e7a : 30 bc __ BMI $1e38 ; (bra + 0)
1e7c : 4c 51 08 JMP $0851 ; (startup + 80)
1e7f : a5 1c __ LDA ACCU + 1 
1e81 : 30 b5 __ BMI $1e38 ; (bra + 0)
1e83 : 05 1b __ ORA ACCU + 0 
1e85 : f0 b1 __ BEQ $1e38 ; (bra + 0)
1e87 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
braf: ; braf
1e8a : 38 __ __ SEC
1e8b : b1 19 __ LDA (IP + 0),y 
1e8d : 65 19 __ ADC IP + 0 
1e8f : aa __ __ TAX
1e90 : c8 __ __ INY
1e91 : b1 19 __ LDA (IP + 0),y 
1e93 : 65 1a __ ADC IP + 1 
1e95 : 85 1a __ STA IP + 1 
1e97 : 86 19 __ STX IP + 0 
1e99 : 4c 5b 08 JMP $085b ; (startup + 90)
1e9c : a5 1b __ LDA ACCU + 0 
1e9e : 05 1c __ ORA ACCU + 1 
1ea0 : f0 e8 __ BEQ $1e8a ; (braf + 0)
1ea2 : c8 __ __ INY
1ea3 : 4c 51 08 JMP $0851 ; (startup + 80)
1ea6 : a5 1b __ LDA ACCU + 0 
1ea8 : 05 1c __ ORA ACCU + 1 
1eaa : d0 de __ BNE $1e8a ; (braf + 0)
1eac : c8 __ __ INY
1ead : 4c 51 08 JMP $0851 ; (startup + 80)
1eb0 : a5 1c __ LDA ACCU + 1 
1eb2 : 30 04 __ BMI $1eb8 ; (braf + 46)
1eb4 : 05 1b __ ORA ACCU + 0 
1eb6 : d0 d2 __ BNE $1e8a ; (braf + 0)
1eb8 : c8 __ __ INY
1eb9 : 4c 51 08 JMP $0851 ; (startup + 80)
1ebc : a5 1c __ LDA ACCU + 1 
1ebe : 10 ca __ BPL $1e8a ; (braf + 0)
1ec0 : c8 __ __ INY
1ec1 : 4c 51 08 JMP $0851 ; (startup + 80)
1ec4 : a5 1c __ LDA ACCU + 1 
1ec6 : 30 c2 __ BMI $1e8a ; (braf + 0)
1ec8 : c8 __ __ INY
1ec9 : 4c 51 08 JMP $0851 ; (startup + 80)
1ecc : a5 1c __ LDA ACCU + 1 
1ece : 30 ba __ BMI $1e8a ; (braf + 0)
1ed0 : 05 1b __ ORA ACCU + 0 
1ed2 : f0 b6 __ BEQ $1e8a ; (braf + 0)
1ed4 : c8 __ __ INY
1ed5 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_jsr: ; inp_jsr
1ed8 : b1 19 __ LDA (IP + 0),y 
1eda : 8d ee 1e STA $1eee ; (inp_jsr + 22)
1edd : c8 __ __ INY
1ede : b1 19 __ LDA (IP + 0),y 
1ee0 : 8d ef 1e STA $1eef ; (inp_jsr + 23)
1ee3 : 98 __ __ TYA
1ee4 : 38 __ __ SEC
1ee5 : 65 19 __ ADC IP + 0 
1ee7 : 85 19 __ STA IP + 0 
1ee9 : 90 02 __ BCC $1eed ; (inp_jsr + 21)
1eeb : e6 1a __ INC IP + 1 
1eed : 20 00 00 JSR $0000 
1ef0 : 4c 4b 08 JMP $084b ; (startup + 74)
--------------------------------------------------------------------
inp_native: ; inp_native
1ef3 : 98 __ __ TYA
1ef4 : 18 __ __ CLC
1ef5 : 65 19 __ ADC IP + 0 
1ef7 : 8d 02 1f STA $1f02 ; (inp_native + 15)
1efa : a5 1a __ LDA IP + 1 
1efc : 69 00 __ ADC #$00
1efe : 8d 03 1f STA $1f03 ; (inp_native + 16)
1f01 : 20 00 00 JSR $0000 
1f04 : a0 00 __ LDY #$00
1f06 : b1 23 __ LDA (SP + 0),y 
1f08 : 85 19 __ STA IP + 0 
1f0a : c8 __ __ INY
1f0b : b1 23 __ LDA (SP + 0),y 
1f0d : 85 1a __ STA IP + 1 
1f0f : 88 __ __ DEY
1f10 : 4c 52 08 JMP $0852 ; (startup + 81)
--------------------------------------------------------------------
inp_enter: ; inp_enter
1f13 : 38 __ __ SEC
1f14 : a5 23 __ LDA SP + 0 
1f16 : f1 19 __ SBC (IP + 0),y 
1f18 : c8 __ __ INY
1f19 : 85 23 __ STA SP + 0 
1f1b : a5 24 __ LDA SP + 1 
1f1d : f1 19 __ SBC (IP + 0),y 
1f1f : c8 __ __ INY
1f20 : 85 24 __ STA SP + 1 
1f22 : b1 19 __ LDA (IP + 0),y 
1f24 : 84 02 __ STY $02 
1f26 : a8 __ __ TAY
1f27 : a5 25 __ LDA FP + 0 
1f29 : 91 23 __ STA (SP + 0),y 
1f2b : c8 __ __ INY
1f2c : a5 26 __ LDA FP + 1 
1f2e : 91 23 __ STA (SP + 0),y 
1f30 : 98 __ __ TYA
1f31 : 38 __ __ SEC
1f32 : 65 23 __ ADC SP + 0 
1f34 : 85 25 __ STA FP + 0 
1f36 : a9 00 __ LDA #$00
1f38 : 65 24 __ ADC SP + 1 
1f3a : 85 26 __ STA FP + 1 
1f3c : 88 __ __ DEY
1f3d : f0 08 __ BEQ $1f47 ; (inp_enter + 52)
1f3f : b9 52 00 LDA $0052,y 
1f42 : 88 __ __ DEY
1f43 : 91 23 __ STA (SP + 0),y 
1f45 : d0 f8 __ BNE $1f3f ; (inp_enter + 44)
1f47 : a4 02 __ LDY $02 
1f49 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_return: ; inp_return
1f4c : b1 19 __ LDA (IP + 0),y 
1f4e : c8 __ __ INY
1f4f : 84 02 __ STY $02 
1f51 : a8 __ __ TAY
1f52 : b1 23 __ LDA (SP + 0),y 
1f54 : 85 25 __ STA FP + 0 
1f56 : c8 __ __ INY
1f57 : b1 23 __ LDA (SP + 0),y 
1f59 : 85 26 __ STA FP + 1 
1f5b : 88 __ __ DEY
1f5c : f0 09 __ BEQ $1f67 ; (inp_return + 27)
1f5e : 88 __ __ DEY
1f5f : b1 23 __ LDA (SP + 0),y 
1f61 : 99 53 00 STA $0053,y 
1f64 : 88 __ __ DEY
1f65 : 10 f8 __ BPL $1f5f ; (inp_return + 19)
1f67 : a4 02 __ LDY $02 
1f69 : 18 __ __ CLC
1f6a : b1 19 __ LDA (IP + 0),y 
1f6c : c8 __ __ INY
1f6d : 65 23 __ ADC SP + 0 
1f6f : 85 23 __ STA SP + 0 
1f71 : b1 19 __ LDA (IP + 0),y 
1f73 : c8 __ __ INY
1f74 : 65 24 __ ADC SP + 1 
1f76 : 85 24 __ STA SP + 1 
1f78 : a0 01 __ LDY #$01
1f7a : b1 23 __ LDA (SP + 0),y 
1f7c : 85 1a __ STA IP + 1 
1f7e : 88 __ __ DEY
1f7f : b1 23 __ LDA (SP + 0),y 
1f81 : 85 19 __ STA IP + 0 
1f83 : 4c 52 08 JMP $0852 ; (startup + 81)
--------------------------------------------------------------------
inp_call: ; inp_call
1f86 : b1 19 __ LDA (IP + 0),y 
1f88 : 85 1f __ STA ADDR + 0 
1f8a : c8 __ __ INY
1f8b : b1 19 __ LDA (IP + 0),y 
1f8d : 85 20 __ STA ADDR + 1 
1f8f : c8 __ __ INY
1f90 : 98 __ __ TYA
1f91 : a0 00 __ LDY #$00
1f93 : 18 __ __ CLC
1f94 : 65 19 __ ADC IP + 0 
1f96 : 91 23 __ STA (SP + 0),y 
1f98 : c8 __ __ INY
1f99 : a5 1a __ LDA IP + 1 
1f9b : 69 00 __ ADC #$00
1f9d : 91 23 __ STA (SP + 0),y 
1f9f : a5 1f __ LDA ADDR + 0 
1fa1 : 85 19 __ STA IP + 0 
1fa3 : a5 20 __ LDA ADDR + 1 
1fa5 : 85 1a __ STA IP + 1 
1fa7 : 4c 4b 08 JMP $084b ; (startup + 74)
--------------------------------------------------------------------
inp_push_frame: ; inp_push_frame
1faa : 38 __ __ SEC
1fab : a5 23 __ LDA SP + 0 
1fad : f1 19 __ SBC (IP + 0),y 
1faf : c8 __ __ INY
1fb0 : 85 23 __ STA SP + 0 
1fb2 : a5 24 __ LDA SP + 1 
1fb4 : f1 19 __ SBC (IP + 0),y 
1fb6 : 85 24 __ STA SP + 1 
1fb8 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_pop_frame: ; inp_pop_frame
1fbb : 18 __ __ CLC
1fbc : b1 19 __ LDA (IP + 0),y 
1fbe : c8 __ __ INY
1fbf : 65 23 __ ADC SP + 0 
1fc1 : 85 23 __ STA SP + 0 
1fc3 : b1 19 __ LDA (IP + 0),y 
1fc5 : 65 24 __ ADC SP + 1 
1fc7 : 85 24 __ STA SP + 1 
1fc9 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_copy: ; inp_copy
1fcc : b1 19 __ LDA (IP + 0),y 
1fce : 84 02 __ STY $02 
1fd0 : a8 __ __ TAY
1fd1 : 88 __ __ DEY
1fd2 : f0 07 __ BEQ $1fdb ; (inp_copy + 15)
1fd4 : b1 1b __ LDA (ACCU + 0),y 
1fd6 : 91 1f __ STA (ADDR + 0),y 
1fd8 : 88 __ __ DEY
1fd9 : d0 f9 __ BNE $1fd4 ; (inp_copy + 8)
1fdb : b1 1b __ LDA (ACCU + 0),y 
1fdd : 91 1f __ STA (ADDR + 0),y 
1fdf : a4 02 __ LDY $02 
1fe1 : 4c 51 08 JMP $0851 ; (startup + 80)
--------------------------------------------------------------------
inp_op_extrt: ; inp_op_extrt
1fe4 : b1 19 __ LDA (IP + 0),y 
1fe6 : c8 __ __ INY
1fe7 : 8d f5 1f STA $1ff5 ; (inp_op_extrt + 17)
1fea : b1 19 __ LDA (IP + 0),y 
1fec : c8 __ __ INY
1fed : 8d f6 1f STA $1ff6 ; (inp_op_extrt + 18)
1ff0 : b1 19 __ LDA (IP + 0),y 
1ff2 : c8 __ __ INY
1ff3 : aa __ __ TAX
1ff4 : 20 00 00 JSR $0000 
1ff7 : 4c 52 08 JMP $0852 ; (startup + 81)
--------------------------------------------------------------------
spentry:
1ffa : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
a:
1ffb : __ __ __ BYT 57                                              : W
--------------------------------------------------------------------
b:
1ffc : __ __ __ BYT 8b 15 b2                                        : ...
--------------------------------------------------------------------
c:
1fff : __ __ __ BYT 57                                              : W
--------------------------------------------------------------------
d:
2000 : __ __ __ BYT 6f 78 d3 14 6f                                  : ox..o
--------------------------------------------------------------------
e:
2005 : __ __ __ BYT 57                                              : W
--------------------------------------------------------------------
f:
2006 : __ __ __ BYT 07 b2 e1 40 36 15 16 c5 81 6c                   : ...@6....l
--------------------------------------------------------------------
g:
2010 : __ __ __ BYT be                                              : .
--------------------------------------------------------------------
h:
2011 : __ __ __ BYT 6f 88 3c 2b 6f                                  : o.<+o
