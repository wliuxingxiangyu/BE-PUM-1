0x00408001:	pusha
0x00408002:	call 0x0040800a
0x0040800a:	popl %ebp
0x0040800b:	incl %ebp
0x0040800c:	pushl %ebp
0x0040800d:	ret

0x00408008:	jmp 0x0040800e
0x0040800e:	call 0x00408014
0x00408014:	popl %ebp
0x00408015:	movl %ebx, $0xffffffed<UINT32>
0x0040801a:	addl %ebx, %ebp
0x0040801c:	subl %ebx, $0x8000<UINT32>
0x00408022:	cmpl 0x488(%ebp), $0x0<UINT8>
0x00408029:	movl 0x488(%ebp), %ebx
0x0040802f:	jne 971
0x00408035:	leal %eax, 0x494(%ebp)
0x0040803b:	pushl %eax
0x0040803c:	call GetModuleHandleA@kernel32.dll
GetModuleHandleA@kernel32.dll: API Node	
0x00408042:	movl 0x48c(%ebp), %eax
0x00408048:	movl %esi, %eax
0x0040804a:	leal %edi, 0x51(%ebp)
0x0040804d:	pushl %edi
0x0040804e:	pushl %esi
0x0040804f:	call GetProcAddress@kernel32.dll
GetProcAddress@kernel32.dll: API Node	
0x00408055:	stosl %es:(%edi), %eax
0x00408056:	movb %al, $0x0<UINT8>
0x00408058:	scasb %al, %es:(%edi)
0x00408059:	jne 0x00408058
0x0040805b:	cmpb (%edi), %al
0x0040805d:	jne 0x0040804d
0x0040805f:	leal %eax, 0x7a(%ebp)
0x00408062:	jmp 0x0040808d
0x0040808d:	movl %ebx, 0x595(%ebp)
0x00408093:	orl %ebx, %ebx
0x00408095:	je 0x004080a1
0x004080a1:	leal %esi, 0x5c5(%ebp)
0x004080a7:	cmpl (%esi), $0x0<UINT8>
0x004080aa:	je 266
0x004080b0:	pushl $0x4<UINT8>
0x004080b2:	pushl $0x1000<UINT32>
0x004080b7:	pushl $0x1800<UINT32>
0x004080bc:	pushl $0x0<UINT8>
0x004080be:	call VirtualAlloc@kernel32.dll
VirtualAlloc@kernel32.dll: API Node	
0x004080c1:	movl 0x148(%ebp), %eax
0x004080c7:	movl %eax, 0x4(%esi)
0x004080ca:	addl %eax, $0x10e<UINT32>
0x004080cf:	je 183
0x004080d5:	pushl $0x4<UINT8>
0x004080d7:	pushl $0x1000<UINT32>
0x004080dc:	pushl %eax
0x004080dd:	pushl $0x0<UINT8>
0x004080df:	call VirtualAlloc@kernel32.dll
0x004080e2:	movl 0x144(%ebp), %eax
0x004080e8:	pushl %esi
0x004080e9:	movl %ebx, (%esi)
0x004080eb:	addl %ebx, 0x488(%ebp)
0x004080f1:	pushl 0x148(%ebp)
0x004080f7:	pushl 0x4(%esi)
0x004080fa:	pushl %eax
0x004080fb:	pushl %ebx
0x004080fc:	call 0x004086c8
0x004086c8:	movl %eax, 0x10(%esp)
0x004086cc:	subl %esp, $0x354<UINT32>
0x004086d2:	leal %ecx, 0x4(%esp)
0x004086d6:	pushl %eax
0x004086d7:	call 0x00408a84
0x00408a84:	pushl %ebx
0x00408a85:	pushl %esi
0x00408a86:	pushl %edi
0x00408a87:	movl %edi, %ecx
0x00408a89:	xorl %edx, %edx
0x00408a8b:	xorl %eax, %eax
0x00408a8d:	leal %esi, 0x268(%edi)
0x00408a93:	movl (%esi), %edx
0x00408a95:	pushl %esi
0x00408a96:	call 0x00408cf2
0x00408cf2:	call 0x00408cf8
0x00408cf8:	popl %esi
0x00408cf9:	subl %esi, $0x46ca5f<UINT32>
0x00408cff:	ret

