0x00404060:	pusha
0x00404061:	call 0x00404066
0x00404066:	popl %ebp
0x00404067:	subl %ebp, $0x401df3<UINT32>
0x0040406d:	movl %ecx, $0x97b<UINT32>
0x00404072:	leal %edi, 0x401e3b(%ebp)
0x00404078:	movl %esi, %edi
0x0040407a:	lodsb %al, %ds:(%esi)
0x0040407b:	stc
0x0040407c:	stc
0x0040407d:	addb %al, $0xffffffde<UINT8>
0x0040407f:	xorb %al, $0x3f<UINT8>
0x00404081:	rorb %al, $0x4c<UINT8>
0x00404084:	clc
0x00404085:	jmp 0x00404088
0x00404088:	stc
0x00404089:	jmp 0x0040408c
0x0040408c:	nop
0x0040408d:	addb %al, $0xffffffab<UINT8>
0x0040408f:	addb %al, $0xfffffff5<UINT8>
0x00404091:	rorb %al, $0xffffff81<UINT8>
0x00404094:	rolb %al, $0x3e<UINT8>
0x00404097:	addb %al, $0x24<UINT8>
0x00404099:	subb %al, %cl
0x0040409b:	subb %al, %cl
0x0040409d:	addb %al, %cl
0x0040409f:	clc
0x004040a0:	jmp 0x004040a3
0x004040a3:	jmp 0x004040a6
0x004040a6:	stc
0x004040a7:	rolb %al, $0xffffffb5<UINT8>
0x004040aa:	stc
0x004040ab:	stosb %es:(%edi), %al
0x004040ac:	loop 0x0040407a
0x004040ae:	movl %eax, 0x20(%esp)
0x004040b2:	incl %eax
0x004040b3:	js 10
0x004040b5:	movl 0x402578(%ebp), $0x1<UINT32>
0x004040bf:	leal %eax, 0x401ded(%ebp)
0x004040c5:	movl %ecx, $0x62a<UINT32>
0x004040ca:	call 0x00404310
0x00404310:	movl %edi, %eax
0x00404312:	xorl %eax, %eax
0x00404314:	xorl %ebx, %ebx
0x00404316:	xorl %edx, %edx
0x00404318:	movb %al, (%edi)
0x0040431a:	mull %eax, %edx
0x0040431c:	addl %ebx, %eax
0x0040431e:	incl %edx
0x0040431f:	incl %edi
0x00404320:	loop 0x00404318
0x00404322:	xchgl %ebx, %eax
0x00404323:	ret

0x004040cf:	movl 0x402574(%ebp), %eax
0x004040d5:	movl %eax, 0x40256c(%ebp)
0x004040db:	andl %eax, $0x1<UINT8>
0x004040de:	je 0x00404120
0x00404120:	movl %eax, 0x402564(%ebp)
0x00404126:	addl %eax, 0x3c(%eax)
0x00404129:	addl %eax, $0x80<UINT32>
0x0040412e:	movl %ecx, (%eax)
0x00404130:	addl %ecx, 0x402564(%ebp)
0x00404136:	addl %ecx, $0x10<UINT8>
0x00404139:	movl %eax, (%ecx)
0x0040413b:	addl %eax, 0x402564(%ebp)
0x00404141:	movl %ebx, (%eax)
0x00404143:	movl 0x4026f0(%ebp), %ebx
0x00404149:	addl %eax, $0x4<UINT8>
0x0040414c:	movl %ebx, (%eax)
0x0040414e:	movl 0x4026f4(%ebp), %ebx
0x00404154:	leal %eax, 0x4026f8(%ebp)
0x0040415a:	pushl %eax
0x0040415b:	call LoadLibraryA@kernel32.dll
LoadLibraryA@kernel32.dll: API Node	
0x00404161:	movl %esi, %eax
0x00404163:	movl 0x402705(%ebp), %eax
0x00404169:	leal %eax, 0x402709(%ebp)
0x0040416f:	call 0x0040420a
0x0040420a:	pushl %eax
0x0040420b:	pushl %esi
0x0040420c:	call GetProcAddress@kernel32.dll
GetProcAddress@kernel32.dll: API Node	
0x00404212:	ret

