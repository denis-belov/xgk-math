
/home/denis/reps/denis-belov/xgk-math/build/gnu-x64/o/object.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_ZN3XGK6OBJECT4initEPNS_6ObjectE>:
   0:	66 0f ef ed          	pxor   xmm5,xmm5
   4:	66 0f 6f 05 00 00 00 	movdqa xmm0,XMMWORD PTR [rip+0x0]        # c <_ZN3XGK6OBJECT4initEPNS_6ObjectE+0xc>
   b:	00 
   c:	66 0f 6f 0d 00 00 00 	movdqa xmm1,XMMWORD PTR [rip+0x0]        # 14 <_ZN3XGK6OBJECT4initEPNS_6ObjectE+0x14>
  13:	00 
  14:	66 0f 6f 15 00 00 00 	movdqa xmm2,XMMWORD PTR [rip+0x0]        # 1c <_ZN3XGK6OBJECT4initEPNS_6ObjectE+0x1c>
  1b:	00 
  1c:	66 0f 6f 1d 00 00 00 	movdqa xmm3,XMMWORD PTR [rip+0x0]        # 24 <_ZN3XGK6OBJECT4initEPNS_6ObjectE+0x24>
  23:	00 
  24:	66 0f 6f 25 00 00 00 	movdqa xmm4,XMMWORD PTR [rip+0x0]        # 2c <_ZN3XGK6OBJECT4initEPNS_6ObjectE+0x2c>
  2b:	00 
  2c:	0f 11 07             	movups XMMWORD PTR [rdi],xmm0
  2f:	0f 11 4f 10          	movups XMMWORD PTR [rdi+0x10],xmm1
  33:	0f 11 57 20          	movups XMMWORD PTR [rdi+0x20],xmm2
  37:	0f 11 5f 30          	movups XMMWORD PTR [rdi+0x30],xmm3
  3b:	0f 11 67 40          	movups XMMWORD PTR [rdi+0x40],xmm4
  3f:	0f 11 6f 50          	movups XMMWORD PTR [rdi+0x50],xmm5
  43:	c3                   	ret    
  44:	66 90                	xchg   ax,ax
  46:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4d:	00 00 00 

0000000000000050 <_ZN3XGK6OBJECT6setRotEPNS_6ObjectEPvf>:
  50:	48 83 c7 40          	add    rdi,0x40
  54:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # 5a <_ZN3XGK6OBJECT6setRotEPNS_6ObjectEPvf+0xa>
  5a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000060 <_ZN3XGK6OBJECT6preRotEPNS_6ObjectEPvf>:
  60:	48 83 c7 40          	add    rdi,0x40
  64:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # 6a <_ZN3XGK6OBJECT6preRotEPNS_6ObjectEPvf+0xa>
  6a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000070 <_ZN3XGK6OBJECT7postRotEPNS_6ObjectEPvf>:
  70:	48 83 c7 40          	add    rdi,0x40
  74:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # 7a <_ZN3XGK6OBJECT7postRotEPNS_6ObjectEPvf+0xa>
  7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000080 <_ZN3XGK6OBJECT7setRotXEPNS_6ObjectEf>:
  80:	48 83 c7 40          	add    rdi,0x40
  84:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # 8a <_ZN3XGK6OBJECT7setRotXEPNS_6ObjectEf+0xa>
  8a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000090 <_ZN3XGK6OBJECT7preRotXEPNS_6ObjectEf>:
  90:	48 83 c7 40          	add    rdi,0x40
  94:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # 9a <_ZN3XGK6OBJECT7preRotXEPNS_6ObjectEf+0xa>
  9a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000000a0 <_ZN3XGK6OBJECT8postRotXEPNS_6ObjectEf>:
  a0:	48 83 c7 40          	add    rdi,0x40
  a4:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # aa <_ZN3XGK6OBJECT8postRotXEPNS_6ObjectEf+0xa>
  aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000000b0 <_ZN3XGK6OBJECT7setRotYEPNS_6ObjectEf>:
  b0:	48 83 c7 40          	add    rdi,0x40
  b4:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # ba <_ZN3XGK6OBJECT7setRotYEPNS_6ObjectEf+0xa>
  ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000000c0 <_ZN3XGK6OBJECT7preRotYEPNS_6ObjectEf>:
  c0:	48 83 c7 40          	add    rdi,0x40
  c4:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # ca <_ZN3XGK6OBJECT7preRotYEPNS_6ObjectEf+0xa>
  ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000000d0 <_ZN3XGK6OBJECT8postRotYEPNS_6ObjectEf>:
  d0:	48 83 c7 40          	add    rdi,0x40
  d4:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # da <_ZN3XGK6OBJECT8postRotYEPNS_6ObjectEf+0xa>
  da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000000e0 <_ZN3XGK6OBJECT7setRotZEPNS_6ObjectEf>:
  e0:	48 83 c7 40          	add    rdi,0x40
  e4:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # ea <_ZN3XGK6OBJECT7setRotZEPNS_6ObjectEf+0xa>
  ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000000f0 <_ZN3XGK6OBJECT7preRotZEPNS_6ObjectEf>:
  f0:	48 83 c7 40          	add    rdi,0x40
  f4:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # fa <_ZN3XGK6OBJECT7preRotZEPNS_6ObjectEf+0xa>
  fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000100 <_ZN3XGK6OBJECT8postRotZEPNS_6ObjectEf>:
 100:	48 83 c7 40          	add    rdi,0x40
 104:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # 10a <_ZN3XGK6OBJECT8postRotZEPNS_6ObjectEf+0xa>
 10a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000110 <_ZN3XGK6OBJECT8setTransEPNS_6ObjectEPv>:
 110:	f3 0f 6f 06          	movdqu xmm0,XMMWORD PTR [rsi]
 114:	0f 11 47 50          	movups XMMWORD PTR [rdi+0x50],xmm0
 118:	c3                   	ret    
 119:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000000120 <_ZN3XGK6OBJECT5transEPNS_6ObjectEPvf>:
 120:	55                   	push   rbp
 121:	53                   	push   rbx
 122:	48 8d 6f 70          	lea    rbp,[rdi+0x70]
 126:	48 89 fb             	mov    rbx,rdi
 129:	48 83 ec 08          	sub    rsp,0x8
 12d:	f3 0f 6f 0e          	movdqu xmm1,XMMWORD PTR [rsi]
 131:	0f 11 4f 70          	movups XMMWORD PTR [rdi+0x70],xmm1
 135:	48 89 ef             	mov    rdi,rbp
 138:	ff 15 00 00 00 00    	call   QWORD PTR [rip+0x0]        # 13e <_ZN3XGK6OBJECT5transEPNS_6ObjectEPvf+0x1e>
 13e:	48 83 c4 08          	add    rsp,0x8
 142:	48 8d 7b 50          	lea    rdi,[rbx+0x50]
 146:	48 89 ee             	mov    rsi,rbp
 149:	5b                   	pop    rbx
 14a:	5d                   	pop    rbp
 14b:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # 151 <_ZN3XGK6OBJECT5transEPNS_6ObjectEPvf+0x31>
 151:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
 156:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 15d:	00 00 00 