0x00408a9b:	movb %cl, 0x46c4d2(%eax,%esi)
0x00408aa2:	popl %esi
0x00408aa3:	movl %ebx, $0x1<UINT32>
0x00408aa8:	addl %esi, $0x4<UINT8>
0x00408aab:	shll %ebx, %cl
0x00408aad:	addl %edx, %ebx
0x00408aaf:	incl %eax
0x00408ab0:	cmpl %eax, $0x3a<UINT8>
0x00408ab3:	jb 0x00408a93
0x00408ab5:	movl %eax, 0x10(%esp)
0x00408ab9:	leal %ecx, 0x10(%edi)
0x00408abc:	pushl %eax
0x00408abd:	pushl $0x2d1<UINT32>
0x00408ac2:	call 0x0040880f
0x0040880f:	movl %eax, 0x4(%esp)
0x00408813:	movl %edx, 0x8(%esp)
0x00408817:	movl 0x84(%ecx), %eax
0x0040881d:	movl 0x88(%ecx), %edx
0x00408823:	leal %eax, (%edx,%eax,4)
0x00408826:	movl 0x8c(%ecx), %eax
0x0040882c:	addl %eax, $0x100<UINT32>
0x00408831:	ret $0x8<UINT16>

0x00408ac7:	pushl %eax
0x00408ac8:	pushl $0x1c<UINT8>
0x00408aca:	leal %ecx, 0xa0(%edi)
0x00408ad0:	call 0x0040880f
0x00408ad5:	pushl %eax
0x00408ad6:	pushl $0x8<UINT8>
0x00408ad8:	leal %ecx, 0x130(%edi)
0x00408ade:	call 0x0040880f
0x00408ae3:	pushl %eax
0x00408ae4:	pushl $0x13<UINT8>
0x00408ae6:	leal %ecx, 0x1c0(%edi)
0x00408aec:	call 0x0040880f
0x00408af1:	movl 0x260(%edi), %eax
0x00408af7:	popl %edi
0x00408af8:	popl %esi
0x00408af9:	addl %eax, $0x2f5<UINT32>
0x00408afe:	popl %ebx
0x00408aff:	ret $0x4<UINT16>

0x004086dc:	movl %ecx, 0x35c(%esp)
0x004086e3:	movl %edx, 0x358(%esp)
0x004086ea:	pushl %ecx
0x004086eb:	pushl %edx
0x004086ec:	leal %ecx, 0xc(%esp)
0x004086f0:	call 0x00408b02
0x00408b02:	movl %eax, 0x8(%esp)
0x00408b06:	movl %edx, %ecx
0x00408b08:	movl %ecx, 0x4(%esp)
0x00408b0c:	pushl %edi
0x00408b0d:	movl (%edx), %eax
0x00408b0f:	leal %eax, 0x4(%edx)
0x00408b12:	movl (%eax), %ecx
0x00408b14:	movl 0x4(%eax), $0x20<UINT32>
0x00408b1b:	movl 0x10(%edx), %eax
0x00408b1e:	movl 0xa0(%edx), %eax
0x00408b24:	movl 0x130(%edx), %eax
0x00408b2a:	movl 0x1c0(%edx), %eax
0x00408b30:	xorl %eax, %eax
0x00408b32:	movl %ecx, $0xbd<UINT32>
0x00408b37:	movl 0x250(%edx), %eax
0x00408b3d:	movl 0x254(%edx), %eax
0x00408b43:	movl 0x258(%edx), %eax
0x00408b49:	movl %edi, 0x260(%edx)
0x00408b4f:	movl 0x25c(%edx), %eax
0x00408b55:	rep stosl %es:(%edi), %eax
0x00408b57:	movl %ecx, %edx
0x00408b59:	stosb %es:(%edi), %al
0x00408b5a:	call 0x00408b63
0x00408b63:	subl %esp, $0x30c<UINT32>
0x00408b69:	pushl %ebx
0x00408b6a:	movl %ebx, %ecx
0x00408b6c:	pushl %ebp
0x00408b6d:	pushl %esi
0x00408b6e:	leal %ebp, 0x4(%ebx)
0x00408b71:	pushl %edi
0x00408b72:	pushl $0x1<UINT8>
0x00408b74:	movl %ecx, %ebp
0x00408b76:	call 0x004087a4
0x004087a4:	pushl %ecx
0x004087a5:	movl %edx, %ecx
0x004087a7:	pushl %esi
0x004087a8:	movl %ecx, $0x8<UINT32>
0x004087ad:	pushl %edi
0x004087ae:	cmpl 0x4(%edx), %ecx
0x004087b1:	jb 0x004087e8
0x004087b3:	pushl %ebx
0x004087b4:	movl %esi, $0xfffffff8<UINT32>
0x004087b9:	movl %eax, (%edx)
0x004087bb:	movb %bl, (%eax)
0x004087bd:	incl %eax
0x004087be:	movb 0xc(%esp), %bl
0x004087c2:	movl (%edx), %eax
0x004087c4:	movl %eax, 0x8(%edx)
0x004087c7:	movl %edi, 0xc(%esp)
0x004087cb:	shll %eax, $0x8<UINT8>
0x004087ce:	andl %edi, $0xff<UINT32>
0x004087d4:	orl %eax, %edi
0x004087d6:	movl %edi, 0x4(%edx)
0x004087d9:	addl %edi, %esi
0x004087db:	movl 0x8(%edx), %eax
0x004087de:	movl %eax, %edi
0x004087e0:	movl 0x4(%edx), %edi
0x004087e3:	cmpl %eax, %ecx
0x004087e5:	jae 0x004087b9
0x004087e7:	popl %ebx
0x004087e8:	movl %esi, 0x4(%edx)
0x004087eb:	movl %eax, 0x8(%edx)
0x004087ee:	movl %edi, 0x10(%esp)
0x004087f2:	subl %ecx, %esi
0x004087f4:	shrl %eax, %cl
0x004087f6:	movl %ecx, $0x18<UINT32>
0x004087fb:	subl %ecx, %edi
0x004087fd:	andl %eax, $0xffffff<UINT32>
0x00408802:	shrl %eax, %cl
0x00408804:	addl %esi, %edi
0x00408806:	popl %edi
0x00408807:	movl 0x4(%edx), %esi
0x0040880a:	popl %esi
0x0040880b:	popl %ecx
0x0040880c:	ret $0x4<UINT16>