0x00404174:	movl 0x40271a(%ebp), %eax
0x0040417a:	leal %eax, 0x40271e(%ebp)
0x00404180:	call 0x0040420a
0x00404185:	movl 0x40272d(%ebp), %eax
0x0040418b:	leal %eax, 0x402731(%ebp)
0x00404191:	call 0x0040420a
0x00404196:	movl 0x402744(%ebp), %eax
0x0040419c:	leal %eax, 0x402748(%ebp)
0x004041a2:	call 0x0040420a
0x004041a7:	movl 0x402754(%ebp), %eax
0x004041ad:	leal %eax, 0x402758(%ebp)
0x004041b3:	call 0x0040420a
0x004041b8:	movl 0x402764(%ebp), %eax
0x004041be:	leal %eax, 0x402768(%ebp)
0x004041c4:	call 0x0040420a
0x004041c9:	movl 0x402773(%ebp), %eax
0x004041cf:	leal %eax, 0x402777(%ebp)
0x004041d5:	call 0x0040420a
0x004041da:	movl 0x402780(%ebp), %eax
0x004041e0:	leal %eax, 0x402784(%ebp)
0x004041e6:	call 0x0040420a
0x004041eb:	movl 0x402790(%ebp), %eax
0x004041f1:	leal %eax, 0x402794(%ebp)
0x004041f7:	call 0x0040420a
0x004041fc:	movl 0x4027a0(%ebp), %eax
0x00404202:	leal %eax, 0x401fa0(%ebp)
0x00404208:	pushl %eax
0x00404209:	ret

0x00404213:	testl 0x40256c(%ebp), $0x10<UINT32>
0x0040421d:	je 55
0x0040421f:	pushl %fs:0x30
0x00404226:	popl %eax
0x00404227:	testl %eax, %eax
0x00404229:	js 15
0x0040422b:	movl %eax, 0xc(%eax)
0x0040422e:	movl %eax, 0xc(%eax)
0x00404231:	movl 0x20(%eax), $0x1000<UINT32>
0x00404238:	jmp 0x00404256
0x00404256:	movl %edi, 0x402564(%ebp)
0x0040425c:	addl %edi, 0x3c(%edi)
0x0040425f:	movl %esi, 0x402564(%ebp)
0x00404265:	movl %ecx, 0x54(%edi)
0x00404268:	leal %eax, 0x4027d2(%ebp)
0x0040426e:	pushl %eax
0x0040426f:	pushl $0x4<UINT8>
0x00404271:	pushl %ecx
0x00404272:	pushl 0x402564(%ebp)
0x00404278:	call VirtualProtect@Kernel32.dll
VirtualProtect@Kernel32.dll: API Node	
0x0040427e:	testl 0x40256c(%ebp), $0x8<UINT32>
0x00404288:	je 167
0x0040428e:	pushl $0x104<UINT32>
0x00404293:	leal %edi, 0x4027d2(%ebp)
0x00404299:	pushl %edi
0x0040429a:	pushl $0x0<UINT8>
0x0040429c:	call GetModuleFileNameA@Kernel32.dll
GetModuleFileNameA@Kernel32.dll: API Node	
0x004042a2:	pushl $0x0<UINT8>
0x004042a4:	pushl $0x80<UINT32>
0x004042a9:	pushl $0x3<UINT8>
0x004042ab:	pushl $0x0<UINT8>
0x004042ad:	pushl $0x1<UINT8>
0x004042af:	pushl $0x80000000<UINT32>
0x004042b4:	pushl %edi
0x004042b5:	call CreateFileA@Kernel32.dll
CreateFileA@Kernel32.dll: API Node	
0x004042bb:	cmpl %eax, $0xffffffff<UINT8>
0x004042be:	jne 0x004042c4
0x004042c4:	movl %edi, %eax
0x004042c6:	pushl $0x0<UINT8>
0x004042c8:	pushl %edi
0x004042c9:	call GetFileSize@Kernel32.dll
GetFileSize@Kernel32.dll: API Node	
0x004042cf:	subl %eax, $0x5<UINT8>
0x004042d2:	xchgl %esi, %eax
0x004042d3:	pushl %esi
0x004042d4:	pushl $0x40<UINT8>
0x004042d6:	call GlobalAlloc@Kernel32.dll
GlobalAlloc@Kernel32.dll: API Node	
0x004042dc:	orl %eax, %eax
0x004042de:	jne 0x004042e2
0x004042e2:	xchgl %ebx, %eax
0x004042e3:	pushl $0x0<UINT8>
0x004042e5:	leal %eax, 0x4027d2(%ebp)
0x004042eb:	pushl %eax
0x004042ec:	pushl %esi
0x004042ed:	pushl %ebx
0x004042ee:	pushl %edi
0x004042ef:	call ReadFile@Kernel32.dll
ReadFile@Kernel32.dll: API Node	
0x004042f5:	movl %eax, %ebx
0x004042f7:	movl %ecx, %esi
0x004042f9:	pushl %ebx
0x004042fa:	pushl %edi
0x004042fb:	call 0x00404310
0x00404300:	movl 0x402570(%ebp), %eax
0x00404306:	popl %edi
0x00404307:	popl %ebx
0x00404308:	leal %eax, 0x4020b1(%ebp)
0x0040430e:	pushl %eax
0x0040430f:	ret

