
/home/denis/reps/denis-belov/xgk-math/build/gnu-x64/o/util.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_ZN3XGK4MATH4UTIL21makeBezierCurve3PointEPffffffffff>:
       0:	f3 44 0f 10 5c 24 08 	movss  xmm11,DWORD PTR [rsp+0x8]
       7:	f3 44 0f 10 05 00 00 	movss  xmm8,DWORD PTR [rip+0x0]        # 10 <_ZN3XGK4MATH4UTIL21makeBezierCurve3PointEPffffffffff+0x10>
       e:	00 00 
      10:	45 0f 28 e3          	movaps xmm12,xmm11
      14:	f3 45 0f 5c c3       	subss  xmm8,xmm11
      19:	45 0f 28 f3          	movaps xmm14,xmm11
      1d:	f3 45 0f 59 e3       	mulss  xmm12,xmm11
      22:	f3 44 0f 10 2d 00 00 	movss  xmm13,DWORD PTR [rip+0x0]        # 2b <_ZN3XGK4MATH4UTIL21makeBezierCurve3PointEPffffffffff+0x2b>
      29:	00 00 
      2b:	f3 45 0f 59 f5       	mulss  xmm14,xmm13
      30:	45 0f 28 d0          	movaps xmm10,xmm8
      34:	45 0f 28 c8          	movaps xmm9,xmm8
      38:	f3 45 0f 59 dc       	mulss  xmm11,xmm12
      3d:	f3 45 0f 59 d0       	mulss  xmm10,xmm8
      42:	f3 45 0f 59 c4       	mulss  xmm8,xmm12
      47:	f3 41 0f 59 f3       	mulss  xmm6,xmm11
      4c:	f3 45 0f 59 ca       	mulss  xmm9,xmm10
      51:	f3 45 0f 59 c5       	mulss  xmm8,xmm13
      56:	f3 45 0f 59 d6       	mulss  xmm10,xmm14
      5b:	f3 44 0f 59 df       	mulss  xmm11,xmm7
      60:	f3 41 0f 59 c1       	mulss  xmm0,xmm9
      65:	f3 41 0f 59 e0       	mulss  xmm4,xmm8
      6a:	f3 41 0f 59 d2       	mulss  xmm2,xmm10
      6f:	f3 41 0f 59 e8       	mulss  xmm5,xmm8
      74:	f3 41 0f 59 c9       	mulss  xmm1,xmm9
      79:	f3 41 0f 59 da       	mulss  xmm3,xmm10
      7e:	f3 0f 58 e6          	addss  xmm4,xmm6
      82:	f3 0f 58 c2          	addss  xmm0,xmm2
      86:	f3 41 0f 58 eb       	addss  xmm5,xmm11
      8b:	f3 0f 58 cb          	addss  xmm1,xmm3
      8f:	f3 0f 58 c4          	addss  xmm0,xmm4
      93:	f3 0f 58 e9          	addss  xmm5,xmm1
      97:	f3 0f 11 07          	movss  DWORD PTR [rdi],xmm0
      9b:	f3 0f 11 6f 04       	movss  DWORD PTR [rdi+0x4],xmm5
      a0:	c3                   	ret    
      a1:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
      a6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
      ad:	00 00 00 

00000000000000b0 <_ZN3XGK4MATH4UTIL24makeBezierCurve3SequenceEPfffffffffm>:
      b0:	48 85 f6             	test   rsi,rsi
      b3:	f3 0f 10 15 00 00 00 	movss  xmm2,DWORD PTR [rip+0x0]        # bb <_ZN3XGK4MATH4UTIL24makeBezierCurve3SequenceEPfffffffffm+0xb>
      ba:	00 
      bb:	0f 84 ea 02 00 00    	je     3ab <_ZN3XGK4MATH4UTIL24makeBezierCurve3SequenceEPfffffffffm+0x2fb>
      c1:	66 0f ef c0          	pxor   xmm0,xmm0
      c5:	f3 48 0f 2a c6       	cvtsi2ss xmm0,rsi
      ca:	79 1c                	jns    e8 <_ZN3XGK4MATH4UTIL24makeBezierCurve3SequenceEPfffffffffm+0x38>
      cc:	48 89 f0             	mov    rax,rsi
      cf:	48 89 f2             	mov    rdx,rsi
      d2:	66 0f ef c0          	pxor   xmm0,xmm0
      d6:	48 d1 e8             	shr    rax,1
      d9:	83 e2 01             	and    edx,0x1
      dc:	48 09 d0             	or     rax,rdx
      df:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
      e4:	f3 0f 58 c0          	addss  xmm0,xmm0
      e8:	f3 0f 10 15 00 00 00 	movss  xmm2,DWORD PTR [rip+0x0]        # f0 <_ZN3XGK4MATH4UTIL24makeBezierCurve3SequenceEPfffffffffm+0x40>
      ef:	00 
      f0:	48 89 f1             	mov    rcx,rsi
      f3:	45 31 c0             	xor    r8d,r8d
      f6:	0f 28 e2             	movaps xmm4,xmm2
      f9:	83 e1 03             	and    ecx,0x3
      fc:	f3 0f 10 35 00 00 00 	movss  xmm6,DWORD PTR [rip+0x0]        # 104 <_ZN3XGK4MATH4UTIL24makeBezierCurve3SequenceEPfffffffffm+0x54>
     103:	00 
     104:	f3 0f 5e e0          	divss  xmm4,xmm0
     108:	f3 0f 59 de          	mulss  xmm3,xmm6
     10c:	f3 0f 59 ee          	mulss  xmm5,xmm6
     110:	0f 84 ee 00 00 00    	je     204 <_ZN3XGK4MATH4UTIL24makeBezierCurve3SequenceEPfffffffffm+0x154>
     116:	48 83 f9 01          	cmp    rcx,0x1
     11a:	74 79                	je     195 <_ZN3XGK4MATH4UTIL24makeBezierCurve3SequenceEPfffffffffm+0xe5>
     11c:	48 83 f9 02          	cmp    rcx,0x2
     120:	74 0a                	je     12c <_ZN3XGK4MATH4UTIL24makeBezierCurve3SequenceEPfffffffffm+0x7c>
     122:	f3 0f 11 0f          	movss  DWORD PTR [rdi],xmm1
     126:	41 b8 01 00 00 00    	mov    r8d,0x1
     12c:	66 45 0f ef c0       	pxor   xmm8,xmm8
     131:	44 0f 28 d2          	movaps xmm10,xmm2
     135:	44 0f 28 d9          	movaps xmm11,xmm1
     139:	f3 4d 0f 2a c0       	cvtsi2ss xmm8,r8
     13e:	f3 44 0f 59 c4       	mulss  xmm8,xmm4
     143:	f3 45 0f 5c d0       	subss  xmm10,xmm8
     148:	45 0f 28 c8          	movaps xmm9,xmm8
     14c:	f3 45 0f 59 c8       	mulss  xmm9,xmm8
     151:	45 0f 28 ea          	movaps xmm13,xmm10
     155:	f3 45 0f 59 ea       	mulss  xmm13,xmm10
     15a:	45 0f 28 f1          	movaps xmm14,xmm9
     15e:	f3 44 0f 59 cf       	mulss  xmm9,xmm7
     163:	f3 44 0f 59 f5       	mulss  xmm14,xmm5
     168:	f3 45 0f 59 dd       	mulss  xmm11,xmm13
     16d:	f3 44 0f 59 eb       	mulss  xmm13,xmm3
     172:	f3 45 0f 58 f3       	addss  xmm14,xmm11
     177:	f3 45 0f 58 e9       	addss  xmm13,xmm9
     17c:	f3 45 0f 59 f2       	mulss  xmm14,xmm10
     181:	f3 45 0f 59 e8       	mulss  xmm13,xmm8
     186:	f3 45 0f 58 ee       	addss  xmm13,xmm14
     18b:	f3 46 0f 11 2c 87    	movss  DWORD PTR [rdi+r8*4],xmm13
     191:	49 83 c0 01          	add    r8,0x1
     195:	66 45 0f ef c0       	pxor   xmm8,xmm8
     19a:	44 0f 28 e2          	movaps xmm12,xmm2
     19e:	44 0f 28 e9          	movaps xmm13,xmm1
     1a2:	f3 4d 0f 2a c0       	cvtsi2ss xmm8,r8
     1a7:	f3 44 0f 59 c4       	mulss  xmm8,xmm4
     1ac:	f3 45 0f 5c e0       	subss  xmm12,xmm8
     1b1:	45 0f 28 d0          	movaps xmm10,xmm8
     1b5:	f3 45 0f 59 d0       	mulss  xmm10,xmm8
     1ba:	41 0f 28 c4          	movaps xmm0,xmm12
     1be:	f3 41 0f 59 c4       	mulss  xmm0,xmm12
     1c3:	41 0f 28 f2          	movaps xmm6,xmm10
     1c7:	f3 44 0f 59 d7       	mulss  xmm10,xmm7
     1cc:	f3 0f 59 f5          	mulss  xmm6,xmm5
     1d0:	f3 44 0f 59 e8       	mulss  xmm13,xmm0
     1d5:	f3 0f 59 c3          	mulss  xmm0,xmm3
     1d9:	f3 41 0f 58 f5       	addss  xmm6,xmm13
     1de:	f3 41 0f 58 c2       	addss  xmm0,xmm10
     1e3:	f3 41 0f 59 f4       	mulss  xmm6,xmm12
     1e8:	f3 41 0f 59 c0       	mulss  xmm0,xmm8
     1ed:	f3 0f 58 c6          	addss  xmm0,xmm6
     1f1:	f3 42 0f 11 04 87    	movss  DWORD PTR [rdi+r8*4],xmm0
     1f7:	49 83 c0 01          	add    r8,0x1
     1fb:	4c 39 c6             	cmp    rsi,r8
     1fe:	0f 84 a7 01 00 00    	je     3ab <_ZN3XGK4MATH4UTIL24makeBezierCurve3SequenceEPfffffffffm+0x2fb>
     204:	66 45 0f ef c0       	pxor   xmm8,xmm8
     209:	44 0f 28 fa          	movaps xmm15,xmm2
     20d:	44 0f 28 d9          	movaps xmm11,xmm1
     211:	4d 8d 48 01          	lea    r9,[r8+0x1]
     215:	44 0f 28 d2          	movaps xmm10,xmm2
     219:	4d 8d 50 02          	lea    r10,[r8+0x2]
     21d:	f3 4d 0f 2a c0       	cvtsi2ss xmm8,r8
     222:	4d 8d 58 03          	lea    r11,[r8+0x3]
     226:	f3 44 0f 59 c4       	mulss  xmm8,xmm4
     22b:	f3 45 0f 5c f8       	subss  xmm15,xmm8
     230:	45 0f 28 c8          	movaps xmm9,xmm8
     234:	f3 45 0f 59 c8       	mulss  xmm9,xmm8
     239:	45 0f 28 e7          	movaps xmm12,xmm15
     23d:	f3 45 0f 59 e7       	mulss  xmm12,xmm15
     242:	41 0f 28 c1          	movaps xmm0,xmm9
     246:	f3 44 0f 59 cf       	mulss  xmm9,xmm7
     24b:	f3 0f 59 c5          	mulss  xmm0,xmm5
     24f:	f3 45 0f 59 dc       	mulss  xmm11,xmm12
     254:	f3 44 0f 59 e3       	mulss  xmm12,xmm3
     259:	f3 41 0f 58 c3       	addss  xmm0,xmm11
     25e:	44 0f 28 d9          	movaps xmm11,xmm1
     262:	f3 45 0f 58 e1       	addss  xmm12,xmm9
     267:	f3 41 0f 59 c7       	mulss  xmm0,xmm15
     26c:	f3 45 0f 59 e0       	mulss  xmm12,xmm8
     271:	66 45 0f ef c0       	pxor   xmm8,xmm8
     276:	f3 4d 0f 2a c1       	cvtsi2ss xmm8,r9
     27b:	f3 44 0f 58 e0       	addss  xmm12,xmm0
     280:	f3 46 0f 11 24 87    	movss  DWORD PTR [rdi+r8*4],xmm12
     286:	44 0f 28 e1          	movaps xmm12,xmm1
     28a:	49 83 c0 04          	add    r8,0x4
     28e:	4c 39 c6             	cmp    rsi,r8
     291:	f3 44 0f 59 c4       	mulss  xmm8,xmm4
     296:	f3 45 0f 5c d0       	subss  xmm10,xmm8
     29b:	45 0f 28 f8          	movaps xmm15,xmm8
     29f:	f3 45 0f 59 f8       	mulss  xmm15,xmm8
     2a4:	45 0f 28 f2          	movaps xmm14,xmm10
     2a8:	f3 45 0f 59 f2       	mulss  xmm14,xmm10
     2ad:	41 0f 28 f7          	movaps xmm6,xmm15
     2b1:	f3 44 0f 59 ff       	mulss  xmm15,xmm7
     2b6:	f3 0f 59 f5          	mulss  xmm6,xmm5
     2ba:	f3 45 0f 59 e6       	mulss  xmm12,xmm14
     2bf:	f3 44 0f 59 f3       	mulss  xmm14,xmm3
     2c4:	f3 41 0f 58 f4       	addss  xmm6,xmm12
     2c9:	44 0f 28 e2          	movaps xmm12,xmm2
     2cd:	f3 45 0f 58 f7       	addss  xmm14,xmm15
     2d2:	f3 41 0f 59 f2       	mulss  xmm6,xmm10
     2d7:	44 0f 28 d2          	movaps xmm10,xmm2
     2db:	f3 45 0f 59 f0       	mulss  xmm14,xmm8
     2e0:	66 45 0f ef c0       	pxor   xmm8,xmm8
     2e5:	f3 4d 0f 2a c2       	cvtsi2ss xmm8,r10
     2ea:	f3 44 0f 58 f6       	addss  xmm14,xmm6
     2ef:	f3 46 0f 11 34 8f    	movss  DWORD PTR [rdi+r9*4],xmm14
     2f5:	f3 44 0f 59 c4       	mulss  xmm8,xmm4
     2fa:	f3 45 0f 5c d0       	subss  xmm10,xmm8
     2ff:	45 0f 28 c8          	movaps xmm9,xmm8
     303:	f3 45 0f 59 c8       	mulss  xmm9,xmm8
     308:	41 0f 28 c2          	movaps xmm0,xmm10
     30c:	f3 41 0f 59 c2       	mulss  xmm0,xmm10
     311:	45 0f 28 f1          	movaps xmm14,xmm9
     315:	f3 44 0f 59 cf       	mulss  xmm9,xmm7
     31a:	f3 44 0f 59 f5       	mulss  xmm14,xmm5
     31f:	f3 44 0f 59 d8       	mulss  xmm11,xmm0
     324:	f3 0f 59 c3          	mulss  xmm0,xmm3
     328:	f3 45 0f 58 f3       	addss  xmm14,xmm11
     32d:	f3 41 0f 58 c1       	addss  xmm0,xmm9
     332:	f3 45 0f 59 f2       	mulss  xmm14,xmm10
     337:	f3 41 0f 59 c0       	mulss  xmm0,xmm8
     33c:	66 45 0f ef c0       	pxor   xmm8,xmm8
     341:	f3 4d 0f 2a c3       	cvtsi2ss xmm8,r11
     346:	f3 41 0f 58 c6       	addss  xmm0,xmm14
     34b:	f3 42 0f 11 04 97    	movss  DWORD PTR [rdi+r10*4],xmm0
     351:	0f 28 c1             	movaps xmm0,xmm1
     354:	f3 44 0f 59 c4       	mulss  xmm8,xmm4
     359:	f3 45 0f 5c e0       	subss  xmm12,xmm8
     35e:	45 0f 28 d0          	movaps xmm10,xmm8
     362:	f3 45 0f 59 d0       	mulss  xmm10,xmm8
     367:	45 0f 28 ec          	movaps xmm13,xmm12
     36b:	f3 45 0f 59 ec       	mulss  xmm13,xmm12
     370:	41 0f 28 f2          	movaps xmm6,xmm10
     374:	f3 44 0f 59 d7       	mulss  xmm10,xmm7
     379:	f3 0f 59 f5          	mulss  xmm6,xmm5
     37d:	f3 41 0f 59 c5       	mulss  xmm0,xmm13
     382:	f3 44 0f 59 eb       	mulss  xmm13,xmm3
     387:	f3 0f 58 f0          	addss  xmm6,xmm0
     38b:	f3 45 0f 58 ea       	addss  xmm13,xmm10
     390:	f3 41 0f 59 f4       	mulss  xmm6,xmm12
     395:	f3 45 0f 59 e8       	mulss  xmm13,xmm8
     39a:	f3 44 0f 58 ee       	addss  xmm13,xmm6
     39f:	f3 46 0f 11 2c 9f    	movss  DWORD PTR [rdi+r11*4],xmm13
     3a5:	0f 85 59 fe ff ff    	jne    204 <_ZN3XGK4MATH4UTIL24makeBezierCurve3SequenceEPfffffffffm+0x154>
     3ab:	f3 0f 11 54 b7 fc    	movss  DWORD PTR [rdi+rsi*4-0x4],xmm2
     3b1:	c3                   	ret    
     3b2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     3b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     3bd:	00 00 00 