0x00408b7b:	testl %eax, %eax
0x00408b7d:	jne 14
0x00408b7f:	movl %edi, 0x260(%ebx)
0x00408b85:	movl %ecx, $0xbd<UINT32>
0x00408b8a:	rep stosl %es:(%edi), %eax
0x00408b8c:	stosb %es:(%edi), %al
0x00408b8d:	xorl %esi, %esi
0x00408b8f:	pushl $0x4<UINT8>
0x00408b91:	movl %ecx, %ebp
0x00408b93:	call 0x004087a4
0x00408b98:	movb 0x10(%esp,%esi), %al
0x00408b9c:	incl %esi
0x00408b9d:	cmpl %esi, $0x13<UINT8>
0x00408ba0:	jb 0x00408b8f
0x00408ba2:	leal %edi, 0x1c0(%ebx)
0x00408ba8:	leal %eax, 0x10(%esp)
0x00408bac:	pushl %eax
0x00408bad:	movl %ecx, %edi
0x00408baf:	call 0x00408834
0x00408834:	subl %esp, $0x98<UINT32>
0x0040883a:	pushl %ebx
0x0040883b:	pushl %ebp
0x0040883c:	pushl %esi
0x0040883d:	movl %edx, %ecx
0x0040883f:	pushl %edi
0x00408840:	movl %ecx, $0xf<UINT32>
0x00408845:	movl %ebp, 0x84(%edx)
0x0040884b:	xorl %eax, %eax
0x0040884d:	leal %edi, 0x2c(%esp)
0x00408851:	xorl %esi, %esi
0x00408853:	rep stosl %es:(%edi), %eax
0x00408855:	movl %edi, 0xac(%esp)
0x0040885c:	cmpl %ebp, %esi
0x0040885e:	movl 0x20(%esp), %edx
0x00408862:	jbe 21
0x00408864:	xorl %ecx, %ecx
0x00408866:	movb %cl, (%eax,%edi)
0x00408869:	movl %ebx, 0x28(%esp,%ecx,4)
0x0040886d:	leal %ecx, 0x28(%esp,%ecx,4)
0x00408871:	incl %ebx
0x00408872:	incl %eax
0x00408873:	cmpl %eax, %ebp
0x00408875:	movl (%ecx), %ebx
0x00408877:	jb 0x00408864
0x00408879:	movl %ecx, $0x17<UINT32>
0x0040887e:	movl 0x28(%esp), %esi
0x00408882:	movl 0x4(%edx), %esi
0x00408885:	movl 0x44(%edx), %esi
0x00408888:	movl 0x68(%esp), %esi
0x0040888c:	xorl %edi, %edi
0x0040888e:	movl 0x1c(%esp), %esi
0x00408892:	movl 0x10(%esp), $0x1<UINT32>
0x0040889a:	movl 0x18(%esp), %ecx
0x0040889e:	leal %ebp, 0x8(%edx)
0x004088a1:	movl 0x14(%esp), %esi
0x004088a5:	movl %eax, 0x2c(%esp,%esi)
0x004088a9:	shll %eax, %cl
0x004088ab:	addl %edi, %eax
0x004088ad:	cmpl %edi, $0x1000000<UINT32>
0x004088b3:	movl 0x24(%esp), %edi
0x004088b7:	ja 142
0x004088bd:	movl %eax, 0x28(%esp,%esi)
0x004088c1:	movl (%ebp), %edi
0x004088c4:	movl %ebx, 0x3c(%ebp)
0x004088c7:	addl %eax, %ebx
0x004088c9:	cmpl %ecx, $0x10<UINT8>
0x004088cc:	movl 0x40(%ebp), %eax
0x004088cf:	movl 0x6c(%esp,%esi), %eax
0x004088d3:	jl 0x00408922
0x004088d5:	movl %esi, (%ebp)
0x004088d8:	movl %eax, 0x10(%esp)
0x004088dc:	movl %ebx, 0x1c(%esp)
0x004088e0:	movl %edi, 0x8c(%edx)
0x004088e6:	shrl %esi, $0x10<UINT8>
0x004088e9:	movl %ecx, %esi
0x004088eb:	andl %eax, $0xff<UINT32>
0x004088f0:	subl %ecx, %ebx
0x004088f2:	addl %edi, %ebx
0x004088f4:	movb %bl, %al
0x004088f6:	movl %edx, %ecx
0x004088f8:	movb %bh, %bl
0x004088fa:	movl 0x1c(%esp), %esi
0x004088fe:	movl %eax, %ebx
0x00408900:	movl %esi, 0x14(%esp)
0x00408904:	shll %eax, $0x10<UINT8>
0x00408907:	movw %ax, %bx
0x0040890a:	shrl %ecx, $0x2<UINT8>
0x0040890d:	rep stosl %es:(%edi), %eax
0x0040890f:	movl %ecx, %edx
0x00408911:	movl %edx, 0x20(%esp)
0x00408915:	andl %ecx, $0x3<UINT8>
0x00408918:	rep stosb %es:(%edi), %al
0x0040891a:	movl %edi, 0x24(%esp)
0x0040891e:	movl %ecx, 0x18(%esp)
0x00408922:	movl %eax, 0x10(%esp)
0x00408926:	addl %esi, $0x4<UINT8>
0x00408929:	incl %eax
0x0040892a:	decl %ecx
0x0040892b:	addl %ebp, $0x4<UINT8>
0x0040892e:	cmpl %ecx, $0x9<UINT8>
0x00408931:	movl 0x10(%esp), %eax
0x00408935:	movl 0x18(%esp), %ecx
0x00408939:	movl 0x14(%esp), %esi
0x0040893d:	jge 0x004088a5
0x00408943:	cmpl %edi, $0x1000000<UINT32>
0x00408949:	je 0x0040895a
0x0040895a:	movl %eax, 0x84(%edx)
0x00408960:	xorl %ecx, %ecx
0x00408962:	testl %eax, %eax
0x00408964:	jbe 59
0x00408966:	movl %esi, 0xac(%esp)
0x0040896d:	movb %al, (%ecx,%esi)
0x00408970:	testb %al, %al
0x00408972:	je 0x00408996
0x00408974:	movl %edi, 0x88(%edx)
0x0040897a:	andl %eax, $0xff<UINT32>
0x0040897f:	movl %eax, 0x68(%esp,%eax,4)
0x00408983:	movl (%edi,%eax,4), %ecx
0x00408986:	xorl %eax, %eax
0x00408988:	movb %al, (%ecx,%esi)
0x0040898b:	movl %edi, 0x68(%esp,%eax,4)
0x0040898f:	leal %eax, 0x68(%esp,%eax,4)
0x00408993:	incl %edi
0x00408994:	movl (%eax), %edi
0x00408996:	movl %eax, 0x84(%edx)
0x0040899c:	incl %ecx
0x0040899d:	cmpl %ecx, %eax
0x0040899f:	jb 0x0040896d
0x004089a1:	popl %edi
0x004089a2:	popl %esi
0x004089a3:	popl %ebp
0x004089a4:	movb %al, $0x1<UINT8>
0x004089a6:	popl %ebx
0x004089a7:	addl %esp, $0x98<UINT32>
0x004089ad:	ret $0x4<UINT16>