0x00404324:	pushl %ebx
0x00404325:	call GlobalFree@Kernel32.dll
GlobalFree@Kernel32.dll: API Node	
0x0040432b:	xchgl %esi, %eax
0x0040432c:	pushl %eax
0x0040432d:	pushl %edi
0x0040432e:	call CloseHandle@Kernel32.dll
CloseHandle@Kernel32.dll: API Node	
0x00404334:	popl %eax
0x00404335:	movl %eax, 0x402564(%ebp)
0x0040433b:	movl %ebx, $0x1<UINT32>
0x00404340:	call 0x0040434d
0x0040434d:	movl %edi, %eax
0x0040434f:	addl %edi, 0x3c(%edi)
0x00404352:	movl %esi, %edi
0x00404354:	addl %esi, $0xf8<UINT32>
0x0040435a:	xorl %edx, %edx
0x0040435c:	cmpl (%esi), $0x63727372<UINT32>
0x00404362:	jne 0x00404369
0x00404369:	cmpl (%esi), $0x7273722e<UINT32>
0x0040436f:	jne 0x00404376
0x00404376:	cmpl (%esi), $0x6f6c6572<UINT32>
0x0040437c:	jne 0x00404383
0x00404383:	cmpl (%esi), $0x6c65722e<UINT32>
0x00404389:	jne 0x0040438d
0x0040438d:	cmpl (%esi), $0x4379<UINT32>
0x00404393:	jne 0x00404397
0x00404397:	cmpl (%esi), $0x6164652e<UINT32>
0x0040439d:	jne 0x004043a1
0x004043a1:	cmpl 0x14(%esi), $0x0<UINT8>
0x004043a5:	je 6
0x004043a7:	cmpl 0x10(%esi), $0x0<UINT8>
0x004043ab:	jne 0x004043af
0x004043af:	pusha
0x004043b0:	movl %ecx, 0x10(%esi)
0x004043b3:	orl %ebx, %ebx
0x004043b5:	jne 0x004043c3
0x004043c3:	movl %esi, 0xc(%esi)
0x004043c6:	addl %esi, %eax
0x004043c8:	call 0x004043cf
0x004043cf:	movl %edi, %esi
0x004043d1:	lodsb %al, %ds:(%esi)
0x004043d2:	stc
0x004043d3:	clc
0x004043d4:	jmp 0x004043d7
0x004043d7:	stc
0x004043d8:	jmp 0x004043db
0x004043db:	nop
0x004043dc:	addb %al, $0xffffffab<UINT8>
0x004043de:	addb %al, $0xfffffff5<UINT8>
0x004043e0:	rorb %al, $0xffffff81<UINT8>
0x004043e3:	rolb %al, $0x3e<UINT8>
0x004043e6:	addb %al, $0x24<UINT8>
0x004043e8:	subb %al, %cl
0x004043ea:	subb %al, %cl
0x004043ec:	addb %al, %cl
0x004043ee:	clc
0x004043ef:	jmp 0x004043f2
0x004043f2:	jmp 0x004043f5
0x004043f5:	stc
0x004043f6:	rolb %al, $0xffffffb5<UINT8>
0x004043f9:	stc
0x004043fa:	stc
0x004043fb:	addb %al, $0xffffffde<UINT8>
0x004043fd:	xorb %al, $0x3f<UINT8>
0x004043ff:	jmp 0x00404402
0x00404402:	stosb %es:(%edi), %al
0x00404403:	loop 0x004043d1
0x00404405:	ret

