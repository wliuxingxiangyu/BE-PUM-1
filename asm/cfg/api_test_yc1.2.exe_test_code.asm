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
0x00404278:	call VirtualProtect@kernel32.dll
VirtualProtect@kernel32.dll: API Node	
0x0040427e:	testl 0x40256c(%ebp), $0x8<UINT32>
0x00404288:	je 167
0x0040428e:	pushl $0x104<UINT32>
0x00404293:	leal %edi, 0x4027d2(%ebp)
0x00404299:	pushl %edi
0x0040429a:	pushl $0x0<UINT8>
0x0040429c:	call GetModuleFileNameA@kernel32.dll
GetModuleFileNameA@kernel32.dll: API Node	
0x004042a2:	pushl $0x0<UINT8>
0x004042a4:	pushl $0x80<UINT32>
0x004042a9:	pushl $0x3<UINT8>
0x004042ab:	pushl $0x0<UINT8>
0x004042ad:	pushl $0x1<UINT8>
0x004042af:	pushl $0x80000000<UINT32>
0x004042b4:	pushl %edi
0x004042b5:	call CreateFileA@kernel32.dll
CreateFileA@kernel32.dll: API Node	
0x004042bb:	cmpl %eax, $0xffffffff<UINT8>
0x004042be:	jne 0x004042c4
0x004042c4:	movl %edi, %eax
0x004042c6:	pushl $0x0<UINT8>
0x004042c8:	pushl %edi
0x004042c9:	call GetFileSize@kernel32.dll
GetFileSize@kernel32.dll: API Node	
0x004042cf:	subl %eax, $0x5<UINT8>
0x004042d2:	xchgl %esi, %eax
0x004042d3:	pushl %esi
0x004042d4:	pushl $0x40<UINT8>
0x004042d6:	call GlobalAlloc@kernel32.dll
GlobalAlloc@kernel32.dll: API Node	
0x004042dc:	orl %eax, %eax
0x004042de:	jne 0x004042e2
0x004042e2:	xchgl %ebx, %eax
0x004042e3:	pushl $0x0<UINT8>
0x004042e5:	leal %eax, 0x4027d2(%ebp)
0x004042eb:	pushl %eax
0x004042ec:	pushl %esi
0x004042ed:	pushl %ebx
0x004042ee:	pushl %edi
0x004042ef:	call ReadFile@kernel32.dll
ReadFile@kernel32.dll: API Node	
0x004042f5:	movl %eax, %ebx
0x004042f7:	movl %ecx, %esi
0x004042f9:	pushl %ebx
0x004042fa:	pushl %edi
0x004042fb:	call 0x00404310