0x00408bb4:	testb %al, %al
0x00408bb6:	jne 0x00408bc3
0x00408bc3:	xorl %esi, %esi
0x00408bc5:	movl %ecx, %edi
0x00408bc7:	call 0x004089b0
0x004089b0:	pushl %ecx
0x004089b1:	pushl %ebx
0x004089b2:	pushl %esi
0x004089b3:	movl %esi, %ecx
0x004089b5:	pushl %edi
0x004089b6:	movl %eax, (%esi)
0x004089b8:	cmpl 0x4(%eax), $0x8<UINT8>
0x004089bc:	jb 0x004089ee
0x004089ee:	movl %edx, 0x4(%eax)
0x004089f1:	movl %eax, 0x8(%eax)
0x004089f4:	movl %ecx, $0x8<UINT32>
0x004089f9:	subl %ecx, %edx
0x004089fb:	shrl %eax, %cl
0x004089fd:	movl %ecx, 0x24(%esi)
0x00408a00:	andl %eax, $0xfffe00<UINT32>
0x00408a05:	cmpl %eax, %ecx
0x00408a07:	jae 0x00408a1d
0x00408a09:	movl %edx, 0x8c(%esi)
0x00408a0f:	movl %ecx, %eax
0x00408a11:	shrl %ecx, $0x10<UINT8>
0x00408a14:	xorl %ebx, %ebx
0x00408a16:	movb %bl, (%ecx,%edx)
0x00408a19:	movl %edx, %ebx
0x00408a1b:	jmp 0x00408a58
0x00408a58:	movl %ecx, (%esi)
0x00408a5a:	movl %edi, 0x4(%ecx)
0x00408a5d:	addl %edi, %edx
0x00408a5f:	movl 0x4(%ecx), %edi
0x00408a62:	movl %ebx, (%esi,%edx,4)
0x00408a65:	movl %ecx, $0x18<UINT32>
0x00408a6a:	subl %eax, %ebx
0x00408a6c:	subl %ecx, %edx
0x00408a6e:	popl %edi
0x00408a6f:	shrl %eax, %cl
0x00408a71:	movl %ecx, 0x44(%esi,%edx,4)
0x00408a75:	addl %eax, %ecx
0x00408a77:	movl %ecx, 0x88(%esi)
0x00408a7d:	popl %esi
0x00408a7e:	popl %ebx
0x00408a7f:	movl %eax, (%ecx,%eax,4)
0x00408a82:	popl %ecx
0x00408a83:	ret