0x004043cd:	jmp 0x00404406
0x00404406:	popa
0x00404407:	addl %esi, $0x28<UINT8>
0x0040440a:	incl %edx
0x0040440b:	cmpw %dx, 0x6(%edi)
0x0040440f:	jne 0x0040435c
0x00404395:	jmp 0x00404407
0x00404415:	ret

0x00404345:	leal %eax, 0x4021a3(%ebp)
0x0040434b:	pushl %eax
0x0040434c:	ret

0x00404416:	movl %ebx, 0x402564(%ebp)
0x0040441c:	addl %ebx, 0x402568(%ebp)
0x00404422:	rorl %ebx, $0x7<UINT8>
0x00404425:	movl 0x10(%esp), %ebx
0x00404429:	leal %ebx, 0x402499(%ebp)
0x0040442f:	movl 0x1c(%esp), %ebx
0x00404433:	movl %edi, 0x402564(%ebp)
0x00404439:	addl %edi, 0x3c(%edi)
0x0040443c:	movl %ebx, 0xc0(%edi)
0x00404442:	cmpl %ebx, $0x0<UINT8>
0x00404445:	je 0x00404456
0x00404456:	movl %eax, 0x402570(%ebp)
0x0040445c:	orl %eax, %eax
0x0040445e:	je 13
0x00404460:	cmpl %eax, 0x4027ce(%ebp)
0x00404466:	je 0x0040446d
0x0040446d:	leal %esi, 0x40257c(%ebp)
0x00404473:	testl 0x40256c(%ebp), $0x20<UINT32>
0x0040447d:	je 73
0x0040447f:	pushl %esi
0x00404480:	leal %edi, 0x4027d2(%ebp)
0x00404486:	xorl %ecx, %ecx
0x00404488:	jmp 0x004044a1
0x004044a1:	cmpl 0x4(%esi), $0x0<UINT8>
0x004044a5:	jne 0x0040448a
0x0040448a:	movl %edx, 0x4(%esi)
0x0040448d:	addl %edx, 0x402564(%ebp)
0x00404493:	jmp 0x00404499
0x00404499:	cmpl (%edx), $0x0<UINT8>
0x0040449c:	jne 0x00404495
0x00404495:	incl %ecx
0x00404496:	addl %edx, $0x4<UINT8>
0x0040449e:	addl %esi, $0xc<UINT8>
0x004044a7:	xorl %edx, %edx
0x004044a9:	movl %eax, $0x5<UINT32>
0x004044ae:	mull %eax, %ecx
0x004044b0:	pushl %eax
0x004044b1:	pushl $0x0<UINT8>
0x004044b3:	call GlobalAlloc@Kernel32.dll
0x004044b9:	orl %eax, %eax
0x004044bb:	jne 0x004044c2
0x004044c2:	movl (%edi), %eax
0x004044c4:	movl 0x4(%edi), %eax
0x004044c7:	popl %esi
0x004044c8:	jmp 0x0040460f
0x0040460f:	cmpl 0x4(%esi), $0x0<UINT8>
0x00404613:	jne 0x004044cd
0x004044cd:	movl %ebx, (%esi)
0x004044cf:	addl %ebx, 0x402564(%ebp)
0x004044d5:	movl %eax, %ebx
0x004044d7:	call 0x004044e4
0x004044e4:	pushl %esi
0x004044e5:	pushl %edi
0x004044e6:	movl %esi, %eax
0x004044e8:	movl %edi, %eax
0x004044ea:	lodsb %al, %ds:(%esi)
0x004044eb:	rorb %al, $0x4<UINT8>
0x004044ee:	stosb %es:(%edi), %al
0x004044ef:	cmpb (%edi), $0x0<UINT8>
0x004044f2:	jne 0x004044ea
0x004044f4:	popl %edi
0x004044f5:	popl %esi
0x004044f6:	ret