0000000000000160 <_ZN3XGK6OBJECT9setTransXEPNS_6ObjectEf>:
 160:	f3 0f 11 47 50       	movss  DWORD PTR [rdi+0x50],xmm0
 165:	c3                   	ret    
 166:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 16d:	00 00 00 

0000000000000170 <_ZN3XGK6OBJECT6transXEPNS_6ObjectEf>:
 170:	f3 0f 58 47 50       	addss  xmm0,DWORD PTR [rdi+0x50]
 175:	f3 0f 11 47 50       	movss  DWORD PTR [rdi+0x50],xmm0
 17a:	c3                   	ret    
 17b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000180 <_ZN3XGK6OBJECT9setTransYEPNS_6ObjectEf>:
 180:	f3 0f 11 47 54       	movss  DWORD PTR [rdi+0x54],xmm0
 185:	c3                   	ret    
 186:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 18d:	00 00 00 

0000000000000190 <_ZN3XGK6OBJECT6transYEPNS_6ObjectEf>:
 190:	f3 0f 58 47 54       	addss  xmm0,DWORD PTR [rdi+0x54]
 195:	f3 0f 11 47 54       	movss  DWORD PTR [rdi+0x54],xmm0
 19a:	c3                   	ret    
 19b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000001a0 <_ZN3XGK6OBJECT9setTransZEPNS_6ObjectEf>:
 1a0:	f3 0f 11 47 58       	movss  DWORD PTR [rdi+0x58],xmm0
 1a5:	c3                   	ret    
 1a6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 1ad:	00 00 00 