0x00408bcc:	cmpl %eax, $0x10<UINT8>
0x00408bcf:	jae 0x00408be6
0x00408bd1:	movl %ecx, 0x260(%ebx)
0x00408bd7:	movb %dl, (%ecx,%esi)
0x00408bda:	addb %dl, %al
0x00408bdc:	andb %dl, $0xf<UINT8>
0x00408bdf:	movb 0x24(%esp,%esi), %dl
0x00408be3:	incl %esi
0x00408be4:	jmp 0x00408c46
0x00408c46:	cmpl %esi, $0x2f5<UINT32>
0x00408c4c:	jl 0x00408bc5
0x004089be:	movl %ecx, (%eax)
0x004089c0:	movb %dl, (%ecx)
0x004089c2:	incl %ecx
0x004089c3:	movb 0xc(%esp), %dl
0x004089c7:	movl (%eax), %ecx
0x004089c9:	movl %ecx, 0x8(%eax)
0x004089cc:	movl %edx, 0xc(%esp)
0x004089d0:	shll %ecx, $0x8<UINT8>
0x004089d3:	andl %edx, $0xff<UINT32>
0x004089d9:	orl %ecx, %edx
0x004089db:	movl %edx, 0x4(%eax)
0x004089de:	addl %edx, $0xfffffff8<UINT8>
0x004089e1:	movl 0x8(%eax), %ecx
0x004089e4:	movl %ecx, %edx
0x004089e6:	movl 0x4(%eax), %edx
0x004089e9:	cmpl %ecx, $0x8<UINT8>
0x004089ec:	jae 0x004089be
0x00408be6:	jne 0x00408c10
0x00408be8:	pushl $0x2<UINT8>
0x00408bea:	movl %ecx, %ebp
0x00408bec:	call 0x004087a4
0x00408bf1:	addl %eax, $0x3<UINT8>
0x00408bf4:	testl %eax, %eax
0x00408bf6:	jle 78
0x00408bf8:	cmpl %esi, $0x2f5<UINT32>
0x00408bfe:	jnl 82
0x00408c00:	movb %cl, 0x23(%esp,%esi)
0x00408c04:	decl %eax
0x00408c05:	movb 0x24(%esp,%esi), %cl
0x00408c09:	incl %esi
0x00408c0a:	testl %eax, %eax
0x00408c0c:	jg 0x00408bf8
0x00408c0e:	jmp 0x00408c46
0x00408c10:	cmpl %eax, $0x11<UINT8>
0x00408c13:	jne 0x00408c23
0x00408c15:	pushl $0x3<UINT8>
0x00408c17:	movl %ecx, %ebp
0x00408c19:	call 0x004087a4
0x00408c1e:	addl %eax, $0x3<UINT8>
0x00408c21:	jmp 0x00408c2f
0x00408c2f:	testl %eax, %eax
0x00408c31:	jle 19
0x00408c33:	cmpl %esi, $0x2f5<UINT32>
0x00408c39:	jnl 23
0x00408c3b:	movb 0x24(%esp,%esi), $0x0<UINT8>
0x00408c40:	incl %esi
0x00408c41:	decl %eax
0x00408c42:	testl %eax, %eax
0x00408c44:	jg 0x00408c33
0x00408c23:	pushl $0x7<UINT8>
0x00408c25:	movl %ecx, %ebp
0x00408c27:	call 0x004087a4
0x00408c2c:	addl %eax, $0xb<UINT8>
0x00408c52:	leal %edx, 0x24(%esp)
0x00408c56:	leal %ecx, 0x10(%ebx)
0x00408c59:	pushl %edx
0x00408c5a:	call 0x00408834
0x00408c5f:	testb %al, %al
0x00408c61:	jne 0x00408c6e
0x00408c6e:	leal %eax, 0x2f5(%esp)
0x00408c75:	leal %ecx, 0xa0(%ebx)
0x00408c7b:	pushl %eax
0x00408c7c:	call 0x00408834
0x00408c81:	testb %al, %al
0x00408c83:	jne 0x00408c90
0x00408c90:	leal %ecx, 0x311(%esp)
0x00408c97:	pushl %ecx
0x00408c98:	leal %ecx, 0x130(%ebx)
0x00408c9e:	call 0x00408834
0x00408ca3:	testb %al, %al
0x00408ca5:	jne 0x00408cb2
0x00408cb2:	movb 0x264(%ebx), $0x0<UINT8>
0x00408cb9:	xorl %eax, %eax
0x00408cbb:	cmpb 0x311(%esp,%eax), $0x3<UINT8>
0x00408cc3:	jne 8
0x00408cc5:	incl %eax
0x00408cc6:	cmpl %eax, $0x8<UINT8>
0x00408cc9:	jb 0x00408cbb
0x00408ccb:	jmp 0x00408cd4
0x00408cd4:	movl %edi, 0x260(%ebx)
0x00408cda:	leal %esi, 0x24(%esp)
0x00408cde:	movl %ecx, $0x2f5<UINT32>
0x00408ce3:	rep movsb %es:(%edi), %ds:(%esi)
0x00408ce5:	popl %edi
0x00408ce6:	popl %esi
0x00408ce7:	popl %ebp
0x00408ce8:	movb %al, $0x1<UINT8>
0x00408cea:	popl %ebx
0x00408ceb:	addl %esp, $0x30c<UINT32>
0x00408cf1:	ret