0x004044dc:	leal %eax, 0x402284(%ebp)
0x004044e2:	pushl %eax
0x004044e3:	ret

0x004044f7:	pushl %ebx
0x004044f8:	call LoadLibraryA@kernel32.dll
0x004044fe:	testl %eax, %eax
0x00404500:	je 278
0x00404506:	pushl %eax
0x00404507:	testl 0x40256c(%ebp), $0x4<UINT32>
0x00404511:	je 14
0x00404513:	leal %eax, 0x4022ae(%ebp)
0x00404519:	pushl %eax
0x0040451a:	movl %eax, %ebx
0x0040451c:	jmp 0x00404769
0x00404769:	jmp 0x0040476f
0x0040476f:	cmpb (%eax), $0x0<UINT8>
0x00404772:	jne 0x0040476b
0x0040476b:	movb (%eax), $0x0<UINT8>
0x0040476e:	incl %eax
0x00404774:	ret

0x00404521:	popl %ebx
0x00404522:	movl %ecx, 0x8(%esi)
0x00404525:	orl %ecx, %ecx
0x00404527:	jne 0x0040452c
0x0040452c:	addl %ecx, 0x402564(%ebp)
0x00404532:	movl %edx, 0x4(%esi)
0x00404535:	addl %edx, 0x402564(%ebp)
0x0040453b:	jmp 0x00404603
0x00404603:	cmpl (%ecx), $0x0<UINT8>
0x00404606:	jne 0x00404540
0x00404540:	testl (%ecx), $0x80000000<UINT32>
0x00404546:	jne 75
0x00404548:	movl %eax, (%ecx)
0x0040454a:	addl %eax, $0x2<UINT8>
0x0040454d:	addl %eax, 0x402564(%ebp)
0x00404553:	pushl %eax
0x00404554:	call 0x004044e4
0x00404559:	popl %eax
0x0040455a:	movl %edi, %eax
0x0040455c:	pushl %edx
0x0040455d:	pushl %ecx
0x0040455e:	pushl %eax
0x0040455f:	pushl %ebx
0x00404560:	call GetProcAddress@kernel32.dll
0x00404566:	orl %eax, %eax
0x00404568:	jne 0x00404571
0x00404571:	popl %ecx
0x00404572:	popl %edx
0x00404573:	pusha
0x00404574:	testl 0x40256c(%ebp), $0x4<UINT32>
0x0040457e:	je 14
0x00404580:	leal %eax, 0x40231b(%ebp)
0x00404586:	pushl %eax
0x00404587:	movl %eax, %edi
0x00404589:	jmp 0x00404769
0x0040458e:	popa
0x0040458f:	movl (%edx), %eax
0x00404591:	jmp 0x004045ac
0x004045ac:	testl 0x40256c(%ebp), $0x20<UINT32>
0x004045b6:	je 69
0x004045b8:	cmpl 0x402578(%ebp), $0x0<UINT8>
0x004045bf:	je 20
0x004045c1:	cmpl %ebx, $0x70000000<UINT32>
0x004045c7:	jb 8
0x004045c9:	cmpl %ebx, $0x77ffffff<UINT32>
0x004045cf:	jbe 0x004045df
0x004045df:	pushl %edi
0x004045e0:	pushl %esi
0x004045e1:	leal %edi, 0x4027d2(%ebp)
0x004045e7:	movl %esi, 0x4(%edi)
0x004045ea:	movl (%edx), %esi
0x004045ec:	subl %eax, %esi
0x004045ee:	subl %eax, $0x5<UINT8>
0x004045f1:	movb (%esi), $0xffffffe9<UINT8>
0x004045f4:	movl 0x1(%esi), %eax
0x004045f7:	addl 0x4(%edi), $0x5<UINT8>
0x004045fb:	popl %esi
0x004045fc:	popl %edi
0x004045fd:	addl %ecx, $0x4<UINT8>
0x00404600:	addl %edx, $0x4<UINT8>
0x0040460c:	addl %esi, $0xc<UINT8>
0x00404619:	xorl %eax, %eax
0x0040461b:	incl %eax
0x0040461c:	cmpl %eax, $0x1<UINT8>
0x0040461f:	je 0x00404623
0x00404623:	testl 0x40256c(%ebp), $0x2<UINT32>
0x0040462d:	je 0x00404647
0x00404647:	leal %eax, 0x401ded(%ebp)
0x0040464d:	movl %ecx, $0x62a<UINT32>
0x00404652:	jmp 0x00404655
0x00404655:	call 0x00404310
0x0040465a:	jmp 0x0040465d
0x0040465d:	movl %ebx, 0x402574(%ebp)
0x00404663:	xorl %eax, %ebx
0x00404665:	je 0x0040466f
0x0040466f:	leal %edi, 0x402417(%ebp)
0x00404675:	movl %esi, %edi
0x00404677:	movl %ecx, $0xdf<UINT32>
0x0040467c:	xorl %ebx, %ebx
0x0040467e:	lodsb %al, %ds:(%esi)
0x0040467f:	xorb %al, $0x79<UINT8>
0x00404681:	subb %al, %bl
0x00404683:	rolb %al, $0x2<UINT8>
0x00404686:	stosb %es:(%edi), %al
0x00404687:	incl %ebx
0x00404688:	loop 0x0040467e
0x0040468a:	leal %eax, 0x4027a4(%ebp)
0x00404690:	pushl %eax
0x00404691:	pushl 0x402705(%ebp)
0x00404697:	call GetProcAddress@kernel32.dll
0x0040469d:	orl %eax, %eax
0x0040469f:	je 8
0x004046a1:	call IsDebuggerPresent@kernel32.dll
IsDebuggerPresent@kernel32.dll: API Node	
0x004046a3:	orl %eax, %eax
0x004046a5:	je 0x004046a9
0x004046a9:	testl 0x40256c(%ebp), $0x1<UINT32>
0x004046b3:	je 0x00404704
0x00404704:	leal %eax, 0x4024cb(%ebp)
0x0040470a:	pushl %eax
0x0040470b:	ret

