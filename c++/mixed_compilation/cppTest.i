
cppTest.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <_Z3addii>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	89 7d fc             	mov    %edi,-0x4(%rbp)
   b:	89 75 f8             	mov    %esi,-0x8(%rbp)
   e:	8b 55 fc             	mov    -0x4(%rbp),%edx
  11:	8b 45 f8             	mov    -0x8(%rbp),%eax
  14:	01 d0                	add    %edx,%eax
  16:	5d                   	pop    %rbp
  17:	c3                   	retq   

0000000000000018 <_Z3addff>:
  18:	f3 0f 1e fa          	endbr64 
  1c:	55                   	push   %rbp
  1d:	48 89 e5             	mov    %rsp,%rbp
  20:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
  25:	f3 0f 11 4d f8       	movss  %xmm1,-0x8(%rbp)
  2a:	f3 0f 10 45 fc       	movss  -0x4(%rbp),%xmm0
  2f:	f3 0f 58 45 f8       	addss  -0x8(%rbp),%xmm0
  34:	5d                   	pop    %rbp
  35:	c3                   	retq   