0x00408b5f:	popl %edi
0x00408b60:	ret $0x8<UINT16>

0x004086f5:	testb %al, %al
0x004086f7:	jne 0x00408703
0x00408703:	movl %ecx, 0x360(%esp)
0x0040870a:	leal %eax, (%esp)
0x0040870d:	pushl %eax
0x0040870e:	pushl %ecx
0x0040870f:	leal %ecx, 0xc(%esp)
0x00408713:	call 0x00408d00
0x00408d00:	subl %esp, $0x14<UINT8>
0x00408d03:	movl %eax, 0x1c(%esp)
0x00408d07:	pushl %ebx
0x00408d08:	pushl %ebp
0x00408d09:	pushl %esi
0x00408d0a:	movl (%eax), $0x0<UINT32>
0x00408d10:	movl %eax, 0x24(%esp)
0x00408d14:	pushl %edi
0x00408d15:	xorl %edi, %edi
0x00408d17:	testl %eax, %eax
0x00408d19:	movl %esi, %ecx
0x00408d1b:	movl 0x10(%esp), %edi
0x00408d1f:	jbe 603
0x00408d25:	leal %ecx, 0x10(%esi)
0x00408d28:	call 0x004089b0
0x00408d2d:	cmpl %eax, $0x100<UINT32>
0x00408d32:	jae 0x00408d47
0x00408d34:	movl %ecx, (%esi)
0x00408d36:	movb (%ecx), %al
0x00408d38:	movl %ecx, (%esi)
0x00408d3a:	incl %ecx
0x00408d3b:	incl %edi
0x00408d3c:	movl (%esi), %ecx
0x00408d3e:	movl 0x10(%esp), %edi
0x00408d42:	jmp 0x00408f70
0x00408f70:	cmpl %edi, 0x28(%esp)
0x00408f74:	jb 0x00408d25
0x00408a1d:	cmpl %eax, 0x2c(%esi)
0x00408a20:	jae 0x00408a2c
0x00408a22:	cmpl %eax, 0x28(%esi)
0x00408a25:	sbbl %edx, %edx
0x00408a27:	addl %edx, $0xa<UINT8>
0x00408a2a:	jmp 0x00408a58
0x00408a2c:	cmpl %eax, 0x30(%esi)
0x00408a2f:	jae 0x00408a38
0x00408a31:	movl %edx, $0xb<UINT32>
0x00408a36:	jmp 0x00408a58
0x00408d47:	cmpl %eax, $0x2d0<UINT32>
0x00408d4c:	jae 531
0x00408d52:	addl %eax, $0xffffff00<UINT32>
0x00408d57:	movl %ebp, %eax
0x00408d59:	andl %eax, $0x7<UINT8>
0x00408d5c:	shrl %ebp, $0x3<UINT8>
0x00408d5f:	leal %edx, 0x2(%eax)
0x00408d62:	cmpl %eax, $0x7<UINT8>
0x00408d65:	movl 0x14(%esp), %edx
0x00408d69:	jne 0x00408e03
0x00408e03:	movb %al, 0x264(%esi)
0x00408e09:	movl %ebx, 0x268(%esi,%ebp,4)
0x00408e10:	xorl %edx, %edx
0x00408e12:	pushl %esi
0x00408e13:	call 0x00408cf2
0x00408e18:	movb %dl, 0x46c4d2(%ebp,%esi)
0x00408e1f:	popl %esi
0x00408e20:	testb %al, %al
0x00408e22:	movl %edi, %edx
0x00408e24:	je 0x00408e9c
0x00408e9c:	cmpl 0x8(%esi), $0x8<UINT8>
0x00408ea0:	jb 0x00408ed3
0x00408ea2:	movl %eax, 0x4(%esi)
0x00408ea5:	movl %edx, 0xc(%esi)
0x00408ea8:	shll %edx, $0x8<UINT8>
0x00408eab:	movb %cl, (%eax)
0x00408ead:	incl %eax
0x00408eae:	movb 0x20(%esp), %cl
0x00408eb2:	movl %ecx, 0x8(%esi)
0x00408eb5:	movl 0x4(%esi), %eax
0x00408eb8:	movl %eax, 0x20(%esp)
0x00408ebc:	andl %eax, $0xff<UINT32>
0x00408ec1:	addl %ecx, $0xfffffff8<UINT8>
0x00408ec4:	orl %edx, %eax
0x00408ec6:	movl %eax, %ecx
0x00408ec8:	cmpl %eax, $0x8<UINT8>
0x00408ecb:	movl 0xc(%esi), %edx
0x00408ece:	movl 0x8(%esi), %ecx
0x00408ed1:	jae 0x00408ea2
0x00408ed3:	movl %edx, 0x8(%esi)
0x00408ed6:	movl %eax, 0xc(%esi)
0x00408ed9:	movl %ecx, $0x8<UINT32>
0x00408ede:	subl %ecx, %edx
0x00408ee0:	addl %edx, %edi
0x00408ee2:	shrl %eax, %cl
0x00408ee4:	movl %ecx, $0x18<UINT32>
0x00408ee9:	movl 0x8(%esi), %edx
0x00408eec:	subl %ecx, %edi
0x00408eee:	andl %eax, $0xffffff<UINT32>
0x00408ef3:	shrl %eax, %cl
0x00408ef5:	addl %ebx, %eax
0x00408ef7:	cmpl %ebx, $0x3<UINT8>
0x00408efa:	jae 0x00408f16
0x00408f16:	movl %eax, 0x254(%esi)
0x00408f1c:	movl %edx, 0x250(%esi)
0x00408f22:	leal %ecx, -3(%ebx)
0x00408f25:	movl 0x258(%esi), %eax
0x00408f2b:	movl 0x254(%esi), %edx
0x00408f31:	movl 0x250(%esi), %ecx
0x00408f37:	movl %eax, (%esi)
0x00408f39:	movl %edi, 0x14(%esp)
0x00408f3d:	incl %ecx
0x00408f3e:	leal %edx, (%eax,%edi)
0x00408f41:	cmpl %eax, %edx
0x00408f43:	movl (%esi), %edx
0x00408f45:	jae 16
0x00408f47:	movl %edx, %eax
0x00408f49:	subl %edx, %ecx
0x00408f4b:	incl %eax
0x00408f4c:	movb %dl, (%edx)
0x00408f4e:	movb -1(%eax), %dl
0x00408f51:	movl %edx, (%esi)
0x00408f53:	cmpl %eax, %edx
0x00408f55:	jb 0x00408f47
0x00408f57:	movl %eax, 0x10(%esp)
0x00408f5b:	addl %eax, %edi
0x00408f5d:	movl 0x10(%esp), %eax
0x00408f61:	movl %edi, %eax
0x00408f63:	jmp 0x00408f70
0x00408d6f:	leal %ecx, 0xa0(%esi)
0x00408d75:	call 0x004089b0
0x00408d7a:	movl %ecx, 0x8(%esi)
0x00408d7d:	xorl %ebx, %ebx
0x00408d7f:	pushl %esi
0x00408d80:	call 0x00408cf2
0x00408d85:	movb %bl, 0x46c4b6(%eax,%esi)
0x00408d8c:	popl %esi
0x00408d8d:	cmpl %ecx, $0x8<UINT8>
0x00408d90:	jb 0x00408dc4
0x00408d92:	movl %ecx, 0x4(%esi)
0x00408d95:	movb %dl, (%ecx)
0x00408d97:	incl %ecx
0x00408d98:	movb 0x18(%esp), %dl
0x00408d9c:	movl 0x4(%esi), %ecx
0x00408d9f:	movl %ecx, 0xc(%esi)
0x00408da2:	movl %edx, 0x18(%esp)
0x00408da6:	shll %ecx, $0x8<UINT8>
0x00408da9:	andl %edx, $0xff<UINT32>
0x00408daf:	orl %ecx, %edx
0x00408db1:	movl %edx, 0x8(%esi)
0x00408db4:	addl %edx, $0xfffffff8<UINT8>
0x00408db7:	movl 0xc(%esi), %ecx
0x00408dba:	movl %ecx, %edx
0x00408dbc:	movl 0x8(%esi), %edx
0x00408dbf:	cmpl %ecx, $0x8<UINT8>
0x00408dc2:	jae -50
0x00408dc4:	movl %edi, 0x8(%esi)
0x00408dc7:	movl %edx, 0xc(%esi)
0x00408dca:	movl %ecx, $0x8<UINT32>
0x00408dcf:	subl %ecx, %edi
0x00408dd1:	addl %edi, %ebx
0x00408dd3:	shrl %edx, %cl
0x00408dd5:	movl %ecx, $0x18<UINT32>
0x00408dda:	movl 0x8(%esi), %edi
0x00408ddd:	subl %ecx, %ebx
0x00408ddf:	andl %edx, $0xffffff<UINT32>
0x00408de5:	shrl %edx, %cl
0x00408de7:	xorl %ecx, %ecx
0x00408de9:	pushl %esi
0x00408dea:	call 0x00408cf2
0x00408def:	movb %cl, 0x46c49a(%eax,%esi)
0x00408df6:	popl %esi
0x00408df7:	movl %eax, 0x14(%esp)
0x00408dfb:	addl %ecx, %edx
0x00408dfd:	addl %eax, %ecx
0x00408dff:	movl 0x14(%esp), %eax
0x00408efc:	movl %ecx, 0x250(%esi,%ebx,4)
0x00408f03:	testl %ebx, %ebx
0x00408f05:	je 0x00408f37
0x00408f07:	movl %edx, 0x250(%esi)
0x00408f0d:	movl 0x250(%esi,%ebx,4), %edx
0x00408f14:	jmp 0x00408f31
0x00408a38:	cmpl %eax, 0x34(%esi)
0x00408a3b:	jae 0x00408a44
0x00408a3d:	movl %edx, $0xc<UINT32>
0x00408a42:	jmp 0x00408a58
0x00408a44:	cmpl %eax, 0x38(%esi)
0x00408a47:	jae 7
0x00408a49:	movl %edx, $0xd<UINT32>
0x00408a4e:	jmp 0x00408a58
0x00408f7a:	movl %eax, 0x2c(%esp)
0x00408f7e:	movl (%eax), %edi
0x00408f80:	popl %edi
0x00408f81:	popl %esi
0x00408f82:	popl %ebp
0x00408f83:	movb %al, $0x1<UINT8>
0x00408f85:	popl %ebx
0x00408f86:	addl %esp, $0x14<UINT8>
0x00408f89:	ret $0x8<UINT16>