00000000000003c0 <_ZN3XGK4MATH4UTIL25makeBezierCurve3Sequence2EPfffffm>:
     3c0:	f3 0f 10 15 00 00 00 	movss  xmm2,DWORD PTR [rip+0x0]        # 3c8 <_ZN3XGK4MATH4UTIL25makeBezierCurve3Sequence2EPfffffm+0x8>
     3c7:	00 
     3c8:	48 85 f6             	test   rsi,rsi
     3cb:	f3 0f 59 ca          	mulss  xmm1,xmm2
     3cf:	f3 0f 10 25 00 00 00 	movss  xmm4,DWORD PTR [rip+0x0]        # 3d7 <_ZN3XGK4MATH4UTIL25makeBezierCurve3Sequence2EPfffffm+0x17>
     3d6:	00 
     3d7:	0f 84 68 02 00 00    	je     645 <_ZN3XGK4MATH4UTIL25makeBezierCurve3Sequence2EPfffffm+0x285>
     3dd:	66 0f ef c0          	pxor   xmm0,xmm0
     3e1:	f3 48 0f 2a c6       	cvtsi2ss xmm0,rsi
     3e6:	79 1c                	jns    404 <_ZN3XGK4MATH4UTIL25makeBezierCurve3Sequence2EPfffffm+0x44>
     3e8:	48 89 f0             	mov    rax,rsi
     3eb:	48 89 f2             	mov    rdx,rsi
     3ee:	66 0f ef c0          	pxor   xmm0,xmm0
     3f2:	48 d1 e8             	shr    rax,1
     3f5:	83 e2 01             	and    edx,0x1
     3f8:	48 09 d0             	or     rax,rdx
     3fb:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
     400:	f3 0f 58 c0          	addss  xmm0,xmm0
     404:	f3 0f 10 25 00 00 00 	movss  xmm4,DWORD PTR [rip+0x0]        # 40c <_ZN3XGK4MATH4UTIL25makeBezierCurve3Sequence2EPfffffm+0x4c>
     40b:	00 
     40c:	48 89 f1             	mov    rcx,rsi
     40f:	45 31 c0             	xor    r8d,r8d
     412:	0f 28 ec             	movaps xmm5,xmm4
     415:	83 e1 03             	and    ecx,0x3
     418:	f3 0f 59 da          	mulss  xmm3,xmm2
     41c:	f3 0f 5e e8          	divss  xmm5,xmm0
     420:	0f 84 cc 00 00 00    	je     4f2 <_ZN3XGK4MATH4UTIL25makeBezierCurve3Sequence2EPfffffm+0x132>
     426:	48 83 f9 01          	cmp    rcx,0x1
     42a:	74 67                	je     493 <_ZN3XGK4MATH4UTIL25makeBezierCurve3Sequence2EPfffffm+0xd3>
     42c:	48 83 f9 02          	cmp    rcx,0x2
     430:	74 0c                	je     43e <_ZN3XGK4MATH4UTIL25makeBezierCurve3Sequence2EPfffffm+0x7e>
     432:	c7 07 00 00 00 00    	mov    DWORD PTR [rdi],0x0
     438:	41 b8 01 00 00 00    	mov    r8d,0x1
     43e:	0f 28 fc             	movaps xmm7,xmm4
     441:	66 45 0f ef c9       	pxor   xmm9,xmm9
     446:	f3 4d 0f 2a c8       	cvtsi2ss xmm9,r8
     44b:	f3 44 0f 59 cd       	mulss  xmm9,xmm5
     450:	41 0f 28 f1          	movaps xmm6,xmm9
     454:	45 0f 28 d1          	movaps xmm10,xmm9
     458:	f3 41 0f 59 f1       	mulss  xmm6,xmm9
     45d:	f3 41 0f 5c f9       	subss  xmm7,xmm9
     462:	f3 44 0f 59 d1       	mulss  xmm10,xmm1
     467:	44 0f 28 c6          	movaps xmm8,xmm6
     46b:	f3 44 0f 59 ce       	mulss  xmm9,xmm6
     470:	f3 44 0f 59 d7       	mulss  xmm10,xmm7
     475:	f3 44 0f 59 c3       	mulss  xmm8,xmm3
     47a:	f3 45 0f 58 d0       	addss  xmm10,xmm8
     47f:	f3 44 0f 59 d7       	mulss  xmm10,xmm7
     484:	f3 45 0f 58 d1       	addss  xmm10,xmm9
     489:	f3 46 0f 11 14 87    	movss  DWORD PTR [rdi+r8*4],xmm10
     48f:	49 83 c0 01          	add    r8,0x1
     493:	66 45 0f ef db       	pxor   xmm11,xmm11
     498:	44 0f 28 e4          	movaps xmm12,xmm4
     49c:	f3 4d 0f 2a d8       	cvtsi2ss xmm11,r8
     4a1:	f3 44 0f 59 dd       	mulss  xmm11,xmm5
     4a6:	45 0f 28 eb          	movaps xmm13,xmm11
     4aa:	45 0f 28 f3          	movaps xmm14,xmm11
     4ae:	f3 45 0f 59 eb       	mulss  xmm13,xmm11
     4b3:	f3 45 0f 5c e3       	subss  xmm12,xmm11
     4b8:	f3 44 0f 59 f1       	mulss  xmm14,xmm1
     4bd:	45 0f 28 fd          	movaps xmm15,xmm13
     4c1:	f3 45 0f 59 dd       	mulss  xmm11,xmm13
     4c6:	f3 45 0f 59 f4       	mulss  xmm14,xmm12
     4cb:	f3 44 0f 59 fb       	mulss  xmm15,xmm3
     4d0:	f3 45 0f 58 f7       	addss  xmm14,xmm15
     4d5:	f3 45 0f 59 f4       	mulss  xmm14,xmm12
     4da:	f3 45 0f 58 f3       	addss  xmm14,xmm11
     4df:	f3 46 0f 11 34 87    	movss  DWORD PTR [rdi+r8*4],xmm14
     4e5:	49 83 c0 01          	add    r8,0x1
     4e9:	4c 39 c6             	cmp    rsi,r8
     4ec:	0f 84 53 01 00 00    	je     645 <_ZN3XGK4MATH4UTIL25makeBezierCurve3Sequence2EPfffffm+0x285>
     4f2:	66 45 0f ef d2       	pxor   xmm10,xmm10
     4f7:	4d 8d 48 01          	lea    r9,[r8+0x1]
     4fb:	4d 8d 50 02          	lea    r10,[r8+0x2]
     4ff:	66 0f ef d2          	pxor   xmm2,xmm2
     503:	4d 8d 58 03          	lea    r11,[r8+0x3]
     507:	44 0f 28 dc          	movaps xmm11,xmm4
     50b:	f3 4d 0f 2a d1       	cvtsi2ss xmm10,r9
     510:	f3 49 0f 2a d0       	cvtsi2ss xmm2,r8
     515:	66 45 0f ef f6       	pxor   xmm14,xmm14
     51a:	44 0f 28 cc          	movaps xmm9,xmm4
     51e:	44 0f 28 fc          	movaps xmm15,xmm4
     522:	f3 4d 0f 2a f2       	cvtsi2ss xmm14,r10
     527:	f3 44 0f 59 d5       	mulss  xmm10,xmm5
     52c:	f3 0f 59 d5          	mulss  xmm2,xmm5
     530:	45 0f 28 e2          	movaps xmm12,xmm10
     534:	45 0f 28 ea          	movaps xmm13,xmm10
     538:	f3 45 0f 59 e2       	mulss  xmm12,xmm10
     53d:	f3 45 0f 5c da       	subss  xmm11,xmm10
     542:	f3 44 0f 59 e9       	mulss  xmm13,xmm1
     547:	0f 28 fa             	movaps xmm7,xmm2
     54a:	0f 28 c2             	movaps xmm0,xmm2
     54d:	f3 44 0f 59 f5       	mulss  xmm14,xmm5
     552:	f3 0f 59 fa          	mulss  xmm7,xmm2
     556:	f3 44 0f 5c ca       	subss  xmm9,xmm2
     55b:	45 0f 28 c4          	movaps xmm8,xmm12
     55f:	f3 45 0f 59 d4       	mulss  xmm10,xmm12
     564:	f3 45 0f 59 eb       	mulss  xmm13,xmm11
     569:	f3 44 0f 59 c3       	mulss  xmm8,xmm3
     56e:	f3 45 0f 5c fe       	subss  xmm15,xmm14
     573:	f3 0f 59 c1          	mulss  xmm0,xmm1
     577:	0f 28 f7             	movaps xmm6,xmm7
     57a:	f3 0f 59 d7          	mulss  xmm2,xmm7
     57e:	f3 0f 59 f3          	mulss  xmm6,xmm3
     582:	f3 45 0f 58 e8       	addss  xmm13,xmm8
     587:	f3 41 0f 59 c1       	mulss  xmm0,xmm9
     58c:	f3 45 0f 59 eb       	mulss  xmm13,xmm11
     591:	44 0f 28 dc          	movaps xmm11,xmm4
     595:	f3 0f 58 c6          	addss  xmm0,xmm6
     599:	f3 45 0f 58 ea       	addss  xmm13,xmm10
     59e:	66 45 0f ef d2       	pxor   xmm10,xmm10
     5a3:	f3 41 0f 59 c1       	mulss  xmm0,xmm9
     5a8:	45 0f 28 ce          	movaps xmm9,xmm14
     5ac:	f3 4d 0f 2a d3       	cvtsi2ss xmm10,r11
     5b1:	f3 0f 58 c2          	addss  xmm0,xmm2
     5b5:	41 0f 28 d6          	movaps xmm2,xmm14
     5b9:	f3 44 0f 59 c9       	mulss  xmm9,xmm1
     5be:	f3 41 0f 59 d6       	mulss  xmm2,xmm14
     5c3:	f3 42 0f 11 04 87    	movss  DWORD PTR [rdi+r8*4],xmm0
     5c9:	49 83 c0 04          	add    r8,0x4
     5cd:	f3 45 0f 59 cf       	mulss  xmm9,xmm15
     5d2:	4c 39 c6             	cmp    rsi,r8
     5d5:	f3 46 0f 11 2c 8f    	movss  DWORD PTR [rdi+r9*4],xmm13
     5db:	0f 28 fa             	movaps xmm7,xmm2
     5de:	f3 44 0f 59 f2       	mulss  xmm14,xmm2
     5e3:	f3 0f 59 fb          	mulss  xmm7,xmm3
     5e7:	f3 44 0f 59 d5       	mulss  xmm10,xmm5
     5ec:	f3 44 0f 58 cf       	addss  xmm9,xmm7
     5f1:	41 0f 28 f2          	movaps xmm6,xmm10
     5f5:	f3 45 0f 59 cf       	mulss  xmm9,xmm15
     5fa:	41 0f 28 c2          	movaps xmm0,xmm10
     5fe:	f3 41 0f 59 f2       	mulss  xmm6,xmm10
     603:	f3 45 0f 5c da       	subss  xmm11,xmm10
     608:	f3 0f 59 c1          	mulss  xmm0,xmm1
     60c:	f3 45 0f 58 ce       	addss  xmm9,xmm14
     611:	44 0f 28 e6          	movaps xmm12,xmm6
     615:	f3 44 0f 59 d6       	mulss  xmm10,xmm6
     61a:	f3 41 0f 59 c3       	mulss  xmm0,xmm11
     61f:	f3 44 0f 59 e3       	mulss  xmm12,xmm3
     624:	f3 46 0f 11 0c 97    	movss  DWORD PTR [rdi+r10*4],xmm9
     62a:	f3 41 0f 58 c4       	addss  xmm0,xmm12
     62f:	f3 41 0f 59 c3       	mulss  xmm0,xmm11
     634:	f3 41 0f 58 c2       	addss  xmm0,xmm10
     639:	f3 42 0f 11 04 9f    	movss  DWORD PTR [rdi+r11*4],xmm0
     63f:	0f 85 ad fe ff ff    	jne    4f2 <_ZN3XGK4MATH4UTIL25makeBezierCurve3Sequence2EPfffffm+0x132>
     645:	f3 0f 11 64 b7 fc    	movss  DWORD PTR [rdi+rsi*4-0x4],xmm4
     64b:	c3                   	ret    
     64c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000650 <_ZN3XGK4MATH4UTIL23makeBezierCurve2Point3DEPfS2_S2_S2_f>:
     650:	f3 0f 10 1d 00 00 00 	movss  xmm3,DWORD PTR [rip+0x0]        # 658 <_ZN3XGK4MATH4UTIL23makeBezierCurve2Point3DEPfS2_S2_S2_f+0x8>
     657:	00 
     658:	66 0f ef ed          	pxor   xmm5,xmm5
     65c:	f3 0f 5c d8          	subss  xmm3,xmm0
     660:	66 0f ef c9          	pxor   xmm1,xmm1
     664:	66 0f ef e4          	pxor   xmm4,xmm4
     668:	0f 11 2f             	movups XMMWORD PTR [rdi],xmm5
     66b:	4c 8b 06             	mov    r8,QWORD PTR [rsi]
     66e:	48 8b 46 08          	mov    rax,QWORD PTR [rsi+0x8]
     672:	0f 28 d3             	movaps xmm2,xmm3
     675:	f3 0f 5a c8          	cvtss2sd xmm1,xmm0
     679:	f3 0f 59 c0          	mulss  xmm0,xmm0
     67d:	f3 0f 5a e3          	cvtss2sd xmm4,xmm3
     681:	66 45 0f ef c9       	pxor   xmm9,xmm9
     686:	49 c1 e8 20          	shr    r8,0x20
     68a:	f3 0f 59 d3          	mulss  xmm2,xmm3
     68e:	f2 0f 58 c9          	addsd  xmm1,xmm1
     692:	4c 89 44 24 f0       	mov    QWORD PTR [rsp-0x10],r8
     697:	f3 44 0f 10 06       	movss  xmm8,DWORD PTR [rsi]
     69c:	f3 0f 10 7c 24 f0    	movss  xmm7,DWORD PTR [rsp-0x10]
     6a2:	89 44 24 f0          	mov    DWORD PTR [rsp-0x10],eax
     6a6:	66 44 0f 6e 5c 24 f0 	movd   xmm11,DWORD PTR [rsp-0x10]
     6ad:	48 c1 e8 20          	shr    rax,0x20
     6b1:	48 89 44 24 f0       	mov    QWORD PTR [rsp-0x10],rax
     6b6:	f3 44 0f 59 c2       	mulss  xmm8,xmm2
     6bb:	f3 0f 59 fa          	mulss  xmm7,xmm2
     6bf:	f3 0f 10 77 04       	movss  xmm6,DWORD PTR [rdi+0x4]
     6c4:	f3 44 0f 59 da       	mulss  xmm11,xmm2
     6c9:	f3 44 0f 10 67 08    	movss  xmm12,DWORD PTR [rdi+0x8]
     6cf:	f3 0f 59 54 24 f0    	mulss  xmm2,DWORD PTR [rsp-0x10]
     6d5:	f2 0f 59 e1          	mulsd  xmm4,xmm1
     6d9:	f3 44 0f 58 07       	addss  xmm8,DWORD PTR [rdi]
     6de:	f3 0f 58 f7          	addss  xmm6,xmm7
     6e2:	f3 45 0f 58 e3       	addss  xmm12,xmm11
     6e7:	f2 44 0f 5a cc       	cvtsd2ss xmm9,xmm4
     6ec:	f3 0f 58 57 0c       	addss  xmm2,DWORD PTR [rdi+0xc]
     6f1:	f3 44 0f 11 07       	movss  DWORD PTR [rdi],xmm8
     6f6:	f3 0f 11 77 04       	movss  DWORD PTR [rdi+0x4],xmm6
     6fb:	f3 44 0f 11 67 08    	movss  DWORD PTR [rdi+0x8],xmm12
     701:	f3 0f 11 57 0c       	movss  DWORD PTR [rdi+0xc],xmm2
     706:	48 8b 32             	mov    rsi,QWORD PTR [rdx]
     709:	4c 8b 4a 08          	mov    r9,QWORD PTR [rdx+0x8]
     70d:	f3 44 0f 10 2a       	movss  xmm13,DWORD PTR [rdx]
     712:	48 c1 ee 20          	shr    rsi,0x20
     716:	f3 45 0f 59 e9       	mulss  xmm13,xmm9
     71b:	48 89 74 24 f0       	mov    QWORD PTR [rsp-0x10],rsi
     720:	f3 44 0f 10 74 24 f0 	movss  xmm14,DWORD PTR [rsp-0x10]
     727:	44 89 4c 24 f0       	mov    DWORD PTR [rsp-0x10],r9d
     72c:	49 c1 e9 20          	shr    r9,0x20
     730:	66 44 0f 6e 7c 24 f0 	movd   xmm15,DWORD PTR [rsp-0x10]
     737:	4c 89 4c 24 f0       	mov    QWORD PTR [rsp-0x10],r9
     73c:	f3 45 0f 59 f1       	mulss  xmm14,xmm9
     741:	f3 45 0f 58 e8       	addss  xmm13,xmm8
     746:	f3 45 0f 59 f9       	mulss  xmm15,xmm9
     74b:	f3 44 0f 59 4c 24 f0 	mulss  xmm9,DWORD PTR [rsp-0x10]
     752:	f3 44 0f 58 f6       	addss  xmm14,xmm6
     757:	f3 44 0f 11 2f       	movss  DWORD PTR [rdi],xmm13
     75c:	f3 45 0f 58 fc       	addss  xmm15,xmm12
     761:	f3 44 0f 11 77 04    	movss  DWORD PTR [rdi+0x4],xmm14
     767:	f3 44 0f 58 ca       	addss  xmm9,xmm2
     76c:	f3 44 0f 11 7f 08    	movss  DWORD PTR [rdi+0x8],xmm15
     772:	f3 44 0f 11 4f 0c    	movss  DWORD PTR [rdi+0xc],xmm9
     778:	4c 8b 51 08          	mov    r10,QWORD PTR [rcx+0x8]
     77c:	48 8b 11             	mov    rdx,QWORD PTR [rcx]
     77f:	f3 0f 10 19          	movss  xmm3,DWORD PTR [rcx]
     783:	f3 0f 59 d8          	mulss  xmm3,xmm0
     787:	48 c1 ea 20          	shr    rdx,0x20
     78b:	48 89 54 24 f0       	mov    QWORD PTR [rsp-0x10],rdx
     790:	f3 0f 10 54 24 f0    	movss  xmm2,DWORD PTR [rsp-0x10]
     796:	44 89 54 24 f0       	mov    DWORD PTR [rsp-0x10],r10d
     79b:	49 c1 ea 20          	shr    r10,0x20
     79f:	66 0f 6e 4c 24 f0    	movd   xmm1,DWORD PTR [rsp-0x10]
     7a5:	4c 89 54 24 f0       	mov    QWORD PTR [rsp-0x10],r10
     7aa:	f3 0f 59 d0          	mulss  xmm2,xmm0
     7ae:	f3 44 0f 58 eb       	addss  xmm13,xmm3
     7b3:	f3 0f 59 c8          	mulss  xmm1,xmm0
     7b7:	f3 0f 59 44 24 f0    	mulss  xmm0,DWORD PTR [rsp-0x10]
     7bd:	f3 44 0f 58 f2       	addss  xmm14,xmm2
     7c2:	f3 44 0f 11 2f       	movss  DWORD PTR [rdi],xmm13
     7c7:	f3 44 0f 58 f9       	addss  xmm15,xmm1
     7cc:	f3 44 0f 11 77 04    	movss  DWORD PTR [rdi+0x4],xmm14
     7d2:	f3 44 0f 58 c8       	addss  xmm9,xmm0
     7d7:	f3 44 0f 11 7f 08    	movss  DWORD PTR [rdi+0x8],xmm15
     7dd:	f3 44 0f 11 4f 0c    	movss  DWORD PTR [rdi+0xc],xmm9
     7e3:	c3                   	ret    
     7e4:	66 90                	xchg   ax,ax
     7e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
     7ed:	00 00 00 