0x0040473e:	xorb %al, %al
0x00404740:	leal %edi, 0x401ded(%ebp)
0x00404746:	movl %ecx, $0x6ac<UINT32>
0x0040474b:	stosb %es:(%edi), %al
0x0040474c:	loop 0x0040474b
0x0040474e:	leal %edi, 0x4024f6(%ebp)
0x00404754:	movl %ecx, $0x2c0<UINT32>
0x00404759:	stosb %es:(%edi), %al
0x0040475a:	loop 0x00404759
0x0040475c:	popa
0x0040475d:	pushl %eax
0x0040475e:	xorl %eax, %eax
0x00404760:	pushl %fs:(%eax)
0x00404763:	movl %fs:(%eax), %esp
0x00404766:	jmp 0x00404769
0x00404769:	addb (%eax), %al
0x0040470c:	pushl %ebp
0x0040470d:	movl %ebp, %esp
0x0040470f:	pushl %edi
0x00404710:	movl %eax, 0x10(%ebp)
0x00404713:	movl %edi, 0xc4(%eax)
0x00404719:	pushl (%edi)
0x0040471b:	xorl %edi, %edi
0x0040471d:	popl %fs:(%edi)
0x00404720:	addl 0xc4(%eax), $0x8<UINT8>
0x00404727:	movl %edi, 0xa4(%eax)
0x0040472d:	roll %edi, $0x7<UINT8>
0x00404730:	movl 0xb8(%eax), %edi
0x00404736:	movl %eax, $0x0<UINT32>
0x0040473b:	popl %edi
0x0040473c:	leave
0x0040473d:	ret