00000000000001b0 <_ZN3XGK6OBJECT6transZEPNS_6ObjectEf>:
 1b0:	f3 0f 58 47 58       	addss  xmm0,DWORD PTR [rdi+0x58]
 1b5:	f3 0f 11 47 58       	movss  DWORD PTR [rdi+0x58],xmm0
 1ba:	c3                   	ret    
 1bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000001c0 <_ZN3XGK6OBJECT6updateEPNS_6ObjectE>:
 1c0:	55                   	push   rbp
 1c1:	53                   	push   rbx
 1c2:	48 8d 6f 40          	lea    rbp,[rdi+0x40]
 1c6:	48 89 fb             	mov    rbx,rdi
 1c9:	48 83 ec 08          	sub    rsp,0x8
 1cd:	48 89 ef             	mov    rdi,rbp
 1d0:	ff 15 00 00 00 00    	call   QWORD PTR [rip+0x0]        # 1d6 <_ZN3XGK6OBJECT6updateEPNS_6ObjectE+0x16>
 1d6:	48 89 ee             	mov    rsi,rbp
 1d9:	48 89 df             	mov    rdi,rbx
 1dc:	ff 15 00 00 00 00    	call   QWORD PTR [rip+0x0]        # 1e2 <_ZN3XGK6OBJECT6updateEPNS_6ObjectE+0x22>
 1e2:	48 83 c4 08          	add    rsp,0x8
 1e6:	48 8d 73 50          	lea    rsi,[rbx+0x50]
 1ea:	48 89 df             	mov    rdi,rbx
 1ed:	5b                   	pop    rbx
 1ee:	5d                   	pop    rbp
 1ef:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # 1f5 <_ZN3XGK6OBJECT6updateEPNS_6ObjectE+0x35>
 1f5:	90                   	nop
 1f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 1fd:	00 00 00 

0000000000000200 <_ZN3XGK6OBJECT7update2EPNS_6ObjectE>:
 200:	55                   	push   rbp
 201:	53                   	push   rbx
 202:	48 8d 6f 40          	lea    rbp,[rdi+0x40]
 206:	48 89 fb             	mov    rbx,rdi
 209:	48 83 ec 08          	sub    rsp,0x8
 20d:	48 89 ef             	mov    rdi,rbp
 210:	ff 15 00 00 00 00    	call   QWORD PTR [rip+0x0]        # 216 <_ZN3XGK6OBJECT7update2EPNS_6ObjectE+0x16>
 216:	48 8d 73 50          	lea    rsi,[rbx+0x50]
 21a:	48 89 df             	mov    rdi,rbx
 21d:	ff 15 00 00 00 00    	call   QWORD PTR [rip+0x0]        # 223 <_ZN3XGK6OBJECT7update2EPNS_6ObjectE+0x23>
 223:	48 83 c4 08          	add    rsp,0x8
 227:	48 89 ee             	mov    rsi,rbp
 22a:	48 89 df             	mov    rdi,rbx
 22d:	5b                   	pop    rbx
 22e:	5d                   	pop    rbp
 22f:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # 235 <_ZN3XGK6OBJECT7update2EPNS_6ObjectE+0x35>
 235:	90                   	nop
 236:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 23d:	00 00 00 

0000000000000240 <_ZN3XGK6OBJECT7update3EPNS_6ObjectE>:
 240:	55                   	push   rbp
 241:	53                   	push   rbx
 242:	48 8d 6f 60          	lea    rbp,[rdi+0x60]
 246:	48 89 fb             	mov    rbx,rdi
 249:	48 83 ec 08          	sub    rsp,0x8
 24d:	48 89 ee             	mov    rsi,rbp
 250:	f3 0f 10 05 00 00 00 	movss  xmm0,DWORD PTR [rip+0x0]        # 258 <_ZN3XGK6OBJECT7update3EPNS_6ObjectE+0x18>
 257:	00 
 258:	ff 15 00 00 00 00    	call   QWORD PTR [rip+0x0]        # 25e <_ZN3XGK6OBJECT7update3EPNS_6ObjectE+0x1e>
 25e:	48 8d 73 40          	lea    rsi,[rbx+0x40]
 262:	48 89 df             	mov    rdi,rbx
 265:	ff 15 00 00 00 00    	call   QWORD PTR [rip+0x0]        # 26b <_ZN3XGK6OBJECT7update3EPNS_6ObjectE+0x2b>
 26b:	48 89 ee             	mov    rsi,rbp
 26e:	48 89 df             	mov    rdi,rbx
 271:	f3 0f 10 05 00 00 00 	movss  xmm0,DWORD PTR [rip+0x0]        # 279 <_ZN3XGK6OBJECT7update3EPNS_6ObjectE+0x39>
 278:	00 
 279:	ff 15 00 00 00 00    	call   QWORD PTR [rip+0x0]        # 27f <_ZN3XGK6OBJECT7update3EPNS_6ObjectE+0x3f>
 27f:	48 83 c4 08          	add    rsp,0x8
 283:	48 8d 73 50          	lea    rsi,[rbx+0x50]
 287:	48 89 df             	mov    rdi,rbx
 28a:	5b                   	pop    rbx
 28b:	5d                   	pop    rbp
 28c:	ff 25 00 00 00 00    	jmp    QWORD PTR [rip+0x0]        # 292 <_ZN3XGK6OBJECT7update3EPNS_6ObjectE+0x52>