00000000000007f0 <_ZN3XGK4MATH4UTIL23makeBezierCurve3Point3DEPfS2_S2_S2_S2_f>:
     7f0:	f3 0f 10 25 00 00 00 	movss  xmm4,DWORD PTR [rip+0x0]        # 7f8 <_ZN3XGK4MATH4UTIL23makeBezierCurve3Point3DEPfS2_S2_S2_S2_f+0x8>
     7f7:	00 
     7f8:	f3 0f 5c e0          	subss  xmm4,xmm0
     7fc:	66 45 0f ef e4       	pxor   xmm12,xmm12
     801:	66 0f ef d2          	pxor   xmm2,xmm2
     805:	66 45 0f ef d2       	pxor   xmm10,xmm10
     80a:	0f 28 f0             	movaps xmm6,xmm0
     80d:	44 0f 11 27          	movups XMMWORD PTR [rdi],xmm12
     811:	0f 28 ec             	movaps xmm5,xmm4
     814:	4c 8b 0e             	mov    r9,QWORD PTR [rsi]
     817:	0f 28 dc             	movaps xmm3,xmm4
     81a:	f3 0f 5a d0          	cvtss2sd xmm2,xmm0
     81e:	f3 0f 59 ec          	mulss  xmm5,xmm4
     822:	f3 44 0f 5a d4       	cvtss2sd xmm10,xmm4
     827:	48 8b 46 08          	mov    rax,QWORD PTR [rsi+0x8]
     82b:	49 c1 e9 20          	shr    r9,0x20
     82f:	f3 0f 59 f0          	mulss  xmm6,xmm0
     833:	4c 89 4c 24 f0       	mov    QWORD PTR [rsp-0x10],r9
     838:	f2 0f 10 0d 00 00 00 	movsd  xmm1,QWORD PTR [rip+0x0]        # 840 <_ZN3XGK4MATH4UTIL23makeBezierCurve3Point3DEPfS2_S2_S2_S2_f+0x50>
     83f:	00 
     840:	f3 44 0f 10 7c 24 f0 	movss  xmm15,DWORD PTR [rsp-0x10]
     847:	f3 0f 59 dd          	mulss  xmm3,xmm5
     84b:	89 44 24 f0          	mov    DWORD PTR [rsp-0x10],eax
     84f:	48 c1 e8 20          	shr    rax,0x20
     853:	66 0f 6e 64 24 f0    	movd   xmm4,DWORD PTR [rsp-0x10]
     859:	66 0f ef ff          	pxor   xmm7,xmm7
     85d:	f3 44 0f 10 2e       	movss  xmm13,DWORD PTR [rsi]
     862:	48 89 44 24 f0       	mov    QWORD PTR [rsp-0x10],rax
     867:	f2 0f 59 d1          	mulsd  xmm2,xmm1
     86b:	f3 44 0f 10 37       	movss  xmm14,DWORD PTR [rdi]
     870:	f3 44 0f 59 eb       	mulss  xmm13,xmm3
     875:	f3 0f 5a fd          	cvtss2sd xmm7,xmm5
     879:	f3 44 0f 59 fb       	mulss  xmm15,xmm3
     87e:	f3 0f 59 e3          	mulss  xmm4,xmm3
     882:	f3 0f 59 5c 24 f0    	mulss  xmm3,DWORD PTR [rsp-0x10]
     888:	f2 0f 59 d7          	mulsd  xmm2,xmm7
     88c:	f3 45 0f 58 f5       	addss  xmm14,xmm13
     891:	66 45 0f ef c0       	pxor   xmm8,xmm8
     896:	f3 44 0f 58 7f 04    	addss  xmm15,DWORD PTR [rdi+0x4]
     89c:	66 45 0f ef c9       	pxor   xmm9,xmm9
     8a1:	f3 0f 59 c6          	mulss  xmm0,xmm6
     8a5:	f3 44 0f 5a c6       	cvtss2sd xmm8,xmm6
     8aa:	66 45 0f ef db       	pxor   xmm11,xmm11
     8af:	f3 0f 58 5f 0c       	addss  xmm3,DWORD PTR [rdi+0xc]
     8b4:	f3 0f 10 77 08       	movss  xmm6,DWORD PTR [rdi+0x8]
     8b9:	f2 44 0f 5a ca       	cvtsd2ss xmm9,xmm2
     8be:	f3 0f 58 f4          	addss  xmm6,xmm4
     8c2:	f3 44 0f 11 7f 04    	movss  DWORD PTR [rdi+0x4],xmm15
     8c8:	f2 45 0f 59 d0       	mulsd  xmm10,xmm8
     8cd:	f3 44 0f 11 37       	movss  DWORD PTR [rdi],xmm14
     8d2:	f3 0f 11 5f 0c       	movss  DWORD PTR [rdi+0xc],xmm3
     8d7:	f3 0f 11 77 08       	movss  DWORD PTR [rdi+0x8],xmm6
     8dc:	48 8b 32             	mov    rsi,QWORD PTR [rdx]
     8df:	f2 44 0f 59 d1       	mulsd  xmm10,xmm1
     8e4:	4c 8b 52 08          	mov    r10,QWORD PTR [rdx+0x8]
     8e8:	f3 0f 10 12          	movss  xmm2,DWORD PTR [rdx]
     8ec:	48 c1 ee 20          	shr    rsi,0x20
     8f0:	48 89 74 24 f0       	mov    QWORD PTR [rsp-0x10],rsi
     8f5:	f3 0f 10 6c 24 f0    	movss  xmm5,DWORD PTR [rsp-0x10]
     8fb:	44 89 54 24 f0       	mov    DWORD PTR [rsp-0x10],r10d
     900:	49 c1 ea 20          	shr    r10,0x20
     904:	66 0f 6e 4c 24 f0    	movd   xmm1,DWORD PTR [rsp-0x10]
     90a:	4c 89 54 24 f0       	mov    QWORD PTR [rsp-0x10],r10
     90f:	f3 41 0f 59 d1       	mulss  xmm2,xmm9
     914:	f3 41 0f 59 e9       	mulss  xmm5,xmm9
     919:	f3 41 0f 59 c9       	mulss  xmm1,xmm9
     91e:	f3 44 0f 59 4c 24 f0 	mulss  xmm9,DWORD PTR [rsp-0x10]
     925:	f2 45 0f 5a da       	cvtsd2ss xmm11,xmm10
     92a:	f3 41 0f 58 d6       	addss  xmm2,xmm14
     92f:	f3 44 0f 58 fd       	addss  xmm15,xmm5
     934:	f3 44 0f 58 cb       	addss  xmm9,xmm3
     939:	f3 0f 58 ce          	addss  xmm1,xmm6
     93d:	f3 0f 11 17          	movss  DWORD PTR [rdi],xmm2
     941:	f3 44 0f 11 7f 04    	movss  DWORD PTR [rdi+0x4],xmm15
     947:	f3 0f 11 4f 08       	movss  DWORD PTR [rdi+0x8],xmm1
     94c:	f3 44 0f 11 4f 0c    	movss  DWORD PTR [rdi+0xc],xmm9
     952:	48 8b 11             	mov    rdx,QWORD PTR [rcx]
     955:	4c 8b 59 08          	mov    r11,QWORD PTR [rcx+0x8]
     959:	f3 0f 10 39          	movss  xmm7,DWORD PTR [rcx]
     95d:	f3 41 0f 59 fb       	mulss  xmm7,xmm11
     962:	48 c1 ea 20          	shr    rdx,0x20
     966:	48 89 54 24 f0       	mov    QWORD PTR [rsp-0x10],rdx
     96b:	f3 44 0f 10 44 24 f0 	movss  xmm8,DWORD PTR [rsp-0x10]
     972:	44 89 5c 24 f0       	mov    DWORD PTR [rsp-0x10],r11d
     977:	49 c1 eb 20          	shr    r11,0x20
     97b:	66 0f 6e 5c 24 f0    	movd   xmm3,DWORD PTR [rsp-0x10]
     981:	4c 89 5c 24 f0       	mov    QWORD PTR [rsp-0x10],r11
     986:	f3 45 0f 59 c3       	mulss  xmm8,xmm11
     98b:	f3 0f 58 fa          	addss  xmm7,xmm2
     98f:	f3 41 0f 59 db       	mulss  xmm3,xmm11
     994:	f3 44 0f 59 5c 24 f0 	mulss  xmm11,DWORD PTR [rsp-0x10]
     99b:	f3 45 0f 58 c7       	addss  xmm8,xmm15
     9a0:	f3 0f 11 3f          	movss  DWORD PTR [rdi],xmm7
     9a4:	f3 0f 58 d9          	addss  xmm3,xmm1
     9a8:	f3 44 0f 11 47 04    	movss  DWORD PTR [rdi+0x4],xmm8
     9ae:	f3 45 0f 58 d9       	addss  xmm11,xmm9
     9b3:	f3 0f 11 5f 08       	movss  DWORD PTR [rdi+0x8],xmm3
     9b8:	f3 44 0f 11 5f 0c    	movss  DWORD PTR [rdi+0xc],xmm11
     9be:	49 8b 00             	mov    rax,QWORD PTR [r8]
     9c1:	49 8b 48 08          	mov    rcx,QWORD PTR [r8+0x8]
     9c5:	f3 45 0f 10 08       	movss  xmm9,DWORD PTR [r8]
     9ca:	48 c1 e8 20          	shr    rax,0x20
     9ce:	f3 44 0f 59 c8       	mulss  xmm9,xmm0
     9d3:	48 89 44 24 f0       	mov    QWORD PTR [rsp-0x10],rax
     9d8:	f3 44 0f 10 54 24 f0 	movss  xmm10,DWORD PTR [rsp-0x10]
     9df:	89 4c 24 f0          	mov    DWORD PTR [rsp-0x10],ecx
     9e3:	48 c1 e9 20          	shr    rcx,0x20
     9e7:	66 44 0f 6e 64 24 f0 	movd   xmm12,DWORD PTR [rsp-0x10]
     9ee:	48 89 4c 24 f0       	mov    QWORD PTR [rsp-0x10],rcx
     9f3:	f3 44 0f 59 d0       	mulss  xmm10,xmm0
     9f8:	f3 41 0f 58 f9       	addss  xmm7,xmm9
     9fd:	f3 44 0f 59 e0       	mulss  xmm12,xmm0
     a02:	f3 0f 59 44 24 f0    	mulss  xmm0,DWORD PTR [rsp-0x10]
     a08:	f3 45 0f 58 c2       	addss  xmm8,xmm10
     a0d:	f3 0f 11 3f          	movss  DWORD PTR [rdi],xmm7
     a11:	f3 41 0f 58 dc       	addss  xmm3,xmm12
     a16:	f3 44 0f 11 47 04    	movss  DWORD PTR [rdi+0x4],xmm8
     a1c:	f3 44 0f 58 d8       	addss  xmm11,xmm0
     a21:	f3 0f 11 5f 08       	movss  DWORD PTR [rdi+0x8],xmm3
     a26:	f3 44 0f 11 5f 0c    	movss  DWORD PTR [rdi+0xc],xmm11
     a2c:	c3                   	ret    
     a2d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000000a30 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3ControlPoint3DEPfS2_S2_S2_f>:
     a30:	66 0f ef c9          	pxor   xmm1,xmm1
     a34:	0f 11 0f             	movups XMMWORD PTR [rdi],xmm1
     a37:	f3 0f 10 19          	movss  xmm3,DWORD PTR [rcx]
     a3b:	f3 0f 11 1f          	movss  DWORD PTR [rdi],xmm3
     a3f:	f3 0f 10 57 04       	movss  xmm2,DWORD PTR [rdi+0x4]
     a44:	f3 0f 58 51 04       	addss  xmm2,DWORD PTR [rcx+0x4]
     a49:	f3 0f 10 6f 08       	movss  xmm5,DWORD PTR [rdi+0x8]
     a4e:	f3 0f 10 67 0c       	movss  xmm4,DWORD PTR [rdi+0xc]
     a53:	f3 0f 11 57 04       	movss  DWORD PTR [rdi+0x4],xmm2
     a58:	f3 0f 58 69 08       	addss  xmm5,DWORD PTR [rcx+0x8]
     a5d:	f3 0f 11 6f 08       	movss  DWORD PTR [rdi+0x8],xmm5
     a62:	f3 0f 58 61 0c       	addss  xmm4,DWORD PTR [rcx+0xc]
     a67:	f3 0f 11 67 0c       	movss  DWORD PTR [rdi+0xc],xmm4
     a6c:	f3 0f 5c 1e          	subss  xmm3,DWORD PTR [rsi]
     a70:	f3 0f 11 1f          	movss  DWORD PTR [rdi],xmm3
     a74:	f3 0f 59 d8          	mulss  xmm3,xmm0
     a78:	f3 0f 5c 56 04       	subss  xmm2,DWORD PTR [rsi+0x4]
     a7d:	f3 0f 11 57 04       	movss  DWORD PTR [rdi+0x4],xmm2
     a82:	f3 0f 59 d0          	mulss  xmm2,xmm0
     a86:	f3 0f 5c 6e 08       	subss  xmm5,DWORD PTR [rsi+0x8]
     a8b:	f3 0f 11 6f 08       	movss  DWORD PTR [rdi+0x8],xmm5
     a90:	f3 0f 59 e8          	mulss  xmm5,xmm0
     a94:	f3 0f 5c 66 0c       	subss  xmm4,DWORD PTR [rsi+0xc]
     a99:	f3 0f 11 1f          	movss  DWORD PTR [rdi],xmm3
     a9d:	f3 0f 11 57 04       	movss  DWORD PTR [rdi+0x4],xmm2
     aa2:	f3 0f 11 6f 08       	movss  DWORD PTR [rdi+0x8],xmm5
     aa7:	f3 0f 59 c4          	mulss  xmm0,xmm4
     aab:	f3 0f 11 47 0c       	movss  DWORD PTR [rdi+0xc],xmm0
     ab0:	f3 0f 58 1a          	addss  xmm3,DWORD PTR [rdx]
     ab4:	f3 0f 11 1f          	movss  DWORD PTR [rdi],xmm3
     ab8:	f3 0f 58 52 04       	addss  xmm2,DWORD PTR [rdx+0x4]
     abd:	f3 0f 11 57 04       	movss  DWORD PTR [rdi+0x4],xmm2
     ac2:	f3 0f 58 6a 08       	addss  xmm5,DWORD PTR [rdx+0x8]
     ac7:	f3 0f 11 6f 08       	movss  DWORD PTR [rdi+0x8],xmm5
     acc:	f3 0f 58 42 0c       	addss  xmm0,DWORD PTR [rdx+0xc]
     ad1:	f3 0f 11 47 0c       	movss  DWORD PTR [rdi+0xc],xmm0
     ad6:	c3                   	ret    
     ad7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
     ade:	00 00 