0x00401000:	pushl %eax
0x00401001:	pushl %ebx
0x00401002:	leal %eax, 0x403098
0x00401008:	pushl %eax
0x00401009:	call 0x004011f2
0x004011f2:	jmp 0x0029d8a9
0x0029d8a9:	jmp SetCurrentDirectoryA@kernel32.dll
SetCurrentDirectoryA@kernel32.dll: API Node	
0x0040100e:	leal %eax, 0x40306d
0x00401014:	pushl $0x0<UINT8>
0x00401016:	pushl $0x80<UINT32>
0x0040101b:	pushl $0x2<UINT8>
0x0040101d:	pushl $0x0<UINT8>
0x0040101f:	pushl $0x1<UINT8>
0x00401021:	pushl $0x40000000<UINT32>
0x00401026:	pushl %eax
0x00401027:	call 0x00401180
0x00401180:	jmp 0x0029d84a
0x0029d84a:	jmp CreateFileA@kernel32.dll
CreateFileA@kernel32.dll: API Node	
0x0040102c:	movl %ebx, %eax
0x0040102e:	pushl $0x0<UINT8>
0x00401030:	pushl $0x0<UINT8>
0x00401032:	pushl $0xa<UINT8>
0x00401034:	leal %eax, 0x403008
0x0040103a:	pushl %eax
0x0040103b:	pushl %ebx
0x0040103c:	call 0x004011fe
0x004011fe:	jmp 0x0029d8b3
0x0029d8b3:	jmp WriteFile@kernel32.dll
WriteFile@kernel32.dll: API Node	
0x00401041:	pushl %ebx
0x00401042:	call 0x00401174
0x00401174:	jmp 0x0029d840
0x0029d840:	jmp CloseHandle@kernel32.dll
CloseHandle@kernel32.dll: API Node	
0x00401047:	pushl $0x0<UINT8>
0x00401049:	leal %eax, 0x403080
0x0040104f:	pushl %eax
0x00401050:	leal %eax, 0x403076
0x00401056:	pushl %eax
0x00401057:	call 0x0040117a
0x0040117a:	jmp 0x0029d845
0x0029d845:	jmp CopyFileA@kernel32.dll
CopyFileA@kernel32.dll: API Node	
0x0040105c:	leal %eax, 0x403090
0x00401062:	pushl %eax
0x00401063:	leal %eax, 0x40308a
0x00401069:	pushl %eax
0x0040106a:	call 0x00401198
0x00401198:	jmp 0x0029d85e
0x0029d85e:	jmp FindFirstFileA@kernel32.dll
FindFirstFileA@kernel32.dll: API Node	
0x0040106f:	leal %ebx, 0x403090
0x00401075:	pushl %ebx
0x00401076:	pushl %eax
0x00401077:	call 0x0040119e
0x0040119e:	jmp 0x0029d863
0x0029d863:	jmp FindNextFileA@kernel32.dll
FindNextFileA@kernel32.dll: API Node	
0x0040107c:	pushl %eax
0x0040107d:	call 0x00401192
0x00401192:	jmp 0x0029d859
0x0029d859:	jmp FindClose@kernel32.dll
FindClose@kernel32.dll: API Node	
0x00401082:	leal %eax, 0x40306d
0x00401088:	pushl %eax
0x00401089:	call 0x004011b0
0x004011b0:	jmp 0x0029d872
0x0029d872:	jmp GetFileAttributesA@kernel32.dll
GetFileAttributesA@kernel32.dll: API Node	
0x0040108e:	pushl $0x80<UINT32>
0x00401093:	leal %eax, 0x40306d
0x00401099:	pushl %eax
0x0040109a:	call 0x004011f8
0x004011f8:	jmp 0x0029d8ae
0x0029d8ae:	jmp SetFileAttributesA@kernel32.dll
SetFileAttributesA@kernel32.dll: API Node	
0x0040109f:	leal %eax, 0x40306d
0x004010a5:	pushl %eax
0x004010a6:	call 0x004011b0
0x004010ab:	leal %eax, 0x40306d
0x004010b1:	pushl %eax
0x004010b2:	call 0x00401186
0x00401186:	jmp 0x0029d84f
0x0029d84f:	jmp DeleteFileA@kernel32.dll
DeleteFileA@kernel32.dll: API Node	
0x004010b7:	leal %eax, 0x403060
0x004010bd:	pushl %eax
0x004010be:	call 0x004011ce
0x004011ce:	jmp 0x0029d88b
0x0029d88b:	jmp GetStartupInfoA@kernel32.dll
GetStartupInfoA@kernel32.dll: API Node	
0x004010c3:	call 0x004011b6
0x004011b6:	jmp 0x0029d877
0x0029d877:	jmp GetLastError@kernel32.dll
GetLastError@kernel32.dll: API Node	
0x004010c8:	call 0x004011e0
0x004011e0:	jmp 0x0029d89a
0x0029d89a:	jmp GetVersion@kernel32.dll
GetVersion@kernel32.dll: API Node	
0x004010cd:	leal %ebx, 0x403042
0x004010d3:	pushl $0x64<UINT8>
0x004010d5:	pushl %ebx
0x004010d6:	call 0x004011d4
0x004011d4:	jmp 0x0029d890
0x0029d890:	jmp GetSystemDirectoryA@kernel32.dll
GetSystemDirectoryA@kernel32.dll: API Node	
0x004010db:	leal %ebx, 0x403042
0x004010e1:	pushl %ebx
0x004010e2:	pushl $0x64<UINT8>
0x004010e4:	call 0x004011aa
0x004011aa:	jmp 0x0029d86d
0x0029d86d:	jmp GetCurrentDirectoryA@kernel32.dll
GetCurrentDirectoryA@kernel32.dll: API Node	
0x004010e9:	leal %ebx, 0x403042
0x004010ef:	pushl $0x64<UINT8>
0x004010f1:	pushl %ebx
0x004010f2:	call 0x004011e6
0x004011e6:	jmp 0x0029d89f
0x0029d89f:	jmp GetWindowsDirectoryA@kernel32.dll
GetWindowsDirectoryA@kernel32.dll: API Node	
0x004010f7:	call 0x004011a4
0x004011a4:	jmp 0x0029d868
0x0029d868:	jmp GetCommandLineA@kernel32.dll
GetCommandLineA@kernel32.dll: API Node	
0x004010fc:	leal %eax, 0x403054
0x00401102:	pushl %eax
0x00401103:	call 0x004011da
0x004011da:	jmp 0x0029d895
0x0029d895:	jmp GetSystemTime@kernel32.dll
GetSystemTime@kernel32.dll: API Node	
0x00401108:	leal %eax, 0x403022
0x0040110e:	pushl %eax
0x0040110f:	call 0x004011ec
0x004011ec:	jmp 0x0029d8a4
0x0029d8a4:	jmp LoadLibraryA@kernel32.dll
0x00401114:	leal %eax, 0x403015
0x0040111a:	pushl %eax
0x0040111b:	call 0x004011ec
0x00401120:	leal %ebx, 0x40302d
0x00401126:	pushl %ebx
0x00401127:	pushl %eax
0x00401128:	call 0x004011c8
0x004011c8:	jmp 0x0029d886
0x0029d886:	jmp GetProcAddress@kernel32.dll
0x0040112d:	leal %ebx, 0x403042
0x00401133:	pushl %ebx
0x00401134:	pushl $0x64<UINT8>
0x00401136:	call 0x004011aa
0x0040113b:	pushl $0x64<UINT8>
0x0040113d:	pushl $0x403000<UINT32>
0x00401142:	pushl $0x0<UINT8>
0x00401144:	call 0x004011bc
0x004011bc:	jmp 0x0029d87c
0x0029d87c:	jmp GetModuleFileNameA@kernel32.dll
GetModuleFileNameA@kernel32.dll: API Node	
0x00401149:	leal %eax, 0x403008
0x0040114f:	movl %ebx, $0x0<UINT32>
0x00401154:	pushl %ebx
0x00401155:	pushl %eax
0x00401156:	pushl %eax
0x00401157:	pushl %ebx
0x00401158:	call 0x00401204
0x00401204:	jmp 0x0029d8b8
0x0029d8b8:	jmp MessageBoxA@user32.dll
MessageBoxA@user32.dll: API Node	
0x0040115d:	pushl $0x0<UINT8>
0x0040115f:	call 0x004011c2
0x004011c2:	jmp 0x0029d881
0x0029d881:	jmp GetModuleHandleA@kernel32.dll
GetModuleHandleA@kernel32.dll: API Node	
0x00401164:	addl %eax, $0x116b<UINT32>
0x00401169:	pushl %eax
0x0040116a:	ret

0x0040116b:	addl %eax, %ebx
0x0040116d:	popl %eax
0x0040116e:	call 0x0040118c
0x0040118c:	jmp 0x0029d854
0x0029d854:	jmp ExitProcess@kernel32.dll
ExitProcess@kernel32.dll: Exit Node	
