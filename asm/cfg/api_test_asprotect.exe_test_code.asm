0x00401000:	pushl $0x404001<UINT32>
0x00401005:	call 0x0040100b
0x0040100b:	ret

0x0040100a:	ret

0x00404001:	pusha
0x00404002:	call 0x0040400a
0x0040400a:	popl %ebp
0x0040400b:	incl %ebp
0x0040400c:	pushl %ebp
0x0040400d:	ret

0x00404008:	jmp 0x0040400e
0x0040400e:	call 0x00404014
0x00404014:	popl %ebp
0x00404015:	movl %ebx, $0xffffffed<UINT32>
0x0040401a:	addl %ebx, %ebp
0x0040401c:	subl %ebx, $0x4000<UINT32>
0x00404022:	cmpb 0x4d(%ebp), $0x1<UINT8>
0x00404026:	jne 0x00404034
0x00404034:	leal %eax, 0x53(%ebp)
0x00404037:	pushl %eax
0x00404038:	pushl %ebx
0x00404039:	pushl 0xc19(%ebp)
0x0040403f:	leal %eax, 0x35(%ebp)
0x00404042:	pushl %eax
0x00404043:	jmp 0x004040fc
0x004040fc:	jmp 0x0040410e
0x0040410e:	call 0x00404122
0x00404122:	pushl $0x71acde8<UINT32>
0x00404127:	movl %edi, $0x1ec2e094<UINT32>
0x0040412c:	popl %ebx
0x0040412d:	popl %edx
0x0040412e:	addl %edx, $0xa9e<UINT32>
0x00404134:	jle 4
0x0040413a:	movw %di, $0xffff8118<UINT16>
0x0040413e:	movl %ecx, $0x4c627956<UINT32>
0x00404143:	addl %ecx, $0xb39d8923<UINT32>
0x00404149:	orb %bl, $0xffffffa9<UINT8>
0x0040414c:	movl %eax, (%edx)
0x0040414e:	movw %si, %dx
0x00404151:	xorl %eax, $0x5a8098b3<UINT32>
0x00404157:	xorl %edi, $0x5e741ac7<UINT32>
0x0040415d:	subl %eax, $0x44b9be70<UINT32>
0x00404163:	jmp 0x0040416f
0x0040416f:	subl %eax, $0x15bc65e9<UINT32>
0x00404175:	movzwl %esi, %dx
0x00404178:	pushl %eax
0x00404179:	movl %esi, $0x43ce6453<UINT32>
0x0040417e:	popl (%edx)
0x00404180:	pushl %ecx
0x00404181:	pushl $0x7a4ae645<UINT32>
0x00404186:	movw %bx, $0xffffdd66<UINT16>
0x0040418a:	popl %ebx
0x0040418b:	popl %edi
0x0040418c:	subl %edx, $0x2<UINT8>
0x0040418f:	movb %bl, $0x45<UINT8>
0x00404191:	decl %edx
0x00404192:	decl %edx
0x00404193:	movl %esi, $0x684ce997<UINT32>
0x00404198:	decl %ecx
0x00404199:	jne 0x004041b7
0x004041b7:	movw %si, $0xffff9f7f<UINT16>
0x004041bb:	jmp 0x0040414c
0x0040419f:	ja 3
0x004041a5:	movw %si, %dx
0x004041a8:	jmp 0x004041d1
0x004041d1:	pushl %edi
0x004041d2:	movzwl %edi, %bx
0x004041d5:	popl %eax
0x004041d6:	call 0x004041ef
0x004041ef:	call 0x004041ff
0x004041ff:	jnp 18
0x00404205:	call 0x00404216
0x00404216:	popl %eax
0x00404217:	popl %edi
0x00404218:	popl %ecx
0x00404219:	pushl $0x79554102<UINT32>
0x0040421e:	andw %di, $0xffffa46f<UINT16>
0x00404223:	popl %eax
0x00404224:	addl %ecx, $0x9d4<UINT32>
0x0040422a:	movl %eax, %edx
0x0040422c:	subl %ebx, %ebx
0x0040422e:	pushl (%ebx,%ecx)
0x00404231:	andb %ah, $0xffffffac<UINT8>
0x00404234:	popl %edx
0x00404235:	movw %si, $0x357<UINT16>
0x00404239:	xorl %edx, $0x322f63de<UINT32>
0x0040423f:	movw %si, %cx
0x00404242:	xorl %edx, $0x6a4f59bf<UINT32>
0x00404248:	movswl %eax, %cx
0x0040424b:	addl %edx, $0x59db988c<UINT32>
0x00404251:	call 0x0040425c
0x0040425c:	jns 0x00404262
0x00404262:	popl %esi
0x00404263:	pushl %edx
0x00404264:	addl %eax, $0x105c0ea4<UINT32>
0x0040426a:	popl (%ecx,%ebx)
0x0040426d:	movl %edi, $0x3593160e<UINT32>
0x00404272:	movswl %edi, %si
0x00404275:	subl %ebx, $0x5995b41<UINT32>
0x0040427b:	movl %edi, $0x52b73e40<UINT32>
0x00404280:	addl %ebx, $0x5995b3d<UINT32>
0x00404286:	cmpl %ebx, $0xfffff70c<UINT32>
0x0040428c:	jne 0x004042ae
0x004042ae:	movl %esi, %ecx
0x004042b0:	jmp 0x0040422e
0x00404292:	pushl %esi
0x00404293:	pushl $0x3e405f17<UINT32>
0x00404298:	movl %eax, $0x5bd06ae9<UINT32>
0x0040429d:	popl %edi
0x0040429e:	popl %eax
0x0040429f:	jmp 0x004042bf
0x004042bf:	jns 0x004042cb
0x004042cb:	call 0x004042dc
0x004042dc:	movzwl %esi, %bx
0x004042df:	popl %edi
0x004042e0:	orl %ebx, $0x65be4829<UINT32>
0x004042e6:	addl %edi, $0x8e2<UINT32>
0x004042ec:	movl %esi, $0x4cca3de5<UINT32>
0x004042f1:	movl %edx, $0x0<UINT32>
0x004042f6:	movswl %ecx, %cx
0x004042f9:	pushl (%edx,%edi)
0x004042fc:	subb %cl, $0xc<UINT8>
0x004042ff:	popl %eax
0x00404300:	jne 0x0040430b
0x0040430b:	subl %eax, $0x1c55d4e4<UINT32>
0x00404311:	movb %ch, $0xf<UINT8>
0x00404313:	addl %eax, $0x43c14d4d<UINT32>
0x00404319:	movw %si, %bx
0x0040431c:	xorl %eax, $0x15699002<UINT32>
0x00404322:	movswl %esi, %cx
0x00404325:	pushl %eax
0x00404326:	andb %bh, $0x1f<UINT8>
0x00404329:	popl (%edi,%edx)
0x0040432c:	call 0x00404340
0x00404340:	jmp 0x00404352
0x00404352:	popl %ebx
0x00404353:	pushl %esi
0x00404354:	pushl %ebx
0x00404355:	pushl $0x2d8b14d0<UINT32>
0x0040435a:	popl %esi
0x0040435b:	popl %esi
0x0040435c:	popl %esi
0x0040435d:	subl %edx, $0x4<UINT8>
0x00404360:	pushl %esi
0x00404361:	orw %bx, $0x1a39<UINT16>
0x00404366:	popl %ecx
0x00404367:	cmpl %edx, $0xfffff7f0<UINT32>
0x0040436d:	jne 0x0040438a
0x0040438a:	pushl $0x32854048<UINT32>
0x0040438f:	movswl %esi, %cx
0x00404392:	popl %esi
0x00404393:	jmp 0x004042f9
0x00404373:	jle 0x0040437c
0x0040437c:	jmp 0x004043a6
0x004043a6:	addl %ebx, $0x70ec32c7<UINT32>
0x004043ac:	call 0x004043ba
0x004043ba:	jmp 0x004043cc
0x004043cc:	popl %esi
0x004043cd:	movb %ah, $0xfffffff9<UINT8>
0x004043cf:	addl %esi, $0x7ff<UINT32>
0x004043d5:	orw %bx, $0xffffa043<UINT16>
0x004043da:	xorl %edi, %edi
0x004043dc:	movl %ecx, %ebx
0x004043de:	pushl (%edi,%esi)
0x004043e1:	movzwl %eax, %dx
0x004043e4:	popl %edx
0x004043e5:	movw %cx, %dx
0x004043e8:	addl %edx, $0x370b1330<UINT32>
0x004043ee:	call 0x00404401
0x00404401:	adcl %ecx, $0x6b12034c<UINT32>
0x00404407:	popl %ecx
0x00404408:	addl %edx, $0x56affba9<UINT32>
0x0040440e:	sbbl %eax, $0x5b042302<UINT32>
0x00404414:	xorl %edx, $0x1551d52e<UINT32>
0x0040441a:	movswl %ecx, %ax
0x0040441d:	pushl %edx
0x0040441e:	call 0x00404430
0x00404430:	movl %ebx, %esi
0x00404432:	popl %ecx
0x00404433:	popl (%esi,%edi)
0x00404436:	movb %cl, $0xffffffb7<UINT8>
0x00404438:	orl %ecx, $0x905c3ba<UINT32>
0x0040443e:	subl %edi, $0x4eab41c8<UINT32>
0x00404444:	pushl %edi
0x00404445:	movb %ch, %al
0x00404447:	popl %eax
0x00404448:	addl %edi, $0x4eab41c4<UINT32>
0x0040444e:	movswl %ecx, %cx
0x00404451:	cmpl %edi, $0xfffff8e0<UINT32>
0x00404457:	jne 0x0040447d
0x0040447d:	xorl %eax, $0x76060996<UINT32>
0x00404483:	jmp 0x004043de
0x0040445d:	jmp 0x00404469
0x00404469:	jmp 0x00404494
0x00404494:	call 0x00404499
0x00404499:	popl %ebp
0x0040449a:	popl %ebx
0x0040449b:	movl 0x5b(%ebp), %ebx
0x0040449e:	popl %ebx
0x0040449f:	movl 0x5f(%ebp), %ebx
0x004044a2:	popl %eax
0x004044a3:	movl 0x40d(%ebp), %eax
0x004044a9:	popl %eax
0x004044aa:	cmpb 0x5a(%ebp), $0x1<UINT8>
0x004044ae:	jne 0x00404509
0x00404509:	call 0x004047aa
0x004047aa:	movl %eax, 0x24(%esp)
0x004047ae:	andl %eax, $0xffff0000<UINT32>
0x004047b3:	addl %eax, $0x10000<UINT32>
0x004047b8:	subl %eax, $0x10000<UINT32>
0x004047bd:	cmpw (%eax), $0x5a4d<UINT16>
0x004047c2:	jne -12
0x004047c4:	pusha
0x004047c5:	movl 0x3f8(%ebp), %eax
0x004047cb:	movl %edx, %eax
0x004047cd:	movl %ebx, %eax
0x004047cf:	addl %eax, 0x3c(%eax)
0x004047d2:	addl %ebx, 0x78(%eax)
0x004047d5:	movl 0x30d(%ebp), %ebx
0x004047db:	leal %ebx, 0x3cc(%ebp)
0x004047e1:	leal %edi, 0x3e4(%ebp)
0x004047e7:	movl %esi, (%ebx)
0x004047e9:	movl 0x37c(%ebp), %esi
0x004047ef:	call 0x004047ff
0x004047ff:	pusha
0x00404800:	movl %ebx, 0x30d(%ebp)
0x00404806:	movl %ecx, 0x20(%ebx)
0x00404809:	addl %ecx, %edx
0x0040480b:	movl %esi, (%ecx)
0x0040480d:	addl %esi, %edx
0x0040480f:	call 0x00404843
0x00404843:	pushl %edx
0x00404844:	movl %edx, $0x9c3b248e<UINT32>
0x00404849:	lodsb %al, %ds:(%esi)
0x0040484a:	orb %al, %al
0x0040484c:	je 0x00404862
0x0040484e:	xorb %dl, %al
0x00404850:	movb %al, $0x8<UINT8>
0x00404852:	shrl %edx
0x00404854:	jae 0x0040485c
0x00404856:	xorl %edx, $0xc1a7f39a<UINT32>
0x0040485c:	decb %al
0x0040485e:	jne 0x00404852
0x00404860:	jmp 0x00404849
0x00404862:	xchgl %edx, %eax
0x00404863:	popl %edx
0x00404864:	ret