0000000000000ae0 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf>:
     ae0:	41 57                	push   r15
     ae2:	41 56                	push   r14
     ae4:	41 55                	push   r13
     ae6:	41 54                	push   r12
     ae8:	55                   	push   rbp
     ae9:	53                   	push   rbx
     aea:	48 83 ec 78          	sub    rsp,0x78
     aee:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
     af1:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
     af8:	00 00 
     afa:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
     aff:	31 c0                	xor    eax,eax
     b01:	48 8b 46 08          	mov    rax,QWORD PTR [rsi+0x8]
     b05:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
     b0a:	48 89 4c 24 48       	mov    QWORD PTR [rsp+0x48],rcx
     b0f:	48 29 c8             	sub    rax,rcx
     b12:	48 89 c6             	mov    rsi,rax
     b15:	48 c1 fe 02          	sar    rsi,0x2
     b19:	48 85 f6             	test   rsi,rsi
     b1c:	48 89 74 24 28       	mov    QWORD PTR [rsp+0x28],rsi
     b21:	0f 84 b3 05 00 00    	je     10da <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x5fa>
     b27:	66 0f ef c9          	pxor   xmm1,xmm1
     b2b:	48 85 d2             	test   rdx,rdx
     b2e:	49 89 fe             	mov    r14,rdi
     b31:	f3 48 0f 2a ca       	cvtsi2ss xmm1,rdx
     b36:	79 1e                	jns    b56 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x76>
     b38:	48 89 d3             	mov    rbx,rdx
     b3b:	66 0f ef c9          	pxor   xmm1,xmm1
     b3f:	48 d1 ea             	shr    rdx,1
     b42:	83 e3 01             	and    ebx,0x1
     b45:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
     b4a:	48 09 da             	or     rdx,rbx
     b4d:	f3 48 0f 2a ca       	cvtsi2ss xmm1,rdx
     b52:	f3 0f 58 c9          	addss  xmm1,xmm1
     b56:	f3 0f 10 3d 00 00 00 	movss  xmm7,DWORD PTR [rip+0x0]        # b5e <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x7e>
     b5d:	00 
     b5e:	0f 28 f0             	movaps xmm6,xmm0
     b61:	f3 0f 5e f9          	divss  xmm7,xmm1
     b65:	48 8b 6c 24 48       	mov    rbp,QWORD PTR [rsp+0x48]
     b6a:	48 8d 7e ff          	lea    rdi,[rsi-0x1]
     b6e:	48 f7 de             	neg    rsi
     b71:	48 c7 44 24 10 00 00 	mov    QWORD PTR [rsp+0x10],0x0
     b78:	00 00 
     b7a:	4c 8b 7c 24 10       	mov    r15,QWORD PTR [rsp+0x10]
     b7f:	4c 8d 04 b5 00 00 00 	lea    r8,[rsi*4+0x0]
     b86:	00 
     b87:	48 89 7c 24 30       	mov    QWORD PTR [rsp+0x30],rdi
     b8c:	4c 8d 4c 05 fc       	lea    r9,[rbp+rax*1-0x4]
     b91:	4c 8d 6d fc          	lea    r13,[rbp-0x4]
     b95:	4c 89 44 24 40       	mov    QWORD PTR [rsp+0x40],r8
     b9a:	4c 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],r9
     b9f:	0f 57 35 00 00 00 00 	xorps  xmm6,XMMWORD PTR [rip+0x0]        # ba6 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0xc6>
     ba6:	f3 0f 11 7c 24 20    	movss  DWORD PTR [rsp+0x20],xmm7
     bac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     bb0:	48 8b 6c 24 38       	mov    rbp,QWORD PTR [rsp+0x38]
     bb5:	4d 85 ff             	test   r15,r15
     bb8:	49 0f 45 ed          	cmovne rbp,r13
     bbc:	4c 3b 7c 24 30       	cmp    r15,QWORD PTR [rsp+0x30]
     bc1:	0f 82 32 05 00 00    	jb     10f9 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x619>
     bc7:	4c 8b 54 24 40       	mov    r10,QWORD PTR [rsp+0x40]
     bcc:	4f 8d 5c 15 0c       	lea    r11,[r13+r10*1+0xc]
     bd1:	48 83 7c 24 08 00    	cmp    QWORD PTR [rsp+0x8],0x0
     bd7:	0f 84 e3 04 00 00    	je     10c0 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x5e0>
     bdd:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
     be2:	45 31 ff             	xor    r15d,r15d
     be5:	4d 89 dc             	mov    r12,r11
     be8:	f2 0f 10 3d 00 00 00 	movsd  xmm7,QWORD PTR [rip+0x0]        # bf0 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x110>
     bef:	00 
     bf0:	48 89 c3             	mov    rbx,rax
     bf3:	e9 8d 00 00 00       	jmp    c85 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x1a5>
     bf8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     bff:	00 
     c00:	4d 85 d2             	test   r10,r10
     c03:	74 05                	je     c0a <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x12a>
     c05:	f3 41 0f 11 0a       	movss  DWORD PTR [r10],xmm1
     c0a:	49 83 c2 04          	add    r10,0x4
     c0e:	49 39 f2             	cmp    r10,rsi
     c11:	4d 89 56 08          	mov    QWORD PTR [r14+0x8],r10
     c15:	0f 84 dd 03 00 00    	je     ff8 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x518>
     c1b:	4d 85 d2             	test   r10,r10
     c1e:	74 0c                	je     c2c <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x14c>
     c20:	f3 44 0f 10 6c 24 54 	movss  xmm13,DWORD PTR [rsp+0x54]
     c27:	f3 45 0f 11 2a       	movss  DWORD PTR [r10],xmm13
     c2c:	49 83 c2 04          	add    r10,0x4
     c30:	49 39 f2             	cmp    r10,rsi
     c33:	4d 89 56 08          	mov    QWORD PTR [r14+0x8],r10
     c37:	0f 84 03 04 00 00    	je     1040 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x560>
     c3d:	4d 85 d2             	test   r10,r10
     c40:	74 0b                	je     c4d <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x16d>
     c42:	f3 0f 10 54 24 58    	movss  xmm2,DWORD PTR [rsp+0x58]
     c48:	f3 41 0f 11 12       	movss  DWORD PTR [r10],xmm2
     c4d:	49 83 c2 04          	add    r10,0x4
     c51:	49 39 f2             	cmp    r10,rsi
     c54:	4d 89 56 08          	mov    QWORD PTR [r14+0x8],r10
     c58:	0f 84 22 04 00 00    	je     1080 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x5a0>
     c5e:	4d 85 d2             	test   r10,r10
     c61:	74 0b                	je     c6e <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x18e>
     c63:	f3 0f 10 4c 24 5c    	movss  xmm1,DWORD PTR [rsp+0x5c]
     c69:	f3 41 0f 11 0a       	movss  DWORD PTR [r10],xmm1
     c6e:	49 83 c2 04          	add    r10,0x4
     c72:	49 83 c7 01          	add    r15,0x1
     c76:	4c 39 7c 24 08       	cmp    QWORD PTR [rsp+0x8],r15
     c7b:	4d 89 56 08          	mov    QWORD PTR [r14+0x8],r10
     c7f:	0f 84 3b 04 00 00    	je     10c0 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x5e0>
     c85:	f3 45 0f 10 4d 0c    	movss  xmm9,DWORD PTR [r13+0xc]
     c8b:	41 0f 28 d9          	movaps xmm3,xmm9
     c8f:	f3 45 0f 10 45 08    	movss  xmm8,DWORD PTR [r13+0x8]
     c95:	f3 45 0f 10 55 14    	movss  xmm10,DWORD PTR [r13+0x14]
     c9b:	f3 0f 5c 5d 04       	subss  xmm3,DWORD PTR [rbp+0x4]
     ca0:	f3 45 0f 10 6d 10    	movss  xmm13,DWORD PTR [r13+0x10]
     ca6:	41 0f 28 ea          	movaps xmm5,xmm10
     caa:	41 0f 28 d5          	movaps xmm2,xmm13
     cae:	41 0f 28 e0          	movaps xmm4,xmm8
     cb2:	f3 45 0f 10 65 04    	movss  xmm12,DWORD PTR [r13+0x4]
     cb8:	f3 0f 5c 6d 0c       	subss  xmm5,DWORD PTR [rbp+0xc]
     cbd:	f3 0f 5c 55 08       	subss  xmm2,DWORD PTR [rbp+0x8]
     cc2:	f3 45 0f 10 74 24 04 	movss  xmm14,DWORD PTR [r12+0x4]
     cc9:	f3 0f 5c 65 00       	subss  xmm4,DWORD PTR [rbp+0x0]
     cce:	f3 45 0f 10 5c 24 0c 	movss  xmm11,DWORD PTR [r12+0xc]
     cd5:	f3 0f 59 d8          	mulss  xmm3,xmm0
     cd9:	f3 45 0f 5c dd       	subss  xmm11,xmm13
     cde:	f3 45 0f 5c f0       	subss  xmm14,xmm8
     ce3:	f3 45 0f 10 7c 24 08 	movss  xmm15,DWORD PTR [r12+0x8]
     cea:	f3 45 0f 5c f9       	subss  xmm15,xmm9
     cef:	f3 0f 59 e8          	mulss  xmm5,xmm0
     cf3:	f3 41 0f 58 d8       	addss  xmm3,xmm8
     cf8:	f3 44 0f 59 de       	mulss  xmm11,xmm6
     cfd:	f3 44 0f 59 f6       	mulss  xmm14,xmm6
     d02:	f3 0f 59 d0          	mulss  xmm2,xmm0
     d06:	f3 0f 59 e0          	mulss  xmm4,xmm0
     d0a:	f3 41 0f 58 ed       	addss  xmm5,xmm13
     d0f:	66 48 0f 7e da       	movq   rdx,xmm3
     d14:	f3 41 0f 10 1c 24    	movss  xmm3,DWORD PTR [r12]
     d1a:	f3 41 0f 5c dc       	subss  xmm3,xmm12
     d1f:	f3 44 0f 59 fe       	mulss  xmm15,xmm6
     d24:	f3 45 0f 58 f1       	addss  xmm14,xmm9
     d29:	48 c1 e2 20          	shl    rdx,0x20
     d2d:	f3 45 0f 58 d3       	addss  xmm10,xmm11
     d32:	66 48 0f 7e ef       	movq   rdi,xmm5
     d37:	f3 41 0f 58 e4       	addss  xmm4,xmm12
     d3c:	f3 0f 59 de          	mulss  xmm3,xmm6
     d40:	f3 45 0f 58 ef       	addss  xmm13,xmm15
     d45:	48 c1 e7 20          	shl    rdi,0x20
     d49:	f3 41 0f 58 d1       	addss  xmm2,xmm9
     d4e:	66 4d 0f 7e f0       	movq   r8,xmm14
     d53:	66 4d 0f 7e d1       	movq   r9,xmm10
     d58:	66 0f 7e e1          	movd   ecx,xmm4
     d5c:	49 c1 e0 20          	shl    r8,0x20
     d60:	0f 28 cb             	movaps xmm1,xmm3
     d63:	66 45 0f 7e eb       	movd   r11d,xmm13
     d68:	66 0f 7e d6          	movd   esi,xmm2
     d6c:	49 c1 e1 20          	shl    r9,0x20
     d70:	f3 41 0f 58 c8       	addss  xmm1,xmm8
     d75:	66 45 0f ef ed       	pxor   xmm13,xmm13
     d7a:	48 09 d1             	or     rcx,rdx
     d7d:	48 09 fe             	or     rsi,rdi
     d80:	4d 09 cb             	or     r11,r9
     d83:	f3 4d 0f 2a ef       	cvtsi2ss xmm13,r15
     d88:	66 41 0f 7e ca       	movd   r10d,xmm1
     d8d:	4d 09 c2             	or     r10,r8
     d90:	4d 85 ff             	test   r15,r15
     d93:	79 1e                	jns    db3 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x2d3>
     d95:	4c 89 f8             	mov    rax,r15
     d98:	4c 89 fa             	mov    rdx,r15
     d9b:	66 45 0f ef ed       	pxor   xmm13,xmm13
     da0:	48 d1 e8             	shr    rax,1
     da3:	83 e2 01             	and    edx,0x1
     da6:	48 09 d0             	or     rax,rdx
     da9:	f3 4c 0f 2a e8       	cvtsi2ss xmm13,rax
     dae:	f3 45 0f 58 ed       	addss  xmm13,xmm13
     db3:	f3 44 0f 59 6c 24 20 	mulss  xmm13,DWORD PTR [rsp+0x20]
     dba:	f3 44 0f 10 15 00 00 	movss  xmm10,DWORD PTR [rip+0x0]        # dc3 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x2e3>
     dc1:	00 00 
     dc3:	66 0f ef ed          	pxor   xmm5,xmm5
     dc7:	89 0c 24             	mov    DWORD PTR [rsp],ecx
     dca:	66 45 0f ef f6       	pxor   xmm14,xmm14
     dcf:	66 0f 6e 0c 24       	movd   xmm1,DWORD PTR [rsp]
     dd4:	66 45 0f ef ff       	pxor   xmm15,xmm15
     dd9:	44 89 14 24          	mov    DWORD PTR [rsp],r10d
     ddd:	66 45 0f ef e4       	pxor   xmm12,xmm12
     de2:	48 c1 e9 20          	shr    rcx,0x20
     de6:	66 0f ef e4          	pxor   xmm4,xmm4
     dea:	49 c1 ea 20          	shr    r10,0x20
     dee:	f3 45 0f 5c d5       	subss  xmm10,xmm13
     df3:	45 0f 28 c5          	movaps xmm8,xmm13
     df7:	f3 41 0f 5a ed       	cvtss2sd xmm5,xmm13
     dfc:	66 0f ef db          	pxor   xmm3,xmm3
     e00:	f3 45 0f 59 c5       	mulss  xmm8,xmm13
     e05:	f2 0f 59 ef          	mulsd  xmm5,xmm7
     e09:	45 0f 28 ca          	movaps xmm9,xmm10
     e0d:	f3 45 0f 5a fa       	cvtss2sd xmm15,xmm10
     e12:	66 45 0f ef db       	pxor   xmm11,xmm11
     e17:	41 0f 28 d2          	movaps xmm2,xmm10
     e1b:	f3 45 0f 59 ca       	mulss  xmm9,xmm10
     e20:	f3 45 0f 5a f0       	cvtss2sd xmm14,xmm8
     e25:	66 44 0f 6e 14 24    	movd   xmm10,DWORD PTR [rsp]
     e2b:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
     e2f:	f3 45 0f 59 e8       	mulss  xmm13,xmm8
     e34:	f2 45 0f 59 f7       	mulsd  xmm14,xmm15
     e39:	44 0f 29 1b          	movaps XMMWORD PTR [rbx],xmm11
     e3d:	4d 8b 45 04          	mov    r8,QWORD PTR [r13+0x4]
     e41:	49 8b 7d 0c          	mov    rdi,QWORD PTR [r13+0xc]
     e45:	f3 41 0f 59 d1       	mulss  xmm2,xmm9
     e4a:	f3 45 0f 5a e1       	cvtss2sd xmm12,xmm9
     e4f:	f2 44 0f 59 f7       	mulsd  xmm14,xmm7
     e54:	f2 44 0f 59 e5       	mulsd  xmm12,xmm5
     e59:	49 c1 e8 20          	shr    r8,0x20
     e5d:	f3 45 0f 10 4d 04    	movss  xmm9,DWORD PTR [r13+0x4]
     e63:	f3 44 0f 59 ca       	mulss  xmm9,xmm2
     e68:	f2 41 0f 5a de       	cvtsd2ss xmm3,xmm14
     e6d:	f2 41 0f 5a e4       	cvtsd2ss xmm4,xmm12
     e72:	f3 44 0f 10 24 24    	movss  xmm12,DWORD PTR [rsp]
     e78:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
     e7c:	f3 44 0f 10 04 24    	movss  xmm8,DWORD PTR [rsp]
     e82:	4c 89 04 24          	mov    QWORD PTR [rsp],r8
     e86:	f3 0f 10 2c 24       	movss  xmm5,DWORD PTR [rsp]
     e8b:	89 34 24             	mov    DWORD PTR [rsp],esi
     e8e:	66 44 0f 6e 1c 24    	movd   xmm11,DWORD PTR [rsp]
     e94:	44 89 1c 24          	mov    DWORD PTR [rsp],r11d
     e98:	48 c1 ee 20          	shr    rsi,0x20
     e9c:	66 44 0f 6e 34 24    	movd   xmm14,DWORD PTR [rsp]
     ea2:	89 3c 24             	mov    DWORD PTR [rsp],edi
     ea5:	49 c1 eb 20          	shr    r11,0x20
     ea9:	48 c1 ef 20          	shr    rdi,0x20
     ead:	f3 0f 59 ea          	mulss  xmm5,xmm2
     eb1:	f3 44 0f 59 c3       	mulss  xmm8,xmm3
     eb6:	f3 44 0f 59 d3       	mulss  xmm10,xmm3
     ebb:	f3 44 0f 59 f3       	mulss  xmm14,xmm3
     ec0:	f3 44 0f 59 e4       	mulss  xmm12,xmm4
     ec5:	f3 0f 59 cc          	mulss  xmm1,xmm4
     ec9:	f3 45 0f 58 e0       	addss  xmm12,xmm8
     ece:	45 0f 28 c3          	movaps xmm8,xmm11
     ed2:	f3 41 0f 58 ca       	addss  xmm1,xmm10
     ed7:	66 44 0f 6e 14 24    	movd   xmm10,DWORD PTR [rsp]
     edd:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
     ee1:	f3 44 0f 59 c4       	mulss  xmm8,xmm4
     ee6:	f3 0f 59 24 24       	mulss  xmm4,DWORD PTR [rsp]
     eeb:	4c 89 1c 24          	mov    QWORD PTR [rsp],r11
     eef:	f3 0f 59 1c 24       	mulss  xmm3,DWORD PTR [rsp]
     ef4:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
     ef8:	f3 44 0f 58 e5       	addss  xmm12,xmm5
     efd:	f3 44 0f 59 d2       	mulss  xmm10,xmm2
     f02:	f3 41 0f 58 c9       	addss  xmm1,xmm9
     f07:	f3 0f 59 14 24       	mulss  xmm2,DWORD PTR [rsp]
     f0c:	f3 45 0f 58 c6       	addss  xmm8,xmm14
     f11:	f3 44 0f 11 64 24 54 	movss  DWORD PTR [rsp+0x54],xmm12
     f18:	f3 0f 11 4c 24 50    	movss  DWORD PTR [rsp+0x50],xmm1
     f1e:	f3 0f 58 dc          	addss  xmm3,xmm4
     f22:	f3 45 0f 58 d0       	addss  xmm10,xmm8
     f27:	f3 0f 58 d3          	addss  xmm2,xmm3
     f2b:	f3 44 0f 11 54 24 58 	movss  DWORD PTR [rsp+0x58],xmm10
     f32:	f3 0f 11 54 24 5c    	movss  DWORD PTR [rsp+0x5c],xmm2
     f38:	49 8b 4d 10          	mov    rcx,QWORD PTR [r13+0x10]
     f3c:	49 8b 75 08          	mov    rsi,QWORD PTR [r13+0x8]
     f40:	f3 41 0f 10 65 08    	movss  xmm4,DWORD PTR [r13+0x8]
     f46:	4d 8b 56 08          	mov    r10,QWORD PTR [r14+0x8]
     f4a:	f3 41 0f 59 e5       	mulss  xmm4,xmm13
     f4f:	48 c1 ee 20          	shr    rsi,0x20
     f53:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
     f57:	49 8b 76 10          	mov    rsi,QWORD PTR [r14+0x10]
     f5b:	f3 0f 10 1c 24       	movss  xmm3,DWORD PTR [rsp]
     f60:	89 0c 24             	mov    DWORD PTR [rsp],ecx
     f63:	48 c1 e9 20          	shr    rcx,0x20
     f67:	66 44 0f 6e 0c 24    	movd   xmm9,DWORD PTR [rsp]
     f6d:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
     f71:	f3 41 0f 59 dd       	mulss  xmm3,xmm13
     f76:	f3 0f 58 cc          	addss  xmm1,xmm4
     f7a:	49 39 f2             	cmp    r10,rsi
     f7d:	f3 45 0f 59 cd       	mulss  xmm9,xmm13
     f82:	f3 44 0f 59 2c 24    	mulss  xmm13,DWORD PTR [rsp]
     f88:	f3 44 0f 58 e3       	addss  xmm12,xmm3
     f8d:	f3 0f 11 4c 24 50    	movss  DWORD PTR [rsp+0x50],xmm1
     f93:	f3 45 0f 58 d1       	addss  xmm10,xmm9
     f98:	f3 44 0f 11 64 24 54 	movss  DWORD PTR [rsp+0x54],xmm12
     f9f:	f3 41 0f 58 d5       	addss  xmm2,xmm13
     fa4:	f3 44 0f 11 54 24 58 	movss  DWORD PTR [rsp+0x58],xmm10
     fab:	f3 0f 11 54 24 5c    	movss  DWORD PTR [rsp+0x5c],xmm2
     fb1:	0f 85 49 fc ff ff    	jne    c00 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x120>
     fb7:	48 89 da             	mov    rdx,rbx
     fba:	4c 89 f7             	mov    rdi,r14
     fbd:	f3 0f 11 74 24 24    	movss  DWORD PTR [rsp+0x24],xmm6
     fc3:	f2 0f 11 7c 24 18    	movsd  QWORD PTR [rsp+0x18],xmm7
     fc9:	f3 0f 11 04 24       	movss  DWORD PTR [rsp],xmm0
     fce:	e8 00 00 00 00       	call   fd3 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x4f3>
     fd3:	4d 8b 56 08          	mov    r10,QWORD PTR [r14+0x8]
     fd7:	49 8b 76 10          	mov    rsi,QWORD PTR [r14+0x10]
     fdb:	f3 0f 10 74 24 24    	movss  xmm6,DWORD PTR [rsp+0x24]
     fe1:	f2 0f 10 7c 24 18    	movsd  xmm7,QWORD PTR [rsp+0x18]
     fe7:	f3 0f 10 04 24       	movss  xmm0,DWORD PTR [rsp]
     fec:	49 39 f2             	cmp    r10,rsi
     fef:	0f 85 26 fc ff ff    	jne    c1b <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x13b>
     ff5:	0f 1f 00             	nop    DWORD PTR [rax]
     ff8:	48 8d 53 04          	lea    rdx,[rbx+0x4]
     ffc:	4c 89 f7             	mov    rdi,r14
     fff:	f3 0f 11 74 24 24    	movss  DWORD PTR [rsp+0x24],xmm6
    1005:	f2 0f 11 7c 24 18    	movsd  QWORD PTR [rsp+0x18],xmm7
    100b:	f3 0f 11 04 24       	movss  DWORD PTR [rsp],xmm0
    1010:	e8 00 00 00 00       	call   1015 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x535>
    1015:	4d 8b 56 08          	mov    r10,QWORD PTR [r14+0x8]
    1019:	49 8b 76 10          	mov    rsi,QWORD PTR [r14+0x10]
    101d:	f3 0f 10 74 24 24    	movss  xmm6,DWORD PTR [rsp+0x24]
    1023:	f2 0f 10 7c 24 18    	movsd  xmm7,QWORD PTR [rsp+0x18]
    1029:	f3 0f 10 04 24       	movss  xmm0,DWORD PTR [rsp]
    102e:	49 39 f2             	cmp    r10,rsi
    1031:	0f 85 06 fc ff ff    	jne    c3d <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x15d>
    1037:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    103e:	00 00 
    1040:	48 8d 53 08          	lea    rdx,[rbx+0x8]
    1044:	4c 89 f7             	mov    rdi,r14
    1047:	f3 0f 11 74 24 24    	movss  DWORD PTR [rsp+0x24],xmm6
    104d:	f2 0f 11 7c 24 18    	movsd  QWORD PTR [rsp+0x18],xmm7
    1053:	f3 0f 11 04 24       	movss  DWORD PTR [rsp],xmm0
    1058:	e8 00 00 00 00       	call   105d <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x57d>
    105d:	4d 8b 56 08          	mov    r10,QWORD PTR [r14+0x8]
    1061:	49 8b 76 10          	mov    rsi,QWORD PTR [r14+0x10]
    1065:	f3 0f 10 74 24 24    	movss  xmm6,DWORD PTR [rsp+0x24]
    106b:	f2 0f 10 7c 24 18    	movsd  xmm7,QWORD PTR [rsp+0x18]
    1071:	f3 0f 10 04 24       	movss  xmm0,DWORD PTR [rsp]
    1076:	49 39 f2             	cmp    r10,rsi
    1079:	0f 85 df fb ff ff    	jne    c5e <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x17e>
    107f:	90                   	nop
    1080:	48 8d 53 0c          	lea    rdx,[rbx+0xc]
    1084:	4c 89 d6             	mov    rsi,r10
    1087:	4c 89 f7             	mov    rdi,r14
    108a:	f3 0f 11 74 24 24    	movss  DWORD PTR [rsp+0x24],xmm6
    1090:	49 83 c7 01          	add    r15,0x1
    1094:	f2 0f 11 7c 24 18    	movsd  QWORD PTR [rsp+0x18],xmm7
    109a:	f3 0f 11 04 24       	movss  DWORD PTR [rsp],xmm0
    109f:	e8 00 00 00 00       	call   10a4 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x5c4>
    10a4:	4c 39 7c 24 08       	cmp    QWORD PTR [rsp+0x8],r15
    10a9:	f3 0f 10 74 24 24    	movss  xmm6,DWORD PTR [rsp+0x24]
    10af:	f2 0f 10 7c 24 18    	movsd  xmm7,QWORD PTR [rsp+0x18]
    10b5:	f3 0f 10 04 24       	movss  xmm0,DWORD PTR [rsp]
    10ba:	0f 85 c5 fb ff ff    	jne    c85 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x1a5>
    10c0:	48 83 44 24 10 01    	add    QWORD PTR [rsp+0x10],0x1
    10c6:	49 83 c5 04          	add    r13,0x4
    10ca:	4c 8b 7c 24 10       	mov    r15,QWORD PTR [rsp+0x10]
    10cf:	4c 3b 7c 24 28       	cmp    r15,QWORD PTR [rsp+0x28]
    10d4:	0f 85 d6 fa ff ff    	jne    bb0 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0xd0>
    10da:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
    10df:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    10e6:	00 00 
    10e8:	75 21                	jne    110b <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0x62b>
    10ea:	48 83 c4 78          	add    rsp,0x78
    10ee:	5b                   	pop    rbx
    10ef:	5d                   	pop    rbp
    10f0:	41 5c                	pop    r12
    10f2:	41 5d                	pop    r13
    10f4:	41 5e                	pop    r14
    10f6:	41 5f                	pop    r15
    10f8:	c3                   	ret    
    10f9:	4d 89 fc             	mov    r12,r15
    10fc:	4c 8b 7c 24 48       	mov    r15,QWORD PTR [rsp+0x48]
    1101:	4f 8d 5c a7 08       	lea    r11,[r15+r12*4+0x8]
    1106:	e9 c6 fa ff ff       	jmp    bd1 <_ZN3XGK4MATH4UTIL35makeCatmullRomSpline3PointsClosed3DEPSt6vectorIfSaIfEES5_mf+0xf1>
    110b:	e8 00 00 00 00       	call   1110 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf>