0x00408718:	testb %al, %al
0x0040871a:	jne 0x00408726
0x00408726:	movl %eax, (%esp)
0x00408729:	addl %esp, $0x354<UINT32>
0x0040872f:	ret $0x10<UINT16>

0x00408101:	movb %bl, $0x0<UINT8>
0x00408103:	cmpb %bl, $0x0<UINT8>
0x00408106:	jne 77
0x00408108:	incb 0xef(%ebp)
0x0040810e:	pushl %eax
0x0040810f:	pushl %ecx
0x00408110:	pushl %esi
0x00408111:	pushl %ebx
0x00408112:	movl %ecx, %eax
0x00408114:	subl %ecx, $0x5<UINT8>
0x00408117:	movl %esi, 0x144(%ebp)
0x0040811d:	xorl %ebx, %ebx
0x0040811f:	orl %ecx, %ecx
0x00408121:	je 46
0x00408123:	js 44
0x00408125:	lodsb %al, %ds:(%esi)
0x00408126:	cmpb %al, $0xffffffe8<UINT8>
0x00408128:	je 0x00408134
0x0040812a:	jmp 0x0040812c
0x0040812c:	cmpb %al, $0xffffffe9<UINT8>
0x0040812e:	je 0x00408134
0x00408130:	incl %ebx
0x00408131:	decl %ecx
0x00408132:	jmp 0x0040811f
0x00408134:	movl %eax, (%esi)
0x00408136:	jmp 0x00408138
0x00408138:	cmpb (%esi), $0x6<UINT8>
0x0040813b:	jne 0x00408130
0x0040813d:	andb %al, $0x0<UINT8>
0x0040813f:	roll %eax, $0x18<UINT8>
0x00408142:	subl %eax, %ebx
0x00408144:	movl (%esi), %eax
0x00408146:	addl %ebx, $0x5<UINT8>
0x00408149:	addl %esi, $0x4<UINT8>
0x0040814c:	subl %ecx, $0x5<UINT8>
0x0040814f:	jmp 0x0040811f