0x00404814:	movl %edi, $0xb72551a7<UINT32>
0x00404819:	cmpl %eax, %edi
0x0040481b:	je 0x00404822
0x0040481d:	addl %ecx, $0x4<UINT8>
0x00404820:	jmp 0x0040480b
0x00404822:	subl %ecx, 0x20(%ebx)
0x00404825:	subl %ecx, %edx
0x00404827:	shrl %ecx
0x00404829:	addl %ecx, 0x24(%ebx)
0x0040482c:	addl %ecx, %edx
0x0040482e:	movzwl %ecx, (%ecx)
0x00404831:	shll %ecx, $0x2<UINT8>
0x00404834:	addl %ecx, 0x1c(%ebx)
0x00404837:	addl %ecx, %edx
0x00404839:	movl %ecx, (%ecx)
0x0040483b:	addl %ecx, %edx
0x0040483d:	movl 0x1c(%esp), %ecx
0x00404841:	popa
0x00404842:	ret

0x004047f4:	stosl %es:(%edi), %eax
0x004047f5:	addl %ebx, $0x4<UINT8>
0x004047f8:	cmpl (%ebx), $0x0<UINT8>
0x004047fb:	jne 0x004047e7
0x00404814:	movl %edi, $0xa7493bf0<UINT32>
0x00404814:	movl %edi, $0x90190257<UINT32>
0x00404814:	movl %edi, $0x74ee3213<UINT32>