0000000000001110 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf>:
    1110:	41 57                	push   r15
    1112:	41 56                	push   r14
    1114:	41 55                	push   r13
    1116:	41 54                	push   r12
    1118:	55                   	push   rbp
    1119:	53                   	push   rbx
    111a:	48 81 ec 88 00 00 00 	sub    rsp,0x88
    1121:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
    1124:	48 8b 76 08          	mov    rsi,QWORD PTR [rsi+0x8]
    1128:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    112f:	00 00 
    1131:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
    1136:	31 c0                	xor    eax,eax
    1138:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    113d:	48 29 ce             	sub    rsi,rcx
    1140:	48 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],rcx
    1145:	48 89 74 24 58       	mov    QWORD PTR [rsp+0x58],rsi
    114a:	48 c1 fe 02          	sar    rsi,0x2
    114e:	48 85 f6             	test   rsi,rsi
    1151:	48 89 74 24 18       	mov    QWORD PTR [rsp+0x18],rsi
    1156:	0f 84 fa 05 00 00    	je     1756 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x646>
    115c:	66 0f ef c9          	pxor   xmm1,xmm1
    1160:	48 85 d2             	test   rdx,rdx
    1163:	49 89 fd             	mov    r13,rdi
    1166:	f3 48 0f 2a ca       	cvtsi2ss xmm1,rdx
    116b:	79 1e                	jns    118b <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x7b>
    116d:	48 89 d0             	mov    rax,rdx
    1170:	66 0f ef c9          	pxor   xmm1,xmm1
    1174:	48 d1 e8             	shr    rax,1
    1177:	83 e2 01             	and    edx,0x1
    117a:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
    117f:	48 09 d0             	or     rax,rdx
    1182:	f3 48 0f 2a c8       	cvtsi2ss xmm1,rax
    1187:	f3 0f 58 c9          	addss  xmm1,xmm1
    118b:	f3 0f 10 3d 00 00 00 	movss  xmm7,DWORD PTR [rip+0x0]        # 1193 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x83>
    1192:	00 
    1193:	48 8b 6c 24 50       	mov    rbp,QWORD PTR [rsp+0x50]
    1198:	48 8d 7e ff          	lea    rdi,[rsi-0x1]
    119c:	f3 0f 5e f9          	divss  xmm7,xmm1
    11a0:	48 f7 de             	neg    rsi
    11a3:	45 31 f6             	xor    r14d,r14d
    11a6:	48 c1 e6 02          	shl    rsi,0x2
    11aa:	48 89 7c 24 40       	mov    QWORD PTR [rsp+0x40],rdi
    11af:	48 8d 5d fc          	lea    rbx,[rbp-0x4]
    11b3:	48 89 74 24 48       	mov    QWORD PTR [rsp+0x48],rsi
    11b8:	f2 44 0f 10 05 00 00 	movsd  xmm8,QWORD PTR [rip+0x0]        # 11c1 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0xb1>
    11bf:	00 00 
    11c1:	f3 0f 11 7c 24 20    	movss  DWORD PTR [rsp+0x20],xmm7
    11c7:	0f 28 f8             	movaps xmm7,xmm0
    11ca:	0f 57 3d 00 00 00 00 	xorps  xmm7,XMMWORD PTR [rip+0x0]        # 11d1 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0xc1>
    11d1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    11d8:	4d 85 f6             	test   r14,r14
    11db:	0f 84 11 08 00 00    	je     19f2 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x8e2>
    11e1:	49 89 dc             	mov    r12,rbx
    11e4:	4c 3b 74 24 40       	cmp    r14,QWORD PTR [rsp+0x40]
    11e9:	0f 82 f4 07 00 00    	jb     19e3 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x8d3>
    11ef:	4c 8b 54 24 48       	mov    r10,QWORD PTR [rsp+0x48]
    11f4:	4e 8d 5c 13 0c       	lea    r11,[rbx+r10*1+0xc]
    11f9:	48 83 7c 24 08 00    	cmp    QWORD PTR [rsp+0x8],0x0
    11ff:	0f 84 3e 05 00 00    	je     1743 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x633>
    1205:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    120a:	48 8d 54 24 64       	lea    rdx,[rsp+0x64]
    120f:	4c 89 f0             	mov    rax,r14
    1212:	45 31 ff             	xor    r15d,r15d
    1215:	4d 89 e6             	mov    r14,r12
    1218:	4c 8d 4c 24 60       	lea    r9,[rsp+0x60]
    121d:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
    1222:	4c 89 dd             	mov    rbp,r11
    1225:	49 89 c4             	mov    r12,rax
    1228:	48 83 e9 02          	sub    rcx,0x2
    122c:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
    1231:	e9 90 00 00 00       	jmp    12c6 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x1b6>
    1236:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    123d:	00 00 00 
    1240:	4d 85 db             	test   r11,r11
    1243:	74 05                	je     124a <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x13a>
    1245:	f3 45 0f 11 0b       	movss  DWORD PTR [r11],xmm9
    124a:	49 83 c3 04          	add    r11,0x4
    124e:	49 39 f3             	cmp    r11,rsi
    1251:	4d 89 5d 08          	mov    QWORD PTR [r13+0x8],r11
    1255:	0f 84 f5 03 00 00    	je     1650 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x540>
    125b:	4d 85 db             	test   r11,r11
    125e:	74 0c                	je     126c <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x15c>
    1260:	f3 44 0f 10 4c 24 64 	movss  xmm9,DWORD PTR [rsp+0x64]
    1267:	f3 45 0f 11 0b       	movss  DWORD PTR [r11],xmm9
    126c:	49 83 c3 04          	add    r11,0x4
    1270:	49 39 f3             	cmp    r11,rsi
    1273:	4d 89 5d 08          	mov    QWORD PTR [r13+0x8],r11
    1277:	0f 84 23 04 00 00    	je     16a0 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x590>
    127d:	4d 85 db             	test   r11,r11
    1280:	74 0b                	je     128d <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x17d>
    1282:	f3 0f 10 74 24 68    	movss  xmm6,DWORD PTR [rsp+0x68]
    1288:	f3 41 0f 11 33       	movss  DWORD PTR [r11],xmm6
    128d:	49 83 c3 04          	add    r11,0x4
    1291:	49 39 f3             	cmp    r11,rsi
    1294:	4d 89 5d 08          	mov    QWORD PTR [r13+0x8],r11
    1298:	0f 84 52 04 00 00    	je     16f0 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x5e0>
    129e:	4d 85 db             	test   r11,r11
    12a1:	74 0c                	je     12af <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x19f>
    12a3:	f3 44 0f 10 5c 24 6c 	movss  xmm11,DWORD PTR [rsp+0x6c]
    12aa:	f3 45 0f 11 1b       	movss  DWORD PTR [r11],xmm11
    12af:	49 83 c3 04          	add    r11,0x4
    12b3:	49 83 c7 01          	add    r15,0x1
    12b7:	4c 39 7c 24 08       	cmp    QWORD PTR [rsp+0x8],r15
    12bc:	4d 89 5d 08          	mov    QWORD PTR [r13+0x8],r11
    12c0:	0f 84 7a 04 00 00    	je     1740 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x630>
    12c6:	f3 44 0f 10 4b 0c    	movss  xmm9,DWORD PTR [rbx+0xc]
    12cc:	41 0f 28 d9          	movaps xmm3,xmm9
    12d0:	f3 0f 10 73 08       	movss  xmm6,DWORD PTR [rbx+0x8]
    12d5:	f3 44 0f 10 53 14    	movss  xmm10,DWORD PTR [rbx+0x14]
    12db:	f3 41 0f 5c 5e 04    	subss  xmm3,DWORD PTR [r14+0x4]
    12e1:	f3 44 0f 10 6b 10    	movss  xmm13,DWORD PTR [rbx+0x10]
    12e7:	41 0f 28 ea          	movaps xmm5,xmm10
    12eb:	41 0f 28 d5          	movaps xmm2,xmm13
    12ef:	0f 28 e6             	movaps xmm4,xmm6
    12f2:	f3 41 0f 5c 6e 0c    	subss  xmm5,DWORD PTR [r14+0xc]
    12f8:	f3 44 0f 10 63 04    	movss  xmm12,DWORD PTR [rbx+0x4]
    12fe:	f3 41 0f 5c 56 08    	subss  xmm2,DWORD PTR [r14+0x8]
    1304:	f3 44 0f 10 75 04    	movss  xmm14,DWORD PTR [rbp+0x4]
    130a:	f3 41 0f 5c 26       	subss  xmm4,DWORD PTR [r14]
    130f:	f3 44 0f 10 5d 0c    	movss  xmm11,DWORD PTR [rbp+0xc]
    1315:	f3 0f 59 d8          	mulss  xmm3,xmm0
    1319:	f3 45 0f 5c dd       	subss  xmm11,xmm13
    131e:	f3 44 0f 5c f6       	subss  xmm14,xmm6
    1323:	f3 44 0f 10 7d 08    	movss  xmm15,DWORD PTR [rbp+0x8]
    1329:	f3 45 0f 5c f9       	subss  xmm15,xmm9
    132e:	f3 0f 59 e8          	mulss  xmm5,xmm0
    1332:	f3 0f 58 de          	addss  xmm3,xmm6
    1336:	f3 0f 59 d0          	mulss  xmm2,xmm0
    133a:	f3 0f 59 e0          	mulss  xmm4,xmm0
    133e:	f3 44 0f 59 f7       	mulss  xmm14,xmm7
    1343:	f3 44 0f 59 df       	mulss  xmm11,xmm7
    1348:	f3 41 0f 58 ed       	addss  xmm5,xmm13
    134d:	66 48 0f 7e de       	movq   rsi,xmm3
    1352:	f3 0f 10 5d 00       	movss  xmm3,DWORD PTR [rbp+0x0]
    1357:	f3 41 0f 5c dc       	subss  xmm3,xmm12
    135c:	f3 44 0f 59 ff       	mulss  xmm15,xmm7
    1361:	f3 41 0f 58 e4       	addss  xmm4,xmm12
    1366:	48 c1 e6 20          	shl    rsi,0x20
    136a:	f3 41 0f 58 d1       	addss  xmm2,xmm9
    136f:	66 48 0f 7e ef       	movq   rdi,xmm5
    1374:	f3 45 0f 58 f1       	addss  xmm14,xmm9
    1379:	f3 0f 59 df          	mulss  xmm3,xmm7
    137d:	f3 45 0f 58 d3       	addss  xmm10,xmm11
    1382:	48 c1 e7 20          	shl    rdi,0x20
    1386:	f3 45 0f 58 ef       	addss  xmm13,xmm15
    138b:	66 41 0f 7e e0       	movd   r8d,xmm4
    1390:	66 0f 7e d1          	movd   ecx,xmm2
    1394:	66 4d 0f 7e f2       	movq   r10,xmm14
    1399:	49 09 f0             	or     r8,rsi
    139c:	0f 28 cb             	movaps xmm1,xmm3
    139f:	66 4d 0f 7e d3       	movq   r11,xmm10
    13a4:	48 09 f9             	or     rcx,rdi
    13a7:	66 44 0f 7e ee       	movd   esi,xmm13
    13ac:	49 c1 e2 20          	shl    r10,0x20
    13b0:	f3 0f 58 ce          	addss  xmm1,xmm6
    13b4:	66 45 0f ef ff       	pxor   xmm15,xmm15
    13b9:	49 c1 e3 20          	shl    r11,0x20
    13bd:	4c 09 de             	or     rsi,r11
    13c0:	f3 4d 0f 2a ff       	cvtsi2ss xmm15,r15
    13c5:	66 0f 7e cf          	movd   edi,xmm1
    13c9:	4c 09 d7             	or     rdi,r10
    13cc:	4d 85 ff             	test   r15,r15
    13cf:	79 1e                	jns    13ef <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x2df>
    13d1:	4c 89 fa             	mov    rdx,r15
    13d4:	4c 89 f8             	mov    rax,r15
    13d7:	66 45 0f ef ff       	pxor   xmm15,xmm15
    13dc:	48 d1 ea             	shr    rdx,1
    13df:	83 e0 01             	and    eax,0x1
    13e2:	48 09 c2             	or     rdx,rax
    13e5:	f3 4c 0f 2a fa       	cvtsi2ss xmm15,rdx
    13ea:	f3 45 0f 58 ff       	addss  xmm15,xmm15
    13ef:	f3 44 0f 59 7c 24 20 	mulss  xmm15,DWORD PTR [rsp+0x20]
    13f6:	f3 0f 10 15 00 00 00 	movss  xmm2,DWORD PTR [rip+0x0]        # 13fe <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x2ee>
    13fd:	00 
    13fe:	66 45 0f ef d2       	pxor   xmm10,xmm10
    1403:	4d 85 e4             	test   r12,r12
    1406:	66 45 0f ef db       	pxor   xmm11,xmm11
    140b:	f3 41 0f 5c d7       	subss  xmm2,xmm15
    1410:	41 0f 28 f7          	movaps xmm6,xmm15
    1414:	f3 45 0f 5a d7       	cvtss2sd xmm10,xmm15
    1419:	f3 41 0f 59 f7       	mulss  xmm6,xmm15
    141e:	44 0f 28 ca          	movaps xmm9,xmm2
    1422:	f3 44 0f 5a da       	cvtss2sd xmm11,xmm2
    1427:	f3 44 0f 59 ca       	mulss  xmm9,xmm2
    142c:	0f 84 6b 04 00 00    	je     189d <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x78d>
    1432:	44 89 04 24          	mov    DWORD PTR [rsp],r8d
    1436:	49 c1 e8 20          	shr    r8,0x20
    143a:	66 44 0f 6e 34 24    	movd   xmm14,DWORD PTR [rsp]
    1440:	44 89 04 24          	mov    DWORD PTR [rsp],r8d
    1444:	f3 44 0f 10 2c 24    	movss  xmm13,DWORD PTR [rsp]
    144a:	89 0c 24             	mov    DWORD PTR [rsp],ecx
    144d:	48 c1 e9 20          	shr    rcx,0x20
    1451:	4c 39 64 24 10       	cmp    QWORD PTR [rsp+0x10],r12
    1456:	66 0f 6e 2c 24       	movd   xmm5,DWORD PTR [rsp]
    145b:	89 0c 24             	mov    DWORD PTR [rsp],ecx
    145e:	f3 44 0f 10 24 24    	movss  xmm12,DWORD PTR [rsp]
    1464:	0f 84 16 03 00 00    	je     1780 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x670>
    146a:	66 0f ef e4          	pxor   xmm4,xmm4
    146e:	89 3c 24             	mov    DWORD PTR [rsp],edi
    1471:	48 c1 ef 20          	shr    rdi,0x20
    1475:	f2 45 0f 59 d0       	mulsd  xmm10,xmm8
    147a:	66 0f ef c9          	pxor   xmm1,xmm1
    147e:	f3 41 0f 5a e1       	cvtss2sd xmm4,xmm9
    1483:	66 0f ef db          	pxor   xmm3,xmm3
    1487:	f3 44 0f 59 fe       	mulss  xmm15,xmm6
    148c:	f2 44 0f 59 d4       	mulsd  xmm10,xmm4
    1491:	f3 0f 5a de          	cvtss2sd xmm3,xmm6
    1495:	f3 41 0f 59 d1       	mulss  xmm2,xmm9
    149a:	66 0f 6e 34 24       	movd   xmm6,DWORD PTR [rsp]
    149f:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    14a3:	f2 44 0f 59 db       	mulsd  xmm11,xmm3
    14a8:	f3 0f 10 1c 24       	movss  xmm3,DWORD PTR [rsp]
    14ad:	f2 41 0f 5a ca       	cvtsd2ss xmm1,xmm10
    14b2:	66 45 0f ef d2       	pxor   xmm10,xmm10
    14b7:	f2 45 0f 59 d8       	mulsd  xmm11,xmm8
    14bc:	0f 28 e6             	movaps xmm4,xmm6
    14bf:	45 0f 29 11          	movaps XMMWORD PTR [r9],xmm10
    14c3:	48 8b 4b 04          	mov    rcx,QWORD PTR [rbx+0x4]
    14c7:	4c 8b 43 0c          	mov    r8,QWORD PTR [rbx+0xc]
    14cb:	f2 45 0f 5a db       	cvtsd2ss xmm11,xmm11
    14d0:	f3 41 0f 59 db       	mulss  xmm3,xmm11
    14d5:	f3 41 0f 59 e3       	mulss  xmm4,xmm11
    14da:	48 c1 e9 20          	shr    rcx,0x20
    14de:	f3 44 0f 10 4b 04    	movss  xmm9,DWORD PTR [rbx+0x4]
    14e4:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    14e8:	f3 44 0f 59 ca       	mulss  xmm9,xmm2
    14ed:	f3 44 0f 59 e9       	mulss  xmm13,xmm1
    14f2:	f3 0f 10 34 24       	movss  xmm6,DWORD PTR [rsp]
    14f7:	f3 0f 59 f2          	mulss  xmm6,xmm2
    14fb:	89 34 24             	mov    DWORD PTR [rsp],esi
    14fe:	48 c1 ee 20          	shr    rsi,0x20
    1502:	f3 44 0f 59 f1       	mulss  xmm14,xmm1
    1507:	f3 0f 59 e9          	mulss  xmm5,xmm1
    150b:	f3 44 0f 58 eb       	addss  xmm13,xmm3
    1510:	f3 41 0f 59 cc       	mulss  xmm1,xmm12
    1515:	f3 44 0f 58 f4       	addss  xmm14,xmm4
    151a:	f3 41 0f 58 f5       	addss  xmm6,xmm13
    151f:	66 44 0f 6e 2c 24    	movd   xmm13,DWORD PTR [rsp]
    1525:	44 89 04 24          	mov    DWORD PTR [rsp],r8d
    1529:	66 44 0f 6e 14 24    	movd   xmm10,DWORD PTR [rsp]
    152f:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
    1533:	49 c1 e8 20          	shr    r8,0x20
    1537:	f3 45 0f 59 eb       	mulss  xmm13,xmm11
    153c:	f3 45 0f 58 ce       	addss  xmm9,xmm14
    1541:	f3 44 0f 59 1c 24    	mulss  xmm11,DWORD PTR [rsp]
    1547:	4c 89 04 24          	mov    QWORD PTR [rsp],r8
    154b:	f3 44 0f 59 d2       	mulss  xmm10,xmm2
    1550:	f3 0f 11 74 24 64    	movss  DWORD PTR [rsp+0x64],xmm6
    1556:	f3 0f 59 14 24       	mulss  xmm2,DWORD PTR [rsp]
    155b:	f3 41 0f 58 ed       	addss  xmm5,xmm13
    1560:	f3 44 0f 11 4c 24 60 	movss  DWORD PTR [rsp+0x60],xmm9
    1567:	f3 41 0f 58 cb       	addss  xmm1,xmm11
    156c:	f3 41 0f 58 ea       	addss  xmm5,xmm10
    1571:	f3 0f 58 d1          	addss  xmm2,xmm1
    1575:	f3 0f 11 6c 24 68    	movss  DWORD PTR [rsp+0x68],xmm5
    157b:	f3 0f 11 54 24 6c    	movss  DWORD PTR [rsp+0x6c],xmm2
    1581:	48 8b 7b 08          	mov    rdi,QWORD PTR [rbx+0x8]
    1585:	4c 8b 53 10          	mov    r10,QWORD PTR [rbx+0x10]
    1589:	f3 44 0f 10 63 08    	movss  xmm12,DWORD PTR [rbx+0x8]
    158f:	48 c1 ef 20          	shr    rdi,0x20
    1593:	f3 45 0f 59 e7       	mulss  xmm12,xmm15
    1598:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    159c:	f3 0f 10 0c 24       	movss  xmm1,DWORD PTR [rsp]
    15a1:	44 89 14 24          	mov    DWORD PTR [rsp],r10d
    15a5:	49 c1 ea 20          	shr    r10,0x20
    15a9:	66 44 0f 6e 1c 24    	movd   xmm11,DWORD PTR [rsp]
    15af:	f3 41 0f 59 cf       	mulss  xmm1,xmm15
    15b4:	f3 45 0f 58 cc       	addss  xmm9,xmm12
    15b9:	f3 45 0f 59 df       	mulss  xmm11,xmm15
    15be:	f3 0f 58 f1          	addss  xmm6,xmm1
    15c2:	f3 44 0f 11 4c 24 60 	movss  DWORD PTR [rsp+0x60],xmm9
    15c9:	f3 41 0f 58 eb       	addss  xmm5,xmm11
    15ce:	f3 0f 11 74 24 64    	movss  DWORD PTR [rsp+0x64],xmm6
    15d4:	f3 0f 11 6c 24 68    	movss  DWORD PTR [rsp+0x68],xmm5
    15da:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
    15de:	f3 44 0f 59 3c 24    	mulss  xmm15,DWORD PTR [rsp]
    15e4:	f3 41 0f 58 d7       	addss  xmm2,xmm15
    15e9:	f3 0f 11 54 24 6c    	movss  DWORD PTR [rsp+0x6c],xmm2
    15ef:	4d 8b 5d 08          	mov    r11,QWORD PTR [r13+0x8]
    15f3:	49 8b 75 10          	mov    rsi,QWORD PTR [r13+0x10]
    15f7:	49 39 f3             	cmp    r11,rsi
    15fa:	0f 85 40 fc ff ff    	jne    1240 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x130>
    1600:	4c 89 ca             	mov    rdx,r9
    1603:	4c 89 ef             	mov    rdi,r13
    1606:	f2 44 0f 11 44 24 30 	movsd  QWORD PTR [rsp+0x30],xmm8
    160d:	f3 0f 11 7c 24 28    	movss  DWORD PTR [rsp+0x28],xmm7
    1613:	4c 89 0c 24          	mov    QWORD PTR [rsp],r9
    1617:	f3 0f 11 44 24 24    	movss  DWORD PTR [rsp+0x24],xmm0
    161d:	e8 00 00 00 00       	call   1622 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x512>
    1622:	4d 8b 5d 08          	mov    r11,QWORD PTR [r13+0x8]
    1626:	49 8b 75 10          	mov    rsi,QWORD PTR [r13+0x10]
    162a:	f2 44 0f 10 44 24 30 	movsd  xmm8,QWORD PTR [rsp+0x30]
    1631:	f3 0f 10 7c 24 28    	movss  xmm7,DWORD PTR [rsp+0x28]
    1637:	4c 8b 0c 24          	mov    r9,QWORD PTR [rsp]
    163b:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [rsp+0x24]
    1641:	49 39 f3             	cmp    r11,rsi
    1644:	0f 85 11 fc ff ff    	jne    125b <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x14b>
    164a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1650:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
    1655:	4c 89 ef             	mov    rdi,r13
    1658:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
    165d:	f2 44 0f 11 44 24 28 	movsd  QWORD PTR [rsp+0x28],xmm8
    1664:	f3 0f 11 7c 24 24    	movss  DWORD PTR [rsp+0x24],xmm7
    166a:	f3 0f 11 04 24       	movss  DWORD PTR [rsp],xmm0
    166f:	e8 00 00 00 00       	call   1674 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x564>
    1674:	4d 8b 5d 08          	mov    r11,QWORD PTR [r13+0x8]
    1678:	49 8b 75 10          	mov    rsi,QWORD PTR [r13+0x10]
    167c:	4c 8b 4c 24 30       	mov    r9,QWORD PTR [rsp+0x30]
    1681:	f2 44 0f 10 44 24 28 	movsd  xmm8,QWORD PTR [rsp+0x28]
    1688:	f3 0f 10 7c 24 24    	movss  xmm7,DWORD PTR [rsp+0x24]
    168e:	49 39 f3             	cmp    r11,rsi
    1691:	f3 0f 10 04 24       	movss  xmm0,DWORD PTR [rsp]
    1696:	0f 85 e1 fb ff ff    	jne    127d <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x16d>
    169c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    16a0:	49 8d 51 08          	lea    rdx,[r9+0x8]
    16a4:	4c 89 ef             	mov    rdi,r13
    16a7:	f2 44 0f 11 44 24 30 	movsd  QWORD PTR [rsp+0x30],xmm8
    16ae:	f3 0f 11 7c 24 28    	movss  DWORD PTR [rsp+0x28],xmm7
    16b4:	4c 89 0c 24          	mov    QWORD PTR [rsp],r9
    16b8:	f3 0f 11 44 24 24    	movss  DWORD PTR [rsp+0x24],xmm0
    16be:	e8 00 00 00 00       	call   16c3 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x5b3>
    16c3:	4d 8b 5d 08          	mov    r11,QWORD PTR [r13+0x8]
    16c7:	49 8b 75 10          	mov    rsi,QWORD PTR [r13+0x10]
    16cb:	f2 44 0f 10 44 24 30 	movsd  xmm8,QWORD PTR [rsp+0x30]
    16d2:	f3 0f 10 7c 24 28    	movss  xmm7,DWORD PTR [rsp+0x28]
    16d8:	4c 8b 0c 24          	mov    r9,QWORD PTR [rsp]
    16dc:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [rsp+0x24]
    16e2:	49 39 f3             	cmp    r11,rsi
    16e5:	0f 85 b3 fb ff ff    	jne    129e <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x18e>
    16eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    16f0:	49 8d 51 0c          	lea    rdx,[r9+0xc]
    16f4:	4c 89 de             	mov    rsi,r11
    16f7:	4c 89 ef             	mov    rdi,r13
    16fa:	f2 44 0f 11 44 24 30 	movsd  QWORD PTR [rsp+0x30],xmm8
    1701:	4c 89 0c 24          	mov    QWORD PTR [rsp],r9
    1705:	49 83 c7 01          	add    r15,0x1
    1709:	f3 0f 11 7c 24 28    	movss  DWORD PTR [rsp+0x28],xmm7
    170f:	f3 0f 11 44 24 24    	movss  DWORD PTR [rsp+0x24],xmm0
    1715:	e8 00 00 00 00       	call   171a <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x60a>
    171a:	4c 39 7c 24 08       	cmp    QWORD PTR [rsp+0x8],r15
    171f:	f2 44 0f 10 44 24 30 	movsd  xmm8,QWORD PTR [rsp+0x30]
    1726:	4c 8b 0c 24          	mov    r9,QWORD PTR [rsp]
    172a:	f3 0f 10 7c 24 28    	movss  xmm7,DWORD PTR [rsp+0x28]
    1730:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [rsp+0x24]
    1736:	0f 85 8a fb ff ff    	jne    12c6 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x1b6>
    173c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1740:	4d 89 e6             	mov    r14,r12
    1743:	49 83 c6 01          	add    r14,0x1
    1747:	48 83 c3 04          	add    rbx,0x4
    174b:	4c 3b 74 24 18       	cmp    r14,QWORD PTR [rsp+0x18]
    1750:	0f 85 82 fa ff ff    	jne    11d8 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0xc8>
    1756:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
    175b:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    1762:	00 00 
    1764:	0f 85 9c 02 00 00    	jne    1a06 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x8f6>
    176a:	48 81 c4 88 00 00 00 	add    rsp,0x88
    1771:	5b                   	pop    rbx
    1772:	5d                   	pop    rbp
    1773:	41 5c                	pop    r12
    1775:	41 5d                	pop    r13
    1777:	41 5e                	pop    r14
    1779:	41 5f                	pop    r15
    177b:	c3                   	ret    
    177c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1780:	f2 45 0f 58 d2       	addsd  xmm10,xmm10
    1785:	66 45 0f ef ff       	pxor   xmm15,xmm15
    178a:	66 0f ef d2          	pxor   xmm2,xmm2
    178e:	f2 45 0f 59 da       	mulsd  xmm11,xmm10
    1793:	41 0f 29 11          	movaps XMMWORD PTR [r9],xmm2
    1797:	48 8b 73 04          	mov    rsi,QWORD PTR [rbx+0x4]
    179b:	4c 8b 5b 0c          	mov    r11,QWORD PTR [rbx+0xc]
    179f:	f2 45 0f 5a fb       	cvtsd2ss xmm15,xmm11
    17a4:	48 c1 ee 20          	shr    rsi,0x20
    17a8:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
    17ac:	f3 0f 10 1c 24       	movss  xmm3,DWORD PTR [rsp]
    17b1:	44 89 1c 24          	mov    DWORD PTR [rsp],r11d
    17b5:	49 c1 eb 20          	shr    r11,0x20
    17b9:	66 44 0f 6e 14 24    	movd   xmm10,DWORD PTR [rsp]
    17bf:	4c 89 1c 24          	mov    QWORD PTR [rsp],r11
    17c3:	f3 41 0f 59 d9       	mulss  xmm3,xmm9
    17c8:	f3 0f 10 63 04       	movss  xmm4,DWORD PTR [rbx+0x4]
    17cd:	f3 0f 10 0c 24       	movss  xmm1,DWORD PTR [rsp]
    17d2:	f3 41 0f 59 e1       	mulss  xmm4,xmm9
    17d7:	f3 45 0f 59 d1       	mulss  xmm10,xmm9
    17dc:	f3 41 0f 59 c9       	mulss  xmm1,xmm9
    17e1:	f3 45 0f 59 f7       	mulss  xmm14,xmm15
    17e6:	f3 45 0f 59 ef       	mulss  xmm13,xmm15
    17eb:	f3 41 0f 59 ef       	mulss  xmm5,xmm15
    17f0:	f3 45 0f 59 fc       	mulss  xmm15,xmm12
    17f5:	f3 44 0f 58 f4       	addss  xmm14,xmm4
    17fa:	f3 44 0f 58 eb       	addss  xmm13,xmm3
    17ff:	f3 41 0f 58 ea       	addss  xmm5,xmm10
    1804:	f3 44 0f 58 f9       	addss  xmm15,xmm1
    1809:	f3 44 0f 11 74 24 60 	movss  DWORD PTR [rsp+0x60],xmm14
    1810:	f3 44 0f 11 6c 24 64 	movss  DWORD PTR [rsp+0x64],xmm13
    1817:	f3 0f 11 6c 24 68    	movss  DWORD PTR [rsp+0x68],xmm5
    181d:	f3 44 0f 11 7c 24 6c 	movss  DWORD PTR [rsp+0x6c],xmm15
    1824:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
    1828:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    182c:	f3 44 0f 10 4b 08    	movss  xmm9,DWORD PTR [rbx+0x8]
    1832:	f3 44 0f 59 ce       	mulss  xmm9,xmm6
    1837:	48 c1 ea 20          	shr    rdx,0x20
    183b:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    183f:	f3 45 0f 58 ce       	addss  xmm9,xmm14
    1844:	f3 44 0f 10 34 24    	movss  xmm14,DWORD PTR [rsp]
    184a:	f3 44 0f 59 f6       	mulss  xmm14,xmm6
    184f:	89 04 24             	mov    DWORD PTR [rsp],eax
    1852:	48 c1 e8 20          	shr    rax,0x20
    1856:	f3 44 0f 11 4c 24 60 	movss  DWORD PTR [rsp+0x60],xmm9
    185d:	f3 45 0f 58 ee       	addss  xmm13,xmm14
    1862:	f3 44 0f 11 6c 24 64 	movss  DWORD PTR [rsp+0x64],xmm13
    1869:	66 44 0f 6e 2c 24    	movd   xmm13,DWORD PTR [rsp]
    186f:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    1873:	f3 44 0f 59 ee       	mulss  xmm13,xmm6
    1878:	f3 41 0f 58 ed       	addss  xmm5,xmm13
    187d:	f3 0f 11 6c 24 68    	movss  DWORD PTR [rsp+0x68],xmm5
    1883:	f3 0f 10 2c 24       	movss  xmm5,DWORD PTR [rsp]
    1888:	f3 0f 59 ee          	mulss  xmm5,xmm6
    188c:	f3 44 0f 58 fd       	addss  xmm15,xmm5
    1891:	f3 44 0f 11 7c 24 6c 	movss  DWORD PTR [rsp+0x6c],xmm15
    1898:	e9 52 fd ff ff       	jmp    15ef <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x4df>
    189d:	f2 45 0f 58 d2       	addsd  xmm10,xmm10
    18a2:	66 45 0f ef e4       	pxor   xmm12,xmm12
    18a7:	89 3c 24             	mov    DWORD PTR [rsp],edi
    18aa:	48 c1 ef 20          	shr    rdi,0x20
    18ae:	66 0f 6e 14 24       	movd   xmm2,DWORD PTR [rsp]
    18b3:	f2 45 0f 59 da       	mulsd  xmm11,xmm10
    18b8:	f2 45 0f 5a e3       	cvtsd2ss xmm12,xmm11
    18bd:	66 45 0f ef db       	pxor   xmm11,xmm11
    18c2:	45 0f 29 19          	movaps XMMWORD PTR [r9],xmm11
    18c6:	48 8b 4b 04          	mov    rcx,QWORD PTR [rbx+0x4]
    18ca:	4c 8b 43 0c          	mov    r8,QWORD PTR [rbx+0xc]
    18ce:	48 c1 e9 20          	shr    rcx,0x20
    18d2:	f3 44 0f 10 7b 04    	movss  xmm15,DWORD PTR [rbx+0x4]
    18d8:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    18dc:	f3 45 0f 59 f9       	mulss  xmm15,xmm9
    18e1:	f3 0f 10 24 24       	movss  xmm4,DWORD PTR [rsp]
    18e6:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    18ea:	f3 41 0f 59 d4       	mulss  xmm2,xmm12
    18ef:	f3 0f 10 1c 24       	movss  xmm3,DWORD PTR [rsp]
    18f4:	44 89 04 24          	mov    DWORD PTR [rsp],r8d
    18f8:	66 44 0f 6e 14 24    	movd   xmm10,DWORD PTR [rsp]
    18fe:	49 c1 e8 20          	shr    r8,0x20
    1902:	89 34 24             	mov    DWORD PTR [rsp],esi
    1905:	66 0f 6e 0c 24       	movd   xmm1,DWORD PTR [rsp]
    190a:	48 c1 ee 20          	shr    rsi,0x20
    190e:	4c 89 04 24          	mov    QWORD PTR [rsp],r8
    1912:	f3 44 0f 10 34 24    	movss  xmm14,DWORD PTR [rsp]
    1918:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
    191c:	f3 41 0f 59 dc       	mulss  xmm3,xmm12
    1921:	f3 44 0f 58 fa       	addss  xmm15,xmm2
    1926:	f3 41 0f 59 cc       	mulss  xmm1,xmm12
    192b:	f3 44 0f 59 24 24    	mulss  xmm12,DWORD PTR [rsp]
    1931:	f3 41 0f 59 e1       	mulss  xmm4,xmm9
    1936:	f3 45 0f 59 d1       	mulss  xmm10,xmm9
    193b:	f3 44 0f 11 7c 24 60 	movss  DWORD PTR [rsp+0x60],xmm15
    1942:	f3 45 0f 59 f1       	mulss  xmm14,xmm9
    1947:	f3 0f 58 e3          	addss  xmm4,xmm3
    194b:	f3 44 0f 58 d1       	addss  xmm10,xmm1
    1950:	f3 45 0f 58 f4       	addss  xmm14,xmm12
    1955:	f3 0f 11 64 24 64    	movss  DWORD PTR [rsp+0x64],xmm4
    195b:	f3 44 0f 11 54 24 68 	movss  DWORD PTR [rsp+0x68],xmm10
    1962:	f3 44 0f 11 74 24 6c 	movss  DWORD PTR [rsp+0x6c],xmm14
    1969:	48 8b 7b 08          	mov    rdi,QWORD PTR [rbx+0x8]
    196d:	4c 8b 53 10          	mov    r10,QWORD PTR [rbx+0x10]
    1971:	f3 44 0f 10 4b 08    	movss  xmm9,DWORD PTR [rbx+0x8]
    1977:	48 c1 ef 20          	shr    rdi,0x20
    197b:	f3 44 0f 59 ce       	mulss  xmm9,xmm6
    1980:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    1984:	f3 44 0f 10 2c 24    	movss  xmm13,DWORD PTR [rsp]
    198a:	44 89 14 24          	mov    DWORD PTR [rsp],r10d
    198e:	49 c1 ea 20          	shr    r10,0x20
    1992:	66 0f 6e 2c 24       	movd   xmm5,DWORD PTR [rsp]
    1997:	f3 44 0f 59 ee       	mulss  xmm13,xmm6
    199c:	f3 45 0f 58 cf       	addss  xmm9,xmm15
    19a1:	f3 0f 59 ee          	mulss  xmm5,xmm6
    19a5:	f3 41 0f 58 e5       	addss  xmm4,xmm13
    19aa:	f3 44 0f 11 4c 24 60 	movss  DWORD PTR [rsp+0x60],xmm9
    19b1:	f3 44 0f 58 d5       	addss  xmm10,xmm5
    19b6:	f3 0f 11 64 24 64    	movss  DWORD PTR [rsp+0x64],xmm4
    19bc:	f3 44 0f 11 54 24 68 	movss  DWORD PTR [rsp+0x68],xmm10
    19c3:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
    19c7:	f3 44 0f 10 24 24    	movss  xmm12,DWORD PTR [rsp]
    19cd:	f3 44 0f 59 e6       	mulss  xmm12,xmm6
    19d2:	f3 45 0f 58 f4       	addss  xmm14,xmm12
    19d7:	f3 44 0f 11 74 24 6c 	movss  DWORD PTR [rsp+0x6c],xmm14
    19de:	e9 0c fc ff ff       	jmp    15ef <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x4df>
    19e3:	4c 8b 7c 24 50       	mov    r15,QWORD PTR [rsp+0x50]
    19e8:	4f 8d 5c b7 08       	lea    r11,[r15+r14*4+0x8]
    19ed:	e9 07 f8 ff ff       	jmp    11f9 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0xe9>
    19f2:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    19f7:	4c 8b 4c 24 58       	mov    r9,QWORD PTR [rsp+0x58]
    19fc:	4f 8d 64 08 fc       	lea    r12,[r8+r9*1-0x4]
    1a01:	e9 de f7 ff ff       	jmp    11e4 <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0xd4>
    1a06:	e8 00 00 00 00       	call   1a0b <_ZN3XGK4MATH4UTIL29makeCatmullRomSpline3Points3DEPSt6vectorIfSaIfEES5_mf+0x8fb>

Disassembly of section .text._ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_:

0000000000000000 <_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_>:
   0:	41 57                	push   r15
   2:	41 56                	push   r14
   4:	49 89 f6             	mov    r14,rsi
   7:	41 55                	push   r13
   9:	41 54                	push   r12
   b:	49 89 f4             	mov    r12,rsi
   e:	55                   	push   rbp
   f:	53                   	push   rbx
  10:	48 89 fd             	mov    rbp,rdi
  13:	48 83 ec 18          	sub    rsp,0x18
  17:	48 8b 4f 08          	mov    rcx,QWORD PTR [rdi+0x8]
  1b:	48 8b 1f             	mov    rbx,QWORD PTR [rdi]
  1e:	48 89 c8             	mov    rax,rcx
  21:	49 29 de             	sub    r14,rbx
  24:	48 29 d8             	sub    rax,rbx
  27:	48 c1 f8 02          	sar    rax,0x2
  2b:	48 85 c0             	test   rax,rax
  2e:	0f 84 bc 00 00 00    	je     f0 <_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_+0xf0>
  34:	48 8d 34 00          	lea    rsi,[rax+rax*1]
  38:	49 c7 c7 fc ff ff ff 	mov    r15,0xfffffffffffffffc
  3f:	48 39 f0             	cmp    rax,rsi
  42:	0f 86 c0 00 00 00    	jbe    108 <_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_+0x108>
  48:	4c 89 ff             	mov    rdi,r15
  4b:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
  4f:	e8 00 00 00 00       	call   54 <_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_+0x54>
  54:	48 8b 5d 00          	mov    rbx,QWORD PTR [rbp+0x0]
  58:	48 8b 4d 08          	mov    rcx,QWORD PTR [rbp+0x8]
  5c:	4d 89 e0             	mov    r8,r12
  5f:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  63:	49 89 c5             	mov    r13,rax
  66:	49 01 c7             	add    r15,rax
  69:	49 29 d8             	sub    r8,rbx
  6c:	4d 01 ee             	add    r14,r13
  6f:	74 09                	je     7a <_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_+0x7a>
  71:	f3 0f 10 02          	movss  xmm0,DWORD PTR [rdx]
  75:	f3 41 0f 11 06       	movss  DWORD PTR [r14],xmm0
  7a:	49 39 dc             	cmp    r12,rbx
  7d:	74 20                	je     9f <_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_+0x9f>
  7f:	4c 89 c2             	mov    rdx,r8
  82:	48 89 de             	mov    rsi,rbx
  85:	4c 89 ef             	mov    rdi,r13
  88:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
  8d:	4c 89 04 24          	mov    QWORD PTR [rsp],r8
  91:	e8 00 00 00 00       	call   96 <_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_+0x96>
  96:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  9b:	4c 8b 04 24          	mov    r8,QWORD PTR [rsp]
  9f:	49 89 ce             	mov    r14,rcx
  a2:	4f 8d 4c 05 04       	lea    r9,[r13+r8*1+0x4]
  a7:	4d 29 e6             	sub    r14,r12
  aa:	4c 39 e1             	cmp    rcx,r12
  ad:	74 11                	je     c0 <_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_+0xc0>
  af:	4c 89 cf             	mov    rdi,r9
  b2:	4c 89 f2             	mov    rdx,r14
  b5:	4c 89 e6             	mov    rsi,r12
  b8:	e8 00 00 00 00       	call   bd <_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_+0xbd>
  bd:	49 89 c1             	mov    r9,rax
  c0:	4d 01 ce             	add    r14,r9
  c3:	48 85 db             	test   rbx,rbx
  c6:	74 08                	je     d0 <_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_+0xd0>
  c8:	48 89 df             	mov    rdi,rbx
  cb:	e8 00 00 00 00       	call   d0 <_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_+0xd0>
  d0:	4c 89 6d 00          	mov    QWORD PTR [rbp+0x0],r13
  d4:	4c 89 75 08          	mov    QWORD PTR [rbp+0x8],r14
  d8:	4c 89 7d 10          	mov    QWORD PTR [rbp+0x10],r15
  dc:	48 83 c4 18          	add    rsp,0x18
  e0:	5b                   	pop    rbx
  e1:	5d                   	pop    rbp
  e2:	41 5c                	pop    r12
  e4:	41 5d                	pop    r13
  e6:	41 5e                	pop    r14
  e8:	41 5f                	pop    r15
  ea:	c3                   	ret    
  eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  f0:	be 01 00 00 00       	mov    esi,0x1
  f5:	4c 8d 3c b5 00 00 00 	lea    r15,[rsi*4+0x0]
  fc:	00 
  fd:	e9 46 ff ff ff       	jmp    48 <_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_+0x48>
 102:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
 108:	48 bf ff ff ff ff ff 	movabs rdi,0x3fffffffffffffff
 10f:	ff ff 3f 
 112:	48 39 fe             	cmp    rsi,rdi
 115:	0f 87 2d ff ff ff    	ja     48 <_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_+0x48>
 11b:	48 85 f6             	test   rsi,rsi
 11e:	75 d5                	jne    f5 <_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_+0xf5>
 120:	4d 89 f0             	mov    r8,r14
 123:	45 31 ff             	xor    r15d,r15d
 126:	45 31 ed             	xor    r13d,r13d
 129:	e9 3e ff ff ff       	jmp    6c <_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_+0x6c>
