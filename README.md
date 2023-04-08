RAGE Plugin Hook v1.104.1327.16500 PUBLIC

Game: Grand Theft Auto V
Game build: 2845
Branch: Steam

Plugins loaded at the time of the crash:

No plugin was ticking at the time of this crash.
Base address: 00007ff6215c0000
Exception address: 00007ff621bb57ed
Exception offset: 005f57ed
Exception code: 0xc0000005 (EXCEPTION_ACCESS_VIOLATION)

Stack trace (unmanaged):
	0x00007ffb811b5f0c - UnhandledExceptionFilter - in Unknown:0 (C:\WINDOWS\System32\KERNELBASE.dll)
	0x00007ffb8369837d - RtlMoveMemory - in Unknown:0 (C:\WINDOWS\SYSTEM32\ntdll.dll)
	0x00007ffb8367efa7 - _C_specific_handler - in Unknown:0 (C:\WINDOWS\SYSTEM32\ntdll.dll)
	0x00007ffb83693cff - _chkstk - in Unknown:0 (C:\WINDOWS\SYSTEM32\ntdll.dll)
	0x00007ffb8360e456 - RtlFindCharInUnicodeString - in Unknown:0 (C:\WINDOWS\SYSTEM32\ntdll.dll)
	0x00007ffb83692cee - KiUserExceptionDispatcher - in Unknown:0 (C:\WINDOWS\SYSTEM32\ntdll.dll)
	0x00007ff621bb57ed - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff621bf249f - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff621bf1154 - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff621ed6e76 - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff621ed6fab - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff621ed713a - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff621ed7726 - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff621ed7614 - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff621ed752d - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff621eecd23 - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff621ed60dd - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff621eca329 - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff621ee5027 - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff621ee50e7 - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff622bc0c72 - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff6215d60af - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff6215d8979 - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff6215d83fa - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff6215e782d - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff6215e0ee3 - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff622bc5840 - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff6215c1494 - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff6228a0267 - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ff622db7ea4 - KiUserExceptionDispatcher - in Unknown:0 (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	0x00007ffb815c26bd - BaseThreadInitThunk - in Unknown:0 (C:\WINDOWS\System32\KERNEL32.DLL)
	0x00007ffb8364a9f8 - RtlUserThreadStart - in Unknown:0 (C:\WINDOWS\SYSTEM32\ntdll.dll)

Stack trace (managed):
	  Hook:OnGameCrashManaged(_EXCEPTION_POINTERS* exceptionInfo, Void** stackFrames, Int32 framesCaptured, SByte* exceptionName, Plugin plugin, String pluginStackTrace)
	  Hook:OnGameCrashManaged(_EXCEPTION_POINTERS* exceptionInfo, Void** stackFrames, Int32 framesCaptured, SByte* exceptionName)


General purpose registers:
	RAX: 0x0000009094fafc80
	RCX: 0x000001aa94fafc80
	RDX: 0x0000000000000016
	RBX: 0x000001aa95f86a70
	RSP: 0x0000008f3037ef90
	RBP: 0x000000000000f000
	RSI: 0x000001aa94fafc80
	RDI: 0x0000000000000000
	R8: 0x000000000000006b
	R9: 0x00000000000001f5
	R10: 0x0000000000000000
	R11: 0x00007ff62310ef30
	R12: 0x0000008f3037f500
	R13: 0x000000000000f000
	R14: 0x000001aa94faf6e0
	R15: 0x0000000000002ac0
	RIP: 0x00007ff621bb57ed

Segment registers:
	CS: 0x0033
	DS: 0x002b
	ES: 0x002b
	FS: 0x0053
	GS: 0x002b
	SS: 0x002b
	Flags: 0x00010202

Debug registers:
	Dr0: 0x0000000000000000
	Dr1: 0x0000000000000000
	Dr2: 0x0000000000000000
	Dr3: 0x0000000000000000
	Dr6: 0x0000000000000000
	Dr7: 0x0000000000000000

Floating point state:
	Xmm0: Low: 0x0000000000000000, High: 0x0000000000000000
	Xmm1: Low: 0x0000000000000000, High: 0x0000000000000000
	Xmm2: Low: 0x00000000437f0000, High: 0x00000000437f0000
	Xmm3: Low: 0x2e2e2e2e2e2e2e2e, High: 0x2e2e2e2e2e2e2e2e
	Xmm4: Low: 0x0000000000000000, High: 0x0000000000000000
	Xmm5: Low: 0x0000000000000000, High: 0x0000000000000000
	Xmm6: Low: 0x01e84f3b00632551, High: 0x01e84f3b00632551
	Xmm7: Low: 0x02b69c5e0272b0bf, High: 0x02b69c5e0272b0bf
	Xmm8: Low: 0x0000000000000001, High: 0x0000000000000001
	Xmm9: Low: 0x0000000100000000, High: 0x0000000100000000
	Xmm10: Low: 0x0000000100000001, High: 0x0000000100000001
	Xmm11: Low: 0x0000000200000001, High: 0x0000000200000001
	Xmm12: Low: 0x0000000000000000, High: 0x0000000000000000
	Xmm13: Low: 0x0000000000000007, High: 0x0000000000000007
	Xmm14: Low: 0x03ffffff03ffffff, High: 0x03ffffff03ffffff
	Xmm15: Low: 0x0000000000000000, High: 0x0000000000000000

Threads:
	Id: 10484 (0x28f4) (CURRENT); state: Running
	Id: 13488 (0x34b0)state: Wait (Reason: EventPairLow)
	Id: 29156 (0x71e4)state: Wait (Reason: EventPairLow)
	Id: 7320 (0x1c98)state: Wait (Reason: EventPairLow)
	Id: 2124 (0x084c)state: Wait (Reason: EventPairLow)
	Id: 12476 (0x30bc)state: Wait (Reason: UserRequest)
	Id: 13524 (0x34d4)state: Wait (Reason: ExecutionDelay)
	Id: 3752 (0x0ea8)state: Wait (Reason: ExecutionDelay)
	Id: 7152 (0x1bf0)state: Wait (Reason: EventPairLow)
	Id: 6740 (0x1a54)state: Wait (Reason: EventPairLow)
	Id: 29568 (0x7380)state: Wait (Reason: EventPairLow)
	Id: 26492 (0x677c)state: Wait (Reason: EventPairLow)
	Id: 24992 (0x61a0)state: Wait (Reason: UserRequest)
	Id: 29188 (0x7204)state: Wait (Reason: EventPairLow)
	Id: 20728 (0x50f8)state: Wait (Reason: UserRequest)
	Id: 29444 (0x7304)state: Wait (Reason: UserRequest)
	Id: 6852 (0x1ac4)state: Wait (Reason: UserRequest)
	Id: 2852 (0x0b24)state: Wait (Reason: ExecutionDelay)
	Id: 19180 (0x4aec)state: Wait (Reason: UserRequest)
	Id: 4004 (0x0fa4)state: Wait (Reason: UserRequest)
	Id: 29836 (0x748c)state: Wait (Reason: UserRequest)
	Id: 11984 (0x2ed0)state: Wait (Reason: UserRequest)
	Id: 28992 (0x7140)state: Wait (Reason: UserRequest)
	Id: 13272 (0x33d8)state: Wait (Reason: UserRequest)
	Id: 4684 (0x124c)state: Wait (Reason: UserRequest)
	Id: 3508 (0x0db4)state: Wait (Reason: UserRequest)
	Id: 29668 (0x73e4)state: Wait (Reason: UserRequest)
	Id: 28036 (0x6d84)state: Wait (Reason: UserRequest)
	Id: 20828 (0x515c)state: Wait (Reason: UserRequest)
	Id: 28584 (0x6fa8)state: Wait (Reason: UserRequest)
	Id: 13584 (0x3510)state: Wait (Reason: UserRequest)
	Id: 7288 (0x1c78)state: Wait (Reason: UserRequest)
	Id: 16028 (0x3e9c)state: Wait (Reason: UserRequest)
	Id: 27064 (0x69b8)state: Wait (Reason: EventPairLow)
	Id: 7448 (0x1d18)state: Wait (Reason: UserRequest)
	Id: 19520 (0x4c40)state: Wait (Reason: UserRequest)
	Id: 18520 (0x4858)state: Wait (Reason: UserRequest)
	Id: 3480 (0x0d98)state: Wait (Reason: UserRequest)
	Id: 22688 (0x58a0)state: Wait (Reason: ExecutionDelay)
	Id: 27548 (0x6b9c)state: Wait (Reason: UserRequest)
	Id: 7524 (0x1d64)state: Wait (Reason: EventPairLow)
	Id: 22224 (0x56d0)state: Wait (Reason: Unknown)
	Id: 24088 (0x5e18)state: Wait (Reason: UserRequest)
	Id: 17984 (0x4640)state: Wait (Reason: UserRequest)
	Id: 20604 (0x507c)state: Wait (Reason: UserRequest)
	Id: 27364 (0x6ae4)state: Wait (Reason: UserRequest)
	Id: 29564 (0x737c)state: Wait (Reason: UserRequest)
	Id: 9692 (0x25dc)state: Wait (Reason: UserRequest)
	Id: 3976 (0x0f88)state: Wait (Reason: UserRequest)
	Id: 22612 (0x5854)state: Wait (Reason: UserRequest)
	Id: 27528 (0x6b88)state: Wait (Reason: UserRequest)
	Id: 20656 (0x50b0)state: Wait (Reason: UserRequest)
	Id: 25640 (0x6428)state: Wait (Reason: UserRequest)
	Id: 5324 (0x14cc)state: Wait (Reason: UserRequest)
	Id: 7172 (0x1c04)state: Wait (Reason: UserRequest)
	Id: 14604 (0x390c)state: Wait (Reason: UserRequest)
	Id: 30524 (0x773c)state: Wait (Reason: UserRequest)
	Id: 26916 (0x6924)state: Wait (Reason: UserRequest)
	Id: 23084 (0x5a2c)state: Wait (Reason: UserRequest)
	Id: 28776 (0x7068)state: Wait (Reason: UserRequest)
	Id: 26960 (0x6950)state: Wait (Reason: UserRequest)
	Id: 1496 (0x05d8)state: Wait (Reason: UserRequest)
	Id: 2488 (0x09b8)state: Wait (Reason: UserRequest)
	Id: 5976 (0x1758)state: Wait (Reason: UserRequest)
	Id: 14960 (0x3a70)state: Wait (Reason: UserRequest)
	Id: 15232 (0x3b80)state: Wait (Reason: UserRequest)
	Id: 22988 (0x59cc)state: Wait (Reason: UserRequest)
	Id: 12920 (0x3278)state: Wait (Reason: UserRequest)
	Id: 29844 (0x7494)state: Wait (Reason: UserRequest)
	Id: 19512 (0x4c38)state: Wait (Reason: UserRequest)
	Id: 15116 (0x3b0c)state: Wait (Reason: UserRequest)
	Id: 27588 (0x6bc4)state: Wait (Reason: UserRequest)
	Id: 22716 (0x58bc)state: Wait (Reason: UserRequest)
	Id: 21408 (0x53a0)state: Wait (Reason: UserRequest)
	Id: 27100 (0x69dc)state: Wait (Reason: UserRequest)
	Id: 26148 (0x6624)state: Wait (Reason: UserRequest)
	Id: 7356 (0x1cbc)state: Wait (Reason: UserRequest)
	Id: 14472 (0x3888)state: Wait (Reason: Unknown)
	Id: 2536 (0x09e8)state: Running
	Id: 18680 (0x48f8)state: Wait (Reason: Unknown)
	Id: 27640 (0x6bf8)state: Wait (Reason: Unknown)
	Id: 30480 (0x7710)state: Wait (Reason: Unknown)
	Id: 1980 (0x07bc)state: Wait (Reason: Unknown)
	Id: 25420 (0x634c)state: Wait (Reason: Unknown)
	Id: 21928 (0x55a8)state: Wait (Reason: Unknown)
	Id: 7372 (0x1ccc)state: Wait (Reason: Unknown)
	Id: 29708 (0x740c)state: Wait (Reason: Unknown)
	Id: 13360 (0x3430)state: Wait (Reason: Unknown)
	Id: 7628 (0x1dcc)state: Wait (Reason: Unknown)
	Id: 20832 (0x5160)state: Wait (Reason: Unknown)
	Id: 27320 (0x6ab8)state: Wait (Reason: Unknown)
	Id: 30036 (0x7554)state: Wait (Reason: Unknown)
	Id: 22068 (0x5634)state: Wait (Reason: Unknown)
	Id: 13972 (0x3694)state: Wait (Reason: UserRequest)
	Id: 27608 (0x6bd8)state: Wait (Reason: UserRequest)
	Id: 28676 (0x7004)state: Wait (Reason: UserRequest)
	Id: 18280 (0x4768)state: Wait (Reason: UserRequest)
	Id: 29176 (0x71f8)state: Wait (Reason: ExecutionDelay)
	Id: 17872 (0x45d0)state: Wait (Reason: UserRequest)
	Id: 30004 (0x7534)state: Wait (Reason: UserRequest)
	Id: 10160 (0x27b0)state: Wait (Reason: UserRequest)
	Id: 20312 (0x4f58)state: Wait (Reason: UserRequest)
	Id: 29076 (0x7194)state: Wait (Reason: UserRequest)
	Id: 29724 (0x741c)state: Wait (Reason: UserRequest)
	Id: 21092 (0x5264)state: Wait (Reason: UserRequest)
	Id: 14592 (0x3900)state: Wait (Reason: UserRequest)
	Id: 30024 (0x7548)state: Wait (Reason: UserRequest)
	Id: 29184 (0x7200)state: Wait (Reason: UserRequest)
	Id: 30660 (0x77c4)state: Wait (Reason: UserRequest)
	Id: 15092 (0x3af4)state: Wait (Reason: UserRequest)
	Id: 30516 (0x7734)state: Wait (Reason: UserRequest)
	Id: 28960 (0x7120)state: Wait (Reason: UserRequest)
	Id: 22576 (0x5830)state: Wait (Reason: UserRequest)
	Id: 15848 (0x3de8)state: Wait (Reason: UserRequest)
	Id: 14312 (0x37e8)state: Wait (Reason: ExecutionDelay)
	Id: 30636 (0x77ac)state: Wait (Reason: UserRequest)
	Id: 25108 (0x6214)state: Wait (Reason: UserRequest)
	Id: 26628 (0x6804)state: Wait (Reason: UserRequest)
	Id: 2176 (0x0880)state: Wait (Reason: UserRequest)
	Id: 24012 (0x5dcc)state: Wait (Reason: UserRequest)
	Id: 25912 (0x6538)state: Wait (Reason: UserRequest)
	Id: 27892 (0x6cf4)state: Wait (Reason: UserRequest)
	Id: 15540 (0x3cb4)state: Wait (Reason: UserRequest)
	Id: 18580 (0x4894)state: Wait (Reason: UserRequest)
	Id: 2140 (0x085c)state: Wait (Reason: UserRequest)
	Id: 17108 (0x42d4)state: Wait (Reason: UserRequest)
	Id: 22936 (0x5998)state: Wait (Reason: UserRequest)
	Id: 27412 (0x6b14)state: Wait (Reason: UserRequest)
	Id: 25904 (0x6530)state: Wait (Reason: UserRequest)
	Id: 21724 (0x54dc)state: Wait (Reason: UserRequest)
	Id: 28104 (0x6dc8)state: Wait (Reason: UserRequest)
	Id: 12764 (0x31dc)state: Wait (Reason: UserRequest)
	Id: 2260 (0x08d4)state: Wait (Reason: EventPairLow)
	Id: 27912 (0x6d08)state: Wait (Reason: EventPairLow)
	Id: 5668 (0x1624)state: Wait (Reason: ExecutionDelay)
	Id: 19284 (0x4b54)state: Wait (Reason: UserRequest)
	Id: 28880 (0x70d0)state: Wait (Reason: UserRequest)
	Id: 20964 (0x51e4)state: Wait (Reason: ExecutionDelay)
	Id: 10908 (0x2a9c)state: Wait (Reason: UserRequest)
	Id: 30468 (0x7704)state: Wait (Reason: UserRequest)
	Id: 15104 (0x3b00)state: Wait (Reason: UserRequest)
	Id: 28076 (0x6dac)state: Wait (Reason: UserRequest)
	Id: 3232 (0x0ca0)state: Wait (Reason: ExecutionDelay)
	Id: 26804 (0x68b4)state: Wait (Reason: UserRequest)
	Id: 28580 (0x6fa4)state: Wait (Reason: UserRequest)
	Id: 29396 (0x72d4)state: Wait (Reason: UserRequest)
	Id: 2728 (0x0aa8)state: Wait (Reason: UserRequest)
	Id: 30312 (0x7668)state: Wait (Reason: UserRequest)
	Id: 23004 (0x59dc)state: Wait (Reason: UserRequest)
	Id: 15784 (0x3da8)state: Wait (Reason: UserRequest)
	Id: 23456 (0x5ba0)state: Wait (Reason: UserRequest)
	Id: 12320 (0x3020)state: Wait (Reason: UserRequest)
	Id: 25992 (0x6588)state: Wait (Reason: UserRequest)
	Id: 24720 (0x6090)state: Wait (Reason: UserRequest)
	Id: 1996 (0x07cc)state: Wait (Reason: UserRequest)
	Id: 15588 (0x3ce4)state: Wait (Reason: UserRequest)
	Id: 2012 (0x07dc)state: Wait (Reason: UserRequest)
	Id: 19824 (0x4d70)state: Wait (Reason: UserRequest)
	Id: 4380 (0x111c)state: Wait (Reason: UserRequest)
	Id: 4296 (0x10c8)state: Wait (Reason: UserRequest)
	Id: 27776 (0x6c80)state: Wait (Reason: EventPairLow)
	Id: 8608 (0x21a0)state: Wait (Reason: ExecutionDelay)
	Id: 21308 (0x533c)state: Wait (Reason: UserRequest)
	Id: 18732 (0x492c)state: Wait (Reason: UserRequest)
	Id: 18692 (0x4904)state: Wait (Reason: UserRequest)
	Id: 19744 (0x4d20)state: Wait (Reason: UserRequest)
	Id: 19560 (0x4c68)state: Wait (Reason: UserRequest)
	Id: 16732 (0x415c)state: Wait (Reason: UserRequest)
	Id: 5588 (0x15d4)state: Wait (Reason: UserRequest)
	Id: 15908 (0x3e24)state: Wait (Reason: UserRequest)
	Id: 20704 (0x50e0)state: Wait (Reason: UserRequest)
	Id: 30056 (0x7568)state: Wait (Reason: UserRequest)
	Id: 25380 (0x6324)state: Wait (Reason: UserRequest)
	Id: 25720 (0x6478)state: Wait (Reason: UserRequest)
	Id: 10892 (0x2a8c)state: Wait (Reason: UserRequest)
	Id: 17768 (0x4568)state: Wait (Reason: UserRequest)
	Id: 12584 (0x3128)state: Wait (Reason: UserRequest)
	Id: 18584 (0x4898)state: Wait (Reason: UserRequest)
	Id: 19536 (0x4c50)state: Wait (Reason: UserRequest)
	Id: 21536 (0x5420)state: Wait (Reason: UserRequest)
	Id: 17960 (0x4628)state: Wait (Reason: UserRequest)
	Id: 10496 (0x2900)state: Wait (Reason: UserRequest)
	Id: 14760 (0x39a8)state: Wait (Reason: UserRequest)
	Id: 27368 (0x6ae8)state: Wait (Reason: UserRequest)
	Id: 21260 (0x530c)state: Wait (Reason: UserRequest)
	Id: 18836 (0x4994)state: Wait (Reason: UserRequest)
	Id: 30204 (0x75fc)state: Wait (Reason: UserRequest)
	Id: 4952 (0x1358)state: Wait (Reason: UserRequest)
	Id: 6312 (0x18a8)state: Wait (Reason: UserRequest)
	Id: 24876 (0x612c)state: Wait (Reason: UserRequest)
	Id: 27676 (0x6c1c)state: Wait (Reason: EventPairLow)
	Id: 14488 (0x3898)state: Wait (Reason: EventPairLow)
	Id: 14912 (0x3a40)state: Wait (Reason: UserRequest)
	Id: 26100 (0x65f4)state: Wait (Reason: UserRequest)
	Id: 27072 (0x69c0)state: Wait (Reason: UserRequest)
	Id: 29544 (0x7368)state: Wait (Reason: UserRequest)
	Id: 22508 (0x57ec)state: Wait (Reason: UserRequest)
	Id: 10484 (0x28f4) (CURRENT)
		Start address: 0x0000000000000000
		State: Running
		Priority: 15
		Priority level: TimeCritical
		Start time: 4/8/2023 1:47:31 PM
		Total processor time: 00:00:44.3437500
		User processor time: 00:00:44.3437500

	Id: 13488 (0x34b0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:47:31 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 29156 (0x71e4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:47:31 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 7320 (0x1c98)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:47:31 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 2124 (0x084c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:47:31 PM
		Total processor time: 00:00:12.1718750
		User processor time: 00:00:12.1718750

	Id: 12476 (0x30bc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:47:31 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 13524 (0x34d4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: ExecutionDelay)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:47:33 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 3752 (0x0ea8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: ExecutionDelay)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:47:43 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 7152 (0x1bf0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 10
		Priority level: Normal
		Start time: 4/8/2023 1:47:43 PM
		Total processor time: 00:00:00.0937500
		User processor time: 00:00:00.0937500

	Id: 6740 (0x1a54)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:01 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 29568 (0x7380)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:02 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 26492 (0x677c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:03 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 24992 (0x61a0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:03 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 29188 (0x7204)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:03 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 20728 (0x50f8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 29444 (0x7304)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 6852 (0x1ac4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 11
		Priority level: Normal
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00.2500000
		User processor time: 00:00:00.2500000

	Id: 2852 (0x0b24)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: ExecutionDelay)
		Priority: 15
		Priority level: TimeCritical
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 19180 (0x4aec)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 4004 (0x0fa4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 29836 (0x748c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 11984 (0x2ed0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 28992 (0x7140)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 13272 (0x33d8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 4684 (0x124c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 3508 (0x0db4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 29668 (0x73e4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 28036 (0x6d84)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 20828 (0x515c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 28584 (0x6fa8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 13584 (0x3510)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 7288 (0x1c78)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 16028 (0x3e9c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:04 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 27064 (0x69b8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 10
		Priority level: Normal
		Start time: 4/8/2023 1:48:07 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 7448 (0x1d18)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 15
		Priority level: TimeCritical
		Start time: 4/8/2023 1:48:07 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 19520 (0x4c40)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 7
		Priority level: BelowNormal
		Start time: 4/8/2023 1:48:07 PM
		Total processor time: 00:00:00.0625000
		User processor time: 00:00:00.0625000

	Id: 18520 (0x4858)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 15
		Priority level: TimeCritical
		Start time: 4/8/2023 1:48:07 PM
		Total processor time: 00:00:00.0156250
		User processor time: 00:00:00.0156250

	Id: 3480 (0x0d98)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:07 PM
		Total processor time: 00:00:00.5625000
		User processor time: 00:00:00.5625000

	Id: 22688 (0x58a0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: ExecutionDelay)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:01.5000000
		User processor time: 00:00:01.5000000

	Id: 27548 (0x6b9c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 7524 (0x1d64)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 22224 (0x56d0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 24088 (0x5e18)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 17984 (0x4640)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 20604 (0x507c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 27364 (0x6ae4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 29564 (0x737c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 9692 (0x25dc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 3976 (0x0f88)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 22612 (0x5854)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 27528 (0x6b88)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 20656 (0x50b0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 25640 (0x6428)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 5324 (0x14cc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 7172 (0x1c04)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 14604 (0x390c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 30524 (0x773c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 26916 (0x6924)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 23084 (0x5a2c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 28776 (0x7068)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 13
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 26960 (0x6950)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 13
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 1496 (0x05d8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 2488 (0x09b8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 5976 (0x1758)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 14960 (0x3a70)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 15232 (0x3b80)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00.0468750
		User processor time: 00:00:00.0468750

	Id: 22988 (0x59cc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00.0312500
		User processor time: 00:00:00.0312500

	Id: 12920 (0x3278)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 29844 (0x7494)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00.0156250
		User processor time: 00:00:00.0156250

	Id: 19512 (0x4c38)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 15116 (0x3b0c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00.0156250
		User processor time: 00:00:00.0156250

	Id: 27588 (0x6bc4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00.0156250
		User processor time: 00:00:00.0156250

	Id: 22716 (0x58bc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 21408 (0x53a0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00.0156250
		User processor time: 00:00:00.0156250

	Id: 27100 (0x69dc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 26148 (0x6624)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 7356 (0x1cbc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 14472 (0x3888)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 2536 (0x09e8)
		Start address: 0x00007ffb8364a9d0
		State: Running
		Priority: 3
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:16.5000000
		User processor time: 00:00:16.5000000

	Id: 18680 (0x48f8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 27640 (0x6bf8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 30480 (0x7710)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 1980 (0x07bc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 25420 (0x634c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 21928 (0x55a8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 7372 (0x1ccc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 29708 (0x740c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 13360 (0x3430)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 7628 (0x1dcc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 20832 (0x5160)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 27320 (0x6ab8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 30036 (0x7554)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 22068 (0x5634)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: Unknown)
		Priority: 5
		Priority level: Idle
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 13972 (0x3694)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:08 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 27608 (0x6bd8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:09 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 28676 (0x7004)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 14
		Priority level: Highest
		Start time: 4/8/2023 1:48:09 PM
		Total processor time: 00:00:00.0156250
		User processor time: 00:00:00.0156250

	Id: 18280 (0x4768)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:09 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 29176 (0x71f8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: ExecutionDelay)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:09 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 17872 (0x45d0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 30004 (0x7534)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 10160 (0x27b0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 20312 (0x4f58)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 29076 (0x7194)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 29724 (0x741c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 21092 (0x5264)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 14592 (0x3900)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 30024 (0x7548)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 29184 (0x7200)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 30660 (0x77c4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 15092 (0x3af4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 30516 (0x7734)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 28960 (0x7120)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 22576 (0x5830)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 15848 (0x3de8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 22
		Priority level: 14
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00.0156250
		User processor time: 00:00:00.0156250

	Id: 14312 (0x37e8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: ExecutionDelay)
		Priority: 15
		Priority level: TimeCritical
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00.3906250
		User processor time: 00:00:00.3906250

	Id: 30636 (0x77ac)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 7
		Priority level: BelowNormal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 25108 (0x6214)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 26628 (0x6804)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 2176 (0x0880)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 24012 (0x5dcc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:10 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 25912 (0x6538)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 7
		Priority level: BelowNormal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 27892 (0x6cf4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 15540 (0x3cb4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 18580 (0x4894)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 2140 (0x085c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 17108 (0x42d4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 22936 (0x5998)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 27412 (0x6b14)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00.0156250
		User processor time: 00:00:00.0156250

	Id: 25904 (0x6530)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 21724 (0x54dc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 28104 (0x6dc8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 12764 (0x31dc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 2260 (0x08d4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 27912 (0x6d08)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 5668 (0x1624)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: ExecutionDelay)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 19284 (0x4b54)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 28880 (0x70d0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:11 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 20964 (0x51e4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: ExecutionDelay)
		Priority: 7
		Priority level: BelowNormal
		Start time: 4/8/2023 1:48:12 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 10908 (0x2a9c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:12 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 30468 (0x7704)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:12 PM
		Total processor time: 00:00:00.0312500
		User processor time: 00:00:00.0312500

	Id: 15104 (0x3b00)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:12 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 28076 (0x6dac)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:12 PM
		Total processor time: 00:00:00.0312500
		User processor time: 00:00:00.0312500

	Id: 3232 (0x0ca0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: ExecutionDelay)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:12 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 26804 (0x68b4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:12 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 28580 (0x6fa4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:12 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 29396 (0x72d4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:12 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 2728 (0x0aa8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 7
		Priority level: BelowNormal
		Start time: 4/8/2023 1:48:12 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 30312 (0x7668)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 15
		Priority level: TimeCritical
		Start time: 4/8/2023 1:48:12 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 23004 (0x59dc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 15
		Priority level: TimeCritical
		Start time: 4/8/2023 1:48:12 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 15784 (0x3da8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 22
		Priority level: 14
		Start time: 4/8/2023 1:48:12 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 23456 (0x5ba0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 15
		Priority level: TimeCritical
		Start time: 4/8/2023 1:48:12 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 12320 (0x3020)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:12 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 25992 (0x6588)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 24720 (0x6090)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 1996 (0x07cc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 15588 (0x3ce4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 2012 (0x07dc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 7
		Priority level: BelowNormal
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 19824 (0x4d70)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 4380 (0x111c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 4296 (0x10c8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 27776 (0x6c80)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 10
		Priority level: Normal
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 8608 (0x21a0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: ExecutionDelay)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 21308 (0x533c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 18732 (0x492c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 18692 (0x4904)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 19744 (0x4d20)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 9
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 19560 (0x4c68)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 16732 (0x415c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 5588 (0x15d4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 15908 (0x3e24)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 20704 (0x50e0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 30056 (0x7568)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 25380 (0x6324)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 25720 (0x6478)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 10892 (0x2a8c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 17768 (0x4568)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 12584 (0x3128)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 18584 (0x4898)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 19536 (0x4c50)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 21536 (0x5420)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 17960 (0x4628)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 6
		Priority level: Lowest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 10496 (0x2900)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 14760 (0x39a8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 27368 (0x6ae8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 21260 (0x530c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 18836 (0x4994)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 30204 (0x75fc)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 4952 (0x1358)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 6312 (0x18a8)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 24876 (0x612c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Highest
		Start time: 4/8/2023 1:48:13 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 27676 (0x6c1c)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 13
		Priority level: AboveNormal
		Start time: 4/8/2023 1:48:15 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 14488 (0x3898)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: EventPairLow)
		Priority: 10
		Priority level: Normal
		Start time: 4/8/2023 1:48:24 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 14912 (0x3a40)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:42 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 26100 (0x65f4)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 8
		Priority level: Normal
		Start time: 4/8/2023 1:48:42 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 27072 (0x69c0)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 14
		Priority level: Highest
		Start time: 4/8/2023 1:48:52 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 29544 (0x7368)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 12
		Priority level: Normal
		Start time: 4/8/2023 1:49:00 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

	Id: 22508 (0x57ec)
		Start address: 0x00007ffb8364a9d0
		State: Wait (Reason: UserRequest)
		Priority: 10
		Priority level: Normal
		Start time: 4/8/2023 1:49:02 PM
		Total processor time: 00:00:00
		User processor time: 00:00:00

Modules:
	Name: GTA5.exe; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe (Grand Theft Auto V v1.0.2845.0, by Rockstar Games)
	Name: ntdll.dll; path: C:\WINDOWS\SYSTEM32\ntdll.dll (Microsoft® Windows® Operating System v10.0.22621.900, by Microsoft Corporation)
	Name: KERNEL32.DLL; path: C:\WINDOWS\System32\KERNEL32.DLL (Microsoft® Windows® Operating System v10.0.22621.900, by Microsoft Corporation)
	Name: KERNELBASE.dll; path: C:\WINDOWS\System32\KERNELBASE.dll (Microsoft® Windows® Operating System v10.0.22621.1344, by Microsoft Corporation)
	Name: USER32.dll; path: C:\WINDOWS\System32\USER32.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: win32u.dll; path: C:\WINDOWS\System32\win32u.dll (Microsoft® Windows® Operating System v10.0.22621.1413, by Microsoft Corporation)
	Name: GDI32.dll; path: C:\WINDOWS\System32\GDI32.dll (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: gdi32full.dll; path: C:\WINDOWS\System32\gdi32full.dll (Microsoft® Windows® Operating System v10.0.22621.1344, by Microsoft Corporation)
	Name: msvcp_win.dll; path: C:\WINDOWS\System32\msvcp_win.dll (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: ucrtbase.dll; path: C:\WINDOWS\System32\ucrtbase.dll (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: PSAPI.DLL; path: C:\WINDOWS\System32\PSAPI.DLL (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: WS2_32.dll; path: C:\WINDOWS\System32\WS2_32.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: RPCRT4.dll; path: C:\WINDOWS\System32\RPCRT4.dll (Microsoft® Windows® Operating System v10.0.22621.1344, by Microsoft Corporation)
	Name: CRYPT32.dll; path: C:\WINDOWS\System32\CRYPT32.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: GFSDK_ShadowLib.win64.dll; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GFSDK_ShadowLib.win64.dll ( v, by )
	Name: VERSION.dll; path: C:\WINDOWS\SYSTEM32\VERSION.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: WINTRUST.dll; path: C:\WINDOWS\System32\WINTRUST.dll (Microsoft® Windows® Operating System v10.0.22621.1194, by Microsoft Corporation)
	Name: msvcrt.dll; path: C:\WINDOWS\System32\msvcrt.dll (Microsoft® Windows® Operating System v7.0.22621.608, by Microsoft Corporation)
	Name: IMM32.dll; path: C:\WINDOWS\System32\IMM32.dll (Microsoft® Windows® Operating System v10.0.22621.1344, by Microsoft Corporation)
	Name: DSOUND.dll; path: C:\WINDOWS\SYSTEM32\DSOUND.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: SHLWAPI.dll; path: C:\WINDOWS\System32\SHLWAPI.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: bink2w64.dll; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\bink2w64.dll (Bink and Smacker v1.994a, by RAD Game Tools, Inc.)
	Name: ole32.dll; path: C:\WINDOWS\System32\ole32.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: advapi32.dll; path: C:\WINDOWS\System32\advapi32.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: SHELL32.dll; path: C:\WINDOWS\System32\SHELL32.dll (Microsoft® Windows® Operating System v10.0.22621.755, by Microsoft Corporation)
	Name: combase.dll; path: C:\WINDOWS\System32\combase.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: sechost.dll; path: C:\WINDOWS\System32\sechost.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: OLEAUT32.dll; path: C:\WINDOWS\System32\OLEAUT32.dll (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: WININET.dll; path: C:\WINDOWS\SYSTEM32\WININET.dll (Internet Explorer v11.00.22621.1, by Microsoft Corporation)
	Name: WINMM.dll; path: C:\WINDOWS\SYSTEM32\WINMM.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: MF.dll; path: C:\WINDOWS\SYSTEM32\MF.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: MFPlat.DLL; path: C:\WINDOWS\SYSTEM32\MFPlat.DLL (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: msdmo.dll; path: C:\WINDOWS\SYSTEM32\msdmo.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: MFReadWrite.dll; path: C:\WINDOWS\SYSTEM32\MFReadWrite.dll (Microsoft® Windows® Operating System v10.0.22621.1194, by Microsoft Corporation)
	Name: shcore.dll; path: C:\WINDOWS\System32\shcore.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: PROPSYS.dll; path: C:\WINDOWS\SYSTEM32\PROPSYS.dll (Windows® Search v7.0.22621.1, by Microsoft Corporation)
	Name: WTSAPI32.dll; path: C:\WINDOWS\SYSTEM32\WTSAPI32.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: d3d9.dll; path: C:\WINDOWS\SYSTEM32\d3d9.dll (Microsoft® Windows® Operating System v10.0.22621.1344, by Microsoft Corporation)
	Name: GFSDK_TXAA_AlphaResolve.win64.dll; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GFSDK_TXAA_AlphaResolve.win64.dll ( v, by )
	Name: D3DCOMPILER_43.dll; path: C:\WINDOWS\SYSTEM32\D3DCOMPILER_43.dll (Microsoft® DirectX for Windows® v9.29.952.3111, by Microsoft Corporation)
	Name: XINPUT1_3.dll; path: C:\WINDOWS\SYSTEM32\XINPUT1_3.dll (Microsoft® DirectX for Windows® v9.18.944.0000, by Microsoft Corporation)
	Name: DINPUT8.dll; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\DINPUT8.dll (GTA V Asi loader v1.0.0.1, by Alexander Blade)
	Name: IPHLPAPI.DLL; path: C:\WINDOWS\SYSTEM32\IPHLPAPI.DLL (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: bcrypt.dll; path: C:\WINDOWS\SYSTEM32\bcrypt.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: SETUPAPI.dll; path: C:\WINDOWS\System32\SETUPAPI.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: ResampleDmo.DLL; path: C:\WINDOWS\SYSTEM32\ResampleDmo.DLL (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: d3dx9_43.dll; path: C:\WINDOWS\SYSTEM32\d3dx9_43.dll (Microsoft® DirectX for Windows® v9.29.952.3111, by Microsoft Corporation)
	Name: powrprof.dll; path: C:\WINDOWS\SYSTEM32\powrprof.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: winmmbase.dll; path: C:\WINDOWS\SYSTEM32\winmmbase.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: cfgmgr32.dll; path: C:\WINDOWS\SYSTEM32\cfgmgr32.dll (Microsoft® Windows® Operating System v10.0.22621.1344, by Microsoft Corporation)
	Name: dwmapi.dll; path: C:\WINDOWS\SYSTEM32\dwmapi.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: OPENGL32.dll; path: C:\WINDOWS\SYSTEM32\OPENGL32.dll (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: GLU32.dll; path: C:\WINDOWS\SYSTEM32\GLU32.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: dxcore.dll; path: C:\WINDOWS\SYSTEM32\dxcore.dll (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: MFCORE.DLL; path: C:\WINDOWS\SYSTEM32\MFCORE.DLL (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: UMPDC.dll; path: C:\WINDOWS\SYSTEM32\UMPDC.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: kernel.appcore.dll; path: C:\WINDOWS\SYSTEM32\kernel.appcore.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: bcryptPrimitives.dll; path: C:\WINDOWS\System32\bcryptPrimitives.dll (Microsoft® Windows® Operating System v10.0.22621.1344, by Microsoft Corporation)
	Name: RTWorkQ.DLL; path: C:\WINDOWS\SYSTEM32\RTWorkQ.DLL (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: MSASN1.dll; path: C:\WINDOWS\SYSTEM32\MSASN1.dll (Microsoft® Windows® Operating System v10.0.22621.819, by Microsoft Corporation)
	Name: dinput8.dll; path: C:\WINDOWS\system32\dinput8.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: gameoverlayrenderer64.dll; path: C:\Program Files (x86)\Steam\gameoverlayrenderer64.dll (Steam Game Overlay Renderer v01.00.00.01, by Valve Corporation)
	Name: inputhost.dll; path: C:\WINDOWS\SYSTEM32\inputhost.dll (Microsoft® Windows® Operating System v10.0.22621.1344, by Microsoft Corporation)
	Name: CoreMessaging.dll; path: C:\WINDOWS\SYSTEM32\CoreMessaging.dll (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: CRYPTBASE.DLL; path: C:\WINDOWS\SYSTEM32\CRYPTBASE.DLL (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: ELS.asi; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ELS.asi ( v, by )
	Name: ScriptHookV.dll; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ScriptHookV.dll (ScriptHookV v1.0.2845.0, by Alexander Blade)
	Name: AdvancedHookV.dll; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\AdvancedHookV.dll ( v, by )
	Name: MSVCP140.dll; path: C:\WINDOWS\SYSTEM32\MSVCP140.dll (Microsoft® Visual Studio® v14.34.31938.0, by Microsoft Corporation)
	Name: VCRUNTIME140.dll; path: C:\WINDOWS\SYSTEM32\VCRUNTIME140.dll (Microsoft® Visual Studio® v14.34.31938.0, by Microsoft Corporation)
	Name: VCRUNTIME140_1.dll; path: C:\WINDOWS\SYSTEM32\VCRUNTIME140_1.dll (Microsoft® Visual Studio® v14.34.31938.0, by Microsoft Corporation)
	Name: d3dx11_43.dll; path: C:\WINDOWS\SYSTEM32\d3dx11_43.dll (Microsoft® DirectX for Windows® v9.29.952.3111, by Microsoft Corporation)
	Name: LUA.asi; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\LUA.asi (Lua Plugin by Headscript v1.0.0.1, by Headscript)
	Name: MSVCR120.dll; path: C:\WINDOWS\SYSTEM32\MSVCR120.dll (Microsoft® Visual Studio® 2013 v12.00.21005.1, by Microsoft Corporation)
	Name: MSVCP120.dll; path: C:\WINDOWS\SYSTEM32\MSVCP120.dll (Microsoft® Visual Studio® 2013 v12.00.21005.1, by Microsoft Corporation)
	Name: NativeTrainer.asi; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\NativeTrainer.asi ( v, by )
	Name: openCameraV.asi; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\openCameraV.asi (openCamera for GTAV v1.0.0.1, by OpenIV Dev. Team)
	Name: OpenIV.asi; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\OpenIV.asi (OpenIV v2.0.0.0, by OpenIV Team)
	Name: PedConversation1.1.asi; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\PedConversation1.1.asi ( v, by )
	Name: Skin Control.asi; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Skin Control.asi ( v, by )
	Name: Spikes.asi; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Spikes.asi ( v, by )
	Name: ZMenuV.asi; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ZMenuV.asi ( v, by )
	Name: bass.dll; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\bass.dll ( v, by Un4seen Developments)
	Name: D3DCOMPILER_47.dll; path: C:\WINDOWS\SYSTEM32\D3DCOMPILER_47.dll (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: d3d11.dll; path: C:\WINDOWS\SYSTEM32\d3d11.dll (Microsoft® Windows® Operating System v10.0.22621.1344, by Microsoft Corporation)
	Name: MSACM32.dll; path: C:\WINDOWS\SYSTEM32\MSACM32.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: CRYPTSP.dll; path: C:\WINDOWS\SYSTEM32\CRYPTSP.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: dxgi.dll; path: C:\WINDOWS\SYSTEM32\dxgi.dll (Microsoft® Windows® Operating System v10.0.22621.1344, by Microsoft Corporation)
	Name: sdk_legacy_led_x64.dll; path: C:\Program Files\LGHUB\sdks\sdk_legacy_led_x64.dll (Logitech G Legacy LED SDK v9.2.65, by Logitech, Inc.)
	Name: rsaenh.dll; path: C:\WINDOWS\system32\rsaenh.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: mswsock.dll; path: C:\WINDOWS\system32\mswsock.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: windows.storage.dll; path: C:\WINDOWS\SYSTEM32\windows.storage.dll (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: wintypes.dll; path: C:\WINDOWS\SYSTEM32\wintypes.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: dbghelp.dll; path: C:\WINDOWS\SYSTEM32\dbghelp.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: dbgcore.DLL; path: C:\WINDOWS\SYSTEM32\dbgcore.DLL (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: uxtheme.dll; path: C:\WINDOWS\system32\uxtheme.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: clbcatq.dll; path: C:\WINDOWS\System32\clbcatq.dll (Microsoft® Windows® Operating System v10.0.22621.1194, by Microsoft Corporation)
	Name: amsi.dll; path: C:\WINDOWS\SYSTEM32\amsi.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: USERENV.dll; path: C:\WINDOWS\SYSTEM32\USERENV.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: profapi.dll; path: C:\WINDOWS\SYSTEM32\profapi.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: MpOav.dll; path: C:\ProgramData\Microsoft\Windows Defender\Platform\4.18.2302.7-0\MpOav.dll (Microsoft® Windows® Operating System v4.18.2302.7, by Microsoft Corporation)
	Name: directxdatabasehelper.dll; path: C:\WINDOWS\SYSTEM32\directxdatabasehelper.dll (Microsoft® Windows® Operating System v10.0.22621.1344, by Microsoft Corporation)
	Name: cryptnet.dll; path: C:\WINDOWS\SYSTEM32\cryptnet.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: drvstore.dll; path: C:\WINDOWS\SYSTEM32\drvstore.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: devobj.dll; path: C:\WINDOWS\SYSTEM32\devobj.dll (Microsoft® Windows® Operating System v10.0.22621.1344, by Microsoft Corporation)
	Name: wldp.dll; path: C:\WINDOWS\SYSTEM32\wldp.dll (Microsoft® Windows® Operating System v10.0.22621.900, by Microsoft Corporation)
	Name: imagehlp.dll; path: C:\WINDOWS\System32\imagehlp.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: nvspcap64.dll; path: C:\WINDOWS\system32\nvspcap64.dll (NVIDIA GeForce Experience v3.27.0.112, by NVIDIA Corporation)
	Name: ntmarta.dll; path: C:\WINDOWS\SYSTEM32\ntmarta.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: NSI.dll; path: C:\WINDOWS\System32\NSI.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: dhcpcsvc.DLL; path: C:\WINDOWS\SYSTEM32\dhcpcsvc.DLL (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: gpapi.dll; path: C:\WINDOWS\SYSTEM32\gpapi.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: WINNSI.DLL; path: C:\WINDOWS\SYSTEM32\WINNSI.DLL (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: steam_api64.dll; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\steam_api64.dll (Steam Client API v01.00.00.01, by Valve Corporation)
	Name: steamclient64.dll; path: C:\Program Files (x86)\Steam\steamclient64.dll (Steam v03.00.00.01, by Valve Corporation)
	Name: tier0_s64.dll; path: C:\Program Files (x86)\Steam\tier0_s64.dll ( tier0_s Dynamic Link Library v01.00.00.01, by Valve Corporation)
	Name: vstdlib_s64.dll; path: C:\Program Files (x86)\Steam\vstdlib_s64.dll (Steam v03.00.00.01, by Valve Corporation)
	Name: Secur32.dll; path: C:\WINDOWS\SYSTEM32\Secur32.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: SSPICLI.DLL; path: C:\WINDOWS\SYSTEM32\SSPICLI.DLL (Microsoft® Windows® Operating System v10.0.22621.674, by Microsoft Corporation)
	Name: nvapi64.dll; path: C:\WINDOWS\system32\nvapi64.dll (NVIDIA Windows drivers v31.0.15.3141, by NVIDIA Corporation)
	Name: D3D10_1.DLL; path: C:\WINDOWS\SYSTEM32\D3D10_1.DLL (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: d3d10_1core.dll; path: C:\WINDOWS\SYSTEM32\d3d10_1core.dll (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: MSCTF.dll; path: C:\WINDOWS\System32\MSCTF.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: textinputframework.dll; path: C:\WINDOWS\SYSTEM32\textinputframework.dll (Microsoft® Windows® Operating System v10.0.22621.1344, by Microsoft Corporation)
	Name: WINSTA.dll; path: C:\WINDOWS\SYSTEM32\WINSTA.dll (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: nvldumdx.dll; path: C:\WINDOWS\System32\DriverStore\FileRepository\nv_dispi.inf_amd64_50916785244854f2\nvldumdx.dll (NVIDIA driver loader v31.0.15.3141, by NVIDIA Corporation)
	Name: nvwgf2umx.dll; path: C:\WINDOWS\System32\DriverStore\FileRepository\nv_dispi.inf_amd64_50916785244854f2\nvwgf2umx.dll (NVIDIA D3D10 drivers v31.0.15.3141, by NVIDIA Corporation)
	Name: MessageBus.dll; path: C:\WINDOWS\System32\DriverStore\FileRepository\nv_dispi.inf_amd64_50916785244854f2\Display.NvContainer\MessageBus.dll ( v, by )
	Name: socialclub_tmp.dll; path: C:\Users\Isael\AppData\Local\Temp\vqczt4i0ejynutm4\socialclub_tmp.dll (RAGE Plugin Hook v1.104.1327.16500, by MulleDK19 / LMS)
	Name: FW1FontWrapper.dll; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\FW1FontWrapper.dll ( v, by )
	Name: mscoree.dll; path: C:\WINDOWS\SYSTEM32\mscoree.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: XINPUT9_1_0.dll; path: C:\WINDOWS\SYSTEM32\XINPUT9_1_0.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: mscoreei.dll; path: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\mscoreei.dll (Microsoft® .NET Framework v4.8.9065.0, by Microsoft Corporation)
	Name: clr.dll; path: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\clr.dll (Microsoft® .NET Framework v4.8.9139.0, by Microsoft Corporation)
	Name: VCRUNTIME140_1_CLR0400.dll; path: C:\WINDOWS\SYSTEM32\VCRUNTIME140_1_CLR0400.dll (Microsoft® Visual Studio® v14.32.31326.0, by Microsoft Corporation)
	Name: ucrtbase_clr0400.dll; path: C:\WINDOWS\SYSTEM32\ucrtbase_clr0400.dll (Microsoft® Visual Studio® v14.32.31326.0, by Microsoft Corporation)
	Name: VCRUNTIME140_CLR0400.dll; path: C:\WINDOWS\SYSTEM32\VCRUNTIME140_CLR0400.dll (Microsoft® Visual Studio® v14.32.31326.0, by Microsoft Corporation)
	Name: mscorlib.ni.dll; path: C:\WINDOWS\assembly\NativeImages_v4.0.30319_64\mscorlib\3b9003e4f27d92e40668f0efad11e022\mscorlib.ni.dll (Microsoft® .NET Framework v4.8.9139.0, by Microsoft Corporation)
	Name: clrjit.dll; path: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\clrjit.dll (Microsoft® .NET Framework v4.8.9139.0, by Microsoft Corporation)
	Name: diasymreader.dll; path: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\diasymreader.dll (Microsoft® .NET Framework v14.8.9139.0, by Microsoft Corporation)
	Name: System.ni.dll; path: C:\WINDOWS\assembly\NativeImages_v4.0.30319_64\System\ce0fd4f5b50baa17e7b80e4ee874ad11\System.ni.dll (Microsoft® .NET Framework v4.8.9139.0, by Microsoft Corporation)
	Name: System.Drawing.ni.dll; path: C:\WINDOWS\assembly\NativeImages_v4.0.30319_64\System.Drawing\3c82a5286b5172d5a68c8df2e09c4c40\System.Drawing.ni.dll (Microsoft® .NET Framework v4.8.9032.0, by Microsoft Corporation)
	Name: System.Windows.Forms.ni.dll; path: C:\WINDOWS\assembly\NativeImages_v4.0.30319_64\System.Windows.Forms\bee998043eb1e9badecd282a79540a5e\System.Windows.Forms.ni.dll (Microsoft® .NET Framework v4.8.9075.0, by Microsoft Corporation)
	Name: HID.DLL; path: C:\WINDOWS\SYSTEM32\HID.DLL (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: MMDevApi.dll; path: C:\WINDOWS\System32\MMDevApi.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: XAudio2_7.dll; path: C:\WINDOWS\system32\XAudio2_7.dll (Microsoft® DirectX for Windows® v9.29.1962.0, by Microsoft Corporation)
	Name: AUDIOSES.DLL; path: C:\WINDOWS\SYSTEM32\AUDIOSES.DLL (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: resourcepolicyclient.dll; path: C:\WINDOWS\SYSTEM32\resourcepolicyclient.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: Windows.UI.dll; path: C:\Windows\System32\Windows.UI.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: avrt.dll; path: C:\WINDOWS\SYSTEM32\avrt.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: System.Core.ni.dll; path: C:\WINDOWS\assembly\NativeImages_v4.0.30319_64\System.Core\990501e6199819806f01c8ecac88baac\System.Core.ni.dll (Microsoft® .NET Framework v4.8.9139.0, by Microsoft Corporation)
	Name: System.Xml.ni.dll; path: C:\WINDOWS\assembly\NativeImages_v4.0.30319_64\System.Xml\f0078c8c05b31633e5966c5629e65602\System.Xml.ni.dll (Microsoft® .NET Framework v4.8.9032.0, by Microsoft Corporation)
	Name: System.Configuration.ni.dll; path: C:\WINDOWS\assembly\NativeImages_v4.0.30319_64\System.Configuration\2a25b59872a72da9b55f952ab1b0bc8b\System.Configuration.ni.dll (Microsoft® .NET Framework v4.8.9032.0, by Microsoft Corporation)
	Name: comctl32.dll; path: C:\WINDOWS\WinSxS\amd64_microsoft.windows.common-controls_6595b64144ccf1df_6.0.22621.608_none_a9444ca7c10bb01d\comctl32.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: gdiplus.dll; path: C:\WINDOWS\WinSxS\amd64_microsoft.windows.gdiplus_6595b64144ccf1df_1.1.22621.819_none_da30437f1b9d3de1\gdiplus.dll (Microsoft® Windows® Operating System v10.0.22621.819, by Microsoft Corporation)
	Name: DWrite.dll; path: C:\WINDOWS\SYSTEM32\DWrite.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: WindowsCodecs.dll; path: C:\WINDOWS\SYSTEM32\WindowsCodecs.dll (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: TextShaping.dll; path: C:\WINDOWS\SYSTEM32\TextShaping.dll (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: SlimDX.dll; path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\SlimDX.dll ( v, by )
	Name: MSVCR100.dll; path: C:\WINDOWS\SYSTEM32\MSVCR100.dll (Microsoft® Visual Studio® 2010 v10.00.40219.325, by Microsoft Corporation)
	Name: MSVCP100.dll; path: C:\WINDOWS\SYSTEM32\MSVCP100.dll (Microsoft® Visual Studio® 2010 v10.00.40219.325, by Microsoft Corporation)
	Name: napinsp.dll; path: C:\WINDOWS\system32\napinsp.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: pnrpnsp.dll; path: C:\WINDOWS\system32\pnrpnsp.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: DNSAPI.dll; path: C:\WINDOWS\SYSTEM32\DNSAPI.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: winrnr.dll; path: C:\WINDOWS\System32\winrnr.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: wshbth.dll; path: C:\WINDOWS\system32\wshbth.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: nlansp_c.dll; path: C:\WINDOWS\system32\nlansp_c.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: fwpuclnt.dll; path: C:\WINDOWS\System32\fwpuclnt.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: rasadhlp.dll; path: C:\Windows\System32\rasadhlp.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: DPAPI.dll; path: C:\WINDOWS\SYSTEM32\DPAPI.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: socialclub.dll; path: C:\Program Files\Rockstar Games\Social Club\socialclub.dll (Social Club v2.1.7.0, by Take-Two Interactive Software, Inc.)
	Name: chrome_elf.dll; path: C:\Program Files\Rockstar Games\Social Club\chrome_elf.dll (Chromium v85.0.4183.102, by The Chromium Authors)
	Name: libcef.dll; path: C:\Program Files\Rockstar Games\Social Club\libcef.dll (Chromium Embedded Framework (CEF) Dynamic Link Library v85.3.9+gb045a6e+chromium-85.0.4183.102, by )
	Name: COMDLG32.dll; path: C:\WINDOWS\System32\COMDLG32.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: UIAutomationCore.DLL; path: C:\WINDOWS\SYSTEM32\UIAutomationCore.DLL (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: NETAPI32.dll; path: C:\WINDOWS\SYSTEM32\NETAPI32.dll (Microsoft® Windows® Operating System v10.0.22621.674, by Microsoft Corporation)
	Name: OLEACC.dll; path: C:\WINDOWS\SYSTEM32\OLEACC.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: COMCTL32.dll; path: C:\WINDOWS\WinSxS\amd64_microsoft.windows.common-controls_6595b64144ccf1df_5.82.22621.608_none_fb280a3c7926c2cc\COMCTL32.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: WINSPOOL.DRV; path: C:\WINDOWS\SYSTEM32\WINSPOOL.DRV (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: USP10.dll; path: C:\WINDOWS\SYSTEM32\USP10.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: dxva2.dll; path: C:\WINDOWS\SYSTEM32\dxva2.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: credui.dll; path: C:\WINDOWS\SYSTEM32\credui.dll (Microsoft® Windows® Operating System v10.0.22621.1105, by Microsoft Corporation)
	Name: WINHTTP.dll; path: C:\WINDOWS\SYSTEM32\WINHTTP.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: urlmon.dll; path: C:\WINDOWS\SYSTEM32\urlmon.dll (Internet Explorer v11.00.22621.1344, by Microsoft Corporation)
	Name: ncrypt.dll; path: C:\WINDOWS\SYSTEM32\ncrypt.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: CRYPTUI.dll; path: C:\WINDOWS\SYSTEM32\CRYPTUI.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: wevtapi.dll; path: C:\WINDOWS\SYSTEM32\wevtapi.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: ESENT.dll; path: C:\WINDOWS\SYSTEM32\ESENT.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: srvcli.dll; path: C:\WINDOWS\SYSTEM32\srvcli.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: iertutil.dll; path: C:\WINDOWS\SYSTEM32\iertutil.dll (Internet Explorer v11.00.22621.1, by Microsoft Corporation)
	Name: netutils.dll; path: C:\WINDOWS\SYSTEM32\netutils.dll (Microsoft® Windows® Operating System v10.0.22621.674, by Microsoft Corporation)
	Name: WKSCLI.DLL; path: C:\WINDOWS\SYSTEM32\WKSCLI.DLL (Microsoft® Windows® Operating System v10.0.22621.674, by Microsoft Corporation)
	Name: SAMCLI.DLL; path: C:\WINDOWS\SYSTEM32\SAMCLI.DLL (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: NTASN1.dll; path: C:\WINDOWS\SYSTEM32\NTASN1.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: FirewallAPI.dll; path: C:\Windows\System32\FirewallAPI.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: fwbase.dll; path: C:\Windows\System32\fwbase.dll (Microsoft® Windows® Operating System v10.0.22621.1194, by Microsoft Corporation)
	Name: FWPolicyIOMgr.dll; path: C:\Windows\System32\FWPolicyIOMgr.dll (Microsoft® Windows® Operating System v10.0.22621.1194, by Microsoft Corporation)
	Name: wdmaud.drv; path: C:\WINDOWS\SYSTEM32\wdmaud.drv (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: ksuser.dll; path: C:\WINDOWS\SYSTEM32\ksuser.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: msacm32.drv; path: C:\WINDOWS\SYSTEM32\msacm32.drv (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: midimap.dll; path: C:\WINDOWS\SYSTEM32\midimap.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: ondemandconnroutehelper.dll; path: C:\WINDOWS\SYSTEM32\ondemandconnroutehelper.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: CoreUIComponents.dll; path: C:\WINDOWS\SYSTEM32\CoreUIComponents.dll (Microsoft® Windows® Operating System v10.0.22621.608, by Microsoft Corporation)
	Name: schannel.DLL; path: C:\WINDOWS\system32\schannel.DLL (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: ncryptsslp.dll; path: C:\WINDOWS\system32\ncryptsslp.dll (Microsoft® Windows® Operating System v10.0.22621.1, by Microsoft Corporation)
	Name: GTA5.exe
		Base address: 0x00007ff6215c0000
		Memory size: 0x03c95800
		Entry point address: 0x00007ff622db7f0c
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe
		Product name: Grand Theft Auto V
		Product version: 1.0.2845.0
		Company: Rockstar Games

	Name: ntdll.dll
		Base address: 0x00007ffb835f0000
		Memory size: 0x00214000
		Entry point address: 0x0000000000000000
		File path: C:\WINDOWS\SYSTEM32\ntdll.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.900
		Company: Microsoft Corporation

	Name: KERNEL32.DLL
		Base address: 0x00007ffb815b0000
		Memory size: 0x000c3000
		Entry point address: 0x00007ffb815c2720
		File path: C:\WINDOWS\System32\KERNEL32.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.900
		Company: Microsoft Corporation

	Name: KERNELBASE.dll
		Base address: 0x00007ffb81060000
		Memory size: 0x0039c000
		Entry point address: 0x00007ffb810a1f90
		File path: C:\WINDOWS\System32\KERNELBASE.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1344
		Company: Microsoft Corporation

	Name: USER32.dll
		Base address: 0x00007ffb81400000
		Memory size: 0x001ad000
		Entry point address: 0x00007ffb8140b2a0
		File path: C:\WINDOWS\System32\USER32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: win32u.dll
		Base address: 0x00007ffb80f20000
		Memory size: 0x00026000
		Entry point address: 0x0000000000000000
		File path: C:\WINDOWS\System32\win32u.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1413
		Company: Microsoft Corporation

	Name: GDI32.dll
		Base address: 0x00007ffb824d0000
		Memory size: 0x00029000
		Entry point address: 0x00007ffb824d45c0
		File path: C:\WINDOWS\System32\GDI32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: gdi32full.dll
		Base address: 0x00007ffb80b50000
		Memory size: 0x00113000
		Entry point address: 0x00007ffb80b71580
		File path: C:\WINDOWS\System32\gdi32full.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1344
		Company: Microsoft Corporation

	Name: msvcp_win.dll
		Base address: 0x00007ffb80f50000
		Memory size: 0x0009a000
		Entry point address: 0x00007ffb80f62440
		File path: C:\WINDOWS\System32\msvcp_win.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: ucrtbase.dll
		Base address: 0x00007ffb80a30000
		Memory size: 0x00111000
		Entry point address: 0x00007ffb80a47700
		File path: C:\WINDOWS\System32\ucrtbase.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: PSAPI.DLL
		Base address: 0x00007ffb82980000
		Memory size: 0x00008000
		Entry point address: 0x00007ffb82981070
		File path: C:\WINDOWS\System32\PSAPI.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: WS2_32.dll
		Base address: 0x00007ffb82680000
		Memory size: 0x00071000
		Entry point address: 0x00007ffb82695b20
		File path: C:\WINDOWS\System32\WS2_32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: RPCRT4.dll
		Base address: 0x00007ffb82560000
		Memory size: 0x00115000
		Entry point address: 0x00007ffb825b00f0
		File path: C:\WINDOWS\System32\RPCRT4.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1344
		Company: Microsoft Corporation

	Name: CRYPT32.dll
		Base address: 0x00007ffb80cf0000
		Memory size: 0x00166000
		Entry point address: 0x00007ffb80d3d650
		File path: C:\WINDOWS\System32\CRYPT32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: GFSDK_ShadowLib.win64.dll
		Base address: 0x00007ffad8ad0000
		Memory size: 0x003cc000
		Entry point address: 0x00007ffad8adcf10
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GFSDK_ShadowLib.win64.dll
		Product name: 
		Product version: 
		Company: 

	Name: VERSION.dll
		Base address: 0x00007ffb79f20000
		Memory size: 0x0000a000
		Entry point address: 0x00007ffb79f21390
		File path: C:\WINDOWS\SYSTEM32\VERSION.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: WINTRUST.dll
		Base address: 0x00007ffb80ff0000
		Memory size: 0x0006b000
		Entry point address: 0x00007ffb810086b0
		File path: C:\WINDOWS\System32\WINTRUST.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1194
		Company: Microsoft Corporation

	Name: msvcrt.dll
		Base address: 0x00007ffb82090000
		Memory size: 0x000a7000
		Entry point address: 0x00007ffb82097b90
		File path: C:\WINDOWS\System32\msvcrt.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 7.0.22621.608
		Company: Microsoft Corporation

	Name: IMM32.dll
		Base address: 0x00007ffb82a00000
		Memory size: 0x00031000
		Entry point address: 0x00007ffb82a01400
		File path: C:\WINDOWS\System32\IMM32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1344
		Company: Microsoft Corporation

	Name: DSOUND.dll
		Base address: 0x00007ffb66800000
		Memory size: 0x000a2000
		Entry point address: 0x00007ffb66815e00
		File path: C:\WINDOWS\SYSTEM32\DSOUND.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: SHLWAPI.dll
		Base address: 0x00007ffb81f80000
		Memory size: 0x0005e000
		Entry point address: 0x00007ffb81f8bbb0
		File path: C:\WINDOWS\System32\SHLWAPI.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: bink2w64.dll
		Base address: 0x00007ffb350f0000
		Memory size: 0x0008d000
		Entry point address: 0x00007ffb350f3a78
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\bink2w64.dll
		Product name: Bink and Smacker
		Product version: 1.994a
		Company: RAD Game Tools, Inc.

	Name: ole32.dll
		Base address: 0x00007ffb827e0000
		Memory size: 0x0019c000
		Entry point address: 0x00007ffb827fd280
		File path: C:\WINDOWS\System32\ole32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: advapi32.dll
		Base address: 0x00007ffb81fe0000
		Memory size: 0x000ae000
		Entry point address: 0x00007ffb81fe46f0
		File path: C:\WINDOWS\System32\advapi32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: SHELL32.dll
		Base address: 0x00007ffb82a40000
		Memory size: 0x007f0000
		Entry point address: 0x00007ffb82b16fa0
		File path: C:\WINDOWS\System32\SHELL32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.755
		Company: Microsoft Corporation

	Name: combase.dll
		Base address: 0x00007ffb82140000
		Memory size: 0x00389000
		Entry point address: 0x00007ffb822450d0
		File path: C:\WINDOWS\System32\combase.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: sechost.dll
		Base address: 0x00007ffb832e0000
		Memory size: 0x000a4000
		Entry point address: 0x00007ffb832f7670
		File path: C:\WINDOWS\System32\sechost.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: OLEAUT32.dll
		Base address: 0x00007ffb82700000
		Memory size: 0x000d7000
		Entry point address: 0x00007ffb82727650
		File path: C:\WINDOWS\System32\OLEAUT32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: WININET.dll
		Base address: 0x00007ffb52ec0000
		Memory size: 0x004f4000
		Entry point address: 0x00007ffb52fb2d20
		File path: C:\WINDOWS\SYSTEM32\WININET.dll
		Product name: Internet Explorer
		Product version: 11.00.22621.1
		Company: Microsoft Corporation

	Name: WINMM.dll
		Base address: 0x00007ffb7aab0000
		Memory size: 0x00034000
		Entry point address: 0x00007ffb7aab7b20
		File path: C:\WINDOWS\SYSTEM32\WINMM.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: MF.dll
		Base address: 0x00007ffb251f0000
		Memory size: 0x0008a000
		Entry point address: 0x00007ffb252036b0
		File path: C:\WINDOWS\SYSTEM32\MF.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: MFPlat.DLL
		Base address: 0x00007ffb51a90000
		Memory size: 0x001ce000
		Entry point address: 0x00007ffb51ab9910
		File path: C:\WINDOWS\SYSTEM32\MFPlat.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: msdmo.dll
		Base address: 0x00007ffb6b110000
		Memory size: 0x0000b000
		Entry point address: 0x00007ffb6b111720
		File path: C:\WINDOWS\SYSTEM32\msdmo.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: MFReadWrite.dll
		Base address: 0x00007ffb46cb0000
		Memory size: 0x00121000
		Entry point address: 0x00007ffb46cdcbc0
		File path: C:\WINDOWS\SYSTEM32\MFReadWrite.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1194
		Company: Microsoft Corporation

	Name: shcore.dll
		Base address: 0x00007ffb817a0000
		Memory size: 0x000f1000
		Entry point address: 0x00007ffb817e7930
		File path: C:\WINDOWS\System32\shcore.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: PROPSYS.dll
		Base address: 0x00007ffb7bdb0000
		Memory size: 0x00100000
		Entry point address: 0x00007ffb7bdf42c0
		File path: C:\WINDOWS\SYSTEM32\PROPSYS.dll
		Product name: Windows® Search
		Product version: 7.0.22621.1
		Company: Microsoft Corporation

	Name: WTSAPI32.dll
		Base address: 0x00007ffb7df00000
		Memory size: 0x00014000
		Entry point address: 0x00007ffb7df02700
		File path: C:\WINDOWS\SYSTEM32\WTSAPI32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: d3d9.dll
		Base address: 0x00007ffb4dad0000
		Memory size: 0x001a9000
		Entry point address: 0x00007ffb4db0ef40
		File path: C:\WINDOWS\SYSTEM32\d3d9.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1344
		Company: Microsoft Corporation

	Name: GFSDK_TXAA_AlphaResolve.win64.dll
		Base address: 0x00007ffb7c220000
		Memory size: 0x0001c000
		Entry point address: 0x00007ffb7c22493c
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GFSDK_TXAA_AlphaResolve.win64.dll
		Product name: 
		Product version: 
		Company: 

	Name: D3DCOMPILER_43.dll
		Base address: 0x00007ffadf460000
		Memory size: 0x0026f000
		Entry point address: 0x00007ffadf69be5c
		File path: C:\WINDOWS\SYSTEM32\D3DCOMPILER_43.dll
		Product name: Microsoft® DirectX for Windows®
		Product version: 9.29.952.3111
		Company: Microsoft Corporation

	Name: XINPUT1_3.dll
		Base address: 0x0000000000400000
		Memory size: 0x0001e000
		Entry point address: 0x00000000004098e0
		File path: C:\WINDOWS\SYSTEM32\XINPUT1_3.dll
		Product name: Microsoft® DirectX for Windows®
		Product version: 9.18.944.0000
		Company: Microsoft Corporation

	Name: DINPUT8.dll
		Base address: 0x00007ffb69a50000
		Memory size: 0x00025000
		Entry point address: 0x00007ffb69a53804
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\DINPUT8.dll
		Product name: GTA V Asi loader
		Product version: 1.0.0.1
		Company: Alexander Blade

	Name: IPHLPAPI.DLL
		Base address: 0x00007ffb7f560000
		Memory size: 0x0002d000
		Entry point address: 0x00007ffb7f56b170
		File path: C:\WINDOWS\SYSTEM32\IPHLPAPI.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: bcrypt.dll
		Base address: 0x00007ffb803e0000
		Memory size: 0x00028000
		Entry point address: 0x00007ffb803e90f0
		File path: C:\WINDOWS\SYSTEM32\bcrypt.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: SETUPAPI.dll
		Base address: 0x00007ffb818e0000
		Memory size: 0x00474000
		Entry point address: 0x00007ffb81904a50
		File path: C:\WINDOWS\System32\SETUPAPI.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: ResampleDmo.DLL
		Base address: 0x00007ffb65ba0000
		Memory size: 0x000b1000
		Entry point address: 0x00007ffb65bab620
		File path: C:\WINDOWS\SYSTEM32\ResampleDmo.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: d3dx9_43.dll
		Base address: 0x00007ffad8860000
		Memory size: 0x00263000
		Entry point address: 0x00007ffad8a75d1c
		File path: C:\WINDOWS\SYSTEM32\d3dx9_43.dll
		Product name: Microsoft® DirectX for Windows®
		Product version: 9.29.952.3111
		Company: Microsoft Corporation

	Name: powrprof.dll
		Base address: 0x00007ffb7f940000
		Memory size: 0x0004d000
		Entry point address: 0x00007ffb7f943ea0
		File path: C:\WINDOWS\SYSTEM32\powrprof.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: winmmbase.dll
		Base address: 0x00007ffb678f0000
		Memory size: 0x00029000
		Entry point address: 0x00007ffb679077e0
		File path: C:\WINDOWS\SYSTEM32\winmmbase.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: cfgmgr32.dll
		Base address: 0x00007ffb80720000
		Memory size: 0x0004e000
		Entry point address: 0x00007ffb80735c30
		File path: C:\WINDOWS\SYSTEM32\cfgmgr32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1344
		Company: Microsoft Corporation

	Name: dwmapi.dll
		Base address: 0x00007ffb7e2a0000
		Memory size: 0x0002b000
		Entry point address: 0x00007ffb7e2a2880
		File path: C:\WINDOWS\SYSTEM32\dwmapi.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: OPENGL32.dll
		Base address: 0x00007ffae9fd0000
		Memory size: 0x00100000
		Entry point address: 0x00007ffae9fd3110
		File path: C:\WINDOWS\SYSTEM32\OPENGL32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: GLU32.dll
		Base address: 0x00007ffb6c710000
		Memory size: 0x0002d000
		Entry point address: 0x00007ffb6c711310
		File path: C:\WINDOWS\SYSTEM32\GLU32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: dxcore.dll
		Base address: 0x00007ffb7e130000
		Memory size: 0x00036000
		Entry point address: 0x00007ffb7e1321e0
		File path: C:\WINDOWS\SYSTEM32\dxcore.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: MFCORE.DLL
		Base address: 0x00007ffaea0d0000
		Memory size: 0x003e4000
		Entry point address: 0x00007ffaea191490
		File path: C:\WINDOWS\SYSTEM32\MFCORE.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: UMPDC.dll
		Base address: 0x00007ffb7f920000
		Memory size: 0x00013000
		Entry point address: 0x00007ffb7f9239a0
		File path: C:\WINDOWS\SYSTEM32\UMPDC.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: kernel.appcore.dll
		Base address: 0x00007ffb7fb70000
		Memory size: 0x00018000
		Entry point address: 0x00007ffb7fb75880
		File path: C:\WINDOWS\SYSTEM32\kernel.appcore.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: bcryptPrimitives.dll
		Base address: 0x00007ffb80c70000
		Memory size: 0x0007b000
		Entry point address: 0x00007ffb80ca0c00
		File path: C:\WINDOWS\System32\bcryptPrimitives.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1344
		Company: Microsoft Corporation

	Name: RTWorkQ.DLL
		Base address: 0x00007ffb7adf0000
		Memory size: 0x00033000
		Entry point address: 0x00007ffb7adfc810
		File path: C:\WINDOWS\SYSTEM32\RTWorkQ.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: MSASN1.dll
		Base address: 0x00007ffb806d0000
		Memory size: 0x00012000
		Entry point address: 0x00007ffb806d5590
		File path: C:\WINDOWS\SYSTEM32\MSASN1.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.819
		Company: Microsoft Corporation

	Name: dinput8.dll
		Base address: 0x00007ffb5fec0000
		Memory size: 0x00046000
		Entry point address: 0x00007ffb5fec74b0
		File path: C:\WINDOWS\system32\dinput8.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: gameoverlayrenderer64.dll
		Base address: 0x00007ffb0c240000
		Memory size: 0x00189000
		Entry point address: 0x00007ffb0c2fed78
		File path: C:\Program Files (x86)\Steam\gameoverlayrenderer64.dll
		Product name: Steam Game Overlay Renderer
		Product version: 01.00.00.01
		Company: Valve Corporation

	Name: inputhost.dll
		Base address: 0x00007ffb6b3a0000
		Memory size: 0x00201000
		Entry point address: 0x00007ffb6b3dcd70
		File path: C:\WINDOWS\SYSTEM32\inputhost.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1344
		Company: Microsoft Corporation

	Name: CoreMessaging.dll
		Base address: 0x00007ffb7db80000
		Memory size: 0x00133000
		Entry point address: 0x00007ffb7dbf0be0
		File path: C:\WINDOWS\SYSTEM32\CoreMessaging.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: CRYPTBASE.DLL
		Base address: 0x00007ffb80240000
		Memory size: 0x0000c000
		Entry point address: 0x00007ffb80242200
		File path: C:\WINDOWS\SYSTEM32\CRYPTBASE.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: ELS.asi
		Base address: 0x00007ffada6c0000
		Memory size: 0x00133000
		Entry point address: 0x00007ffada6fd580
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ELS.asi
		Product name: 
		Product version: 
		Company: 

	Name: ScriptHookV.dll
		Base address: 0x00007ffad86a0000
		Memory size: 0x001b7000
		Entry point address: 0x00007ffad86b14a8
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ScriptHookV.dll
		Product name: ScriptHookV
		Product version: 1.0.2845.0
		Company: Alexander Blade

	Name: AdvancedHookV.dll
		Base address: 0x00007ffb7daf0000
		Memory size: 0x0000d000
		Entry point address: 0x00007ffb7daf3990
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\AdvancedHookV.dll
		Product name: 
		Product version: 
		Company: 

	Name: MSVCP140.dll
		Base address: 0x00007ffb63a00000
		Memory size: 0x0008e000
		Entry point address: 0x00007ffb63a533b0
		File path: C:\WINDOWS\SYSTEM32\MSVCP140.dll
		Product name: Microsoft® Visual Studio®
		Product version: 14.34.31938.0
		Company: Microsoft Corporation

	Name: VCRUNTIME140.dll
		Base address: 0x00007ffb62f00000
		Memory size: 0x0001b000
		Entry point address: 0x00007ffb62f0ff90
		File path: C:\WINDOWS\SYSTEM32\VCRUNTIME140.dll
		Product name: Microsoft® Visual Studio®
		Product version: 14.34.31938.0
		Company: Microsoft Corporation

	Name: VCRUNTIME140_1.dll
		Base address: 0x00007ffb62640000
		Memory size: 0x0000c000
		Entry point address: 0x00007ffb626441d0
		File path: C:\WINDOWS\SYSTEM32\VCRUNTIME140_1.dll
		Product name: Microsoft® Visual Studio®
		Product version: 14.34.31938.0
		Company: Microsoft Corporation

	Name: d3dx11_43.dll
		Base address: 0x00007ffb4d900000
		Memory size: 0x00046000
		Entry point address: 0x00007ffb4d937a2c
		File path: C:\WINDOWS\SYSTEM32\d3dx11_43.dll
		Product name: Microsoft® DirectX for Windows®
		Product version: 9.29.952.3111
		Company: Microsoft Corporation

	Name: LUA.asi
		Base address: 0x00007ffad8340000
		Memory size: 0x00360000
		Entry point address: 0x00007ffad85e9f10
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\LUA.asi
		Product name: Lua Plugin by Headscript
		Product version: 1.0.0.1
		Company: Headscript

	Name: MSVCR120.dll
		Base address: 0x00007ffae8620000
		Memory size: 0x000ef000
		Entry point address: 0x00007ffae86429cc
		File path: C:\WINDOWS\SYSTEM32\MSVCR120.dll
		Product name: Microsoft® Visual Studio® 2013
		Product version: 12.00.21005.1
		Company: Microsoft Corporation

	Name: MSVCP120.dll
		Base address: 0x00007ffaf6f60000
		Memory size: 0x000a6000
		Entry point address: 0x00007ffaf6faefec
		File path: C:\WINDOWS\SYSTEM32\MSVCP120.dll
		Product name: Microsoft® Visual Studio® 2013
		Product version: 12.00.21005.1
		Company: Microsoft Corporation

	Name: NativeTrainer.asi
		Base address: 0x00007ffb38b80000
		Memory size: 0x0003c000
		Entry point address: 0x00007ffb38b8c42c
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\NativeTrainer.asi
		Product name: 
		Product version: 
		Company: 

	Name: openCameraV.asi
		Base address: 0x00007ffb69950000
		Memory size: 0x00024000
		Entry point address: 0x00007ffb69952994
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\openCameraV.asi
		Product name: openCamera for GTAV
		Product version: 1.0.0.1
		Company: OpenIV Dev. Team

	Name: OpenIV.asi
		Base address: 0x00007ffb64ca0000
		Memory size: 0x00027000
		Entry point address: 0x00007ffb64ca2cdc
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\OpenIV.asi
		Product name: OpenIV
		Product version: 2.0.0.0
		Company: OpenIV Team

	Name: PedConversation1.1.asi
		Base address: 0x00007ffb6c7e0000
		Memory size: 0x00020000
		Entry point address: 0x00007ffb6c7e265c
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\PedConversation1.1.asi
		Product name: 
		Product version: 
		Company: 

	Name: Skin Control.asi
		Base address: 0x00007ffaf8030000
		Memory size: 0x00073000
		Entry point address: 0x00007ffaf80597e8
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Skin Control.asi
		Product name: 
		Product version: 
		Company: 

	Name: Spikes.asi
		Base address: 0x00007ffb59010000
		Memory size: 0x0002a000
		Entry point address: 0x00007ffb59013c04
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Spikes.asi
		Product name: 
		Product version: 
		Company: 

	Name: ZMenuV.asi
		Base address: 0x00007ffad49d0000
		Memory size: 0x03969000
		Entry point address: 0x00007ffad4d025ec
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ZMenuV.asi
		Product name: 
		Product version: 
		Company: 

	Name: bass.dll
		Base address: 0x00007ffb0d280000
		Memory size: 0x00056000
		Entry point address: 0x00007ffb0d2b6ca0
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\bass.dll
		Product name: 
		Product version: 
		Company: Un4seen Developments

	Name: D3DCOMPILER_47.dll
		Base address: 0x00007ffb7c3d0000
		Memory size: 0x003e6000
		Entry point address: 0x00007ffb7c3d7f60
		File path: C:\WINDOWS\SYSTEM32\D3DCOMPILER_47.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: d3d11.dll
		Base address: 0x00007ffb7d1b0000
		Memory size: 0x00257000
		Entry point address: 0x00007ffb7d1f8a80
		File path: C:\WINDOWS\SYSTEM32\d3d11.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1344
		Company: Microsoft Corporation

	Name: MSACM32.dll
		Base address: 0x00007ffb60060000
		Memory size: 0x0001e000
		Entry point address: 0x00007ffb60063870
		File path: C:\WINDOWS\SYSTEM32\MSACM32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: CRYPTSP.dll
		Base address: 0x00007ffb80250000
		Memory size: 0x0001b000
		Entry point address: 0x00007ffb80255170
		File path: C:\WINDOWS\SYSTEM32\CRYPTSP.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: dxgi.dll
		Base address: 0x00007ffb7e170000
		Memory size: 0x000f7000
		Entry point address: 0x00007ffb7e197480
		File path: C:\WINDOWS\SYSTEM32\dxgi.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1344
		Company: Microsoft Corporation

	Name: sdk_legacy_led_x64.dll
		Base address: 0x00007ffac8e20000
		Memory size: 0x003ea000
		Entry point address: 0x00007ffac9082098
		File path: C:\Program Files\LGHUB\sdks\sdk_legacy_led_x64.dll
		Product name: Logitech G Legacy LED SDK
		Product version: 9.2.65
		Company: Logitech, Inc.

	Name: rsaenh.dll
		Base address: 0x00007ffb7fae0000
		Memory size: 0x00035000
		Entry point address: 0x00007ffb7fae4d20
		File path: C:\WINDOWS\system32\rsaenh.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: mswsock.dll
		Base address: 0x00007ffb7ffe0000
		Memory size: 0x00069000
		Entry point address: 0x00007ffb7fff1120
		File path: C:\WINDOWS\system32\mswsock.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: windows.storage.dll
		Base address: 0x00007ffb7ea50000
		Memory size: 0x008ce000
		Entry point address: 0x00007ffb7ec22760
		File path: C:\WINDOWS\SYSTEM32\windows.storage.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: wintypes.dll
		Base address: 0x00007ffb7e910000
		Memory size: 0x0013e000
		Entry point address: 0x00007ffb7e93ec70
		File path: C:\WINDOWS\SYSTEM32\wintypes.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: dbghelp.dll
		Base address: 0x00007ffb6e000000
		Memory size: 0x0022e000
		Entry point address: 0x00007ffb6e01ede0
		File path: C:\WINDOWS\SYSTEM32\dbghelp.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: dbgcore.DLL
		Base address: 0x00007ffb60d20000
		Memory size: 0x00032000
		Entry point address: 0x00007ffb60d3ef60
		File path: C:\WINDOWS\SYSTEM32\dbgcore.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: uxtheme.dll
		Base address: 0x00007ffb7dff0000
		Memory size: 0x000ab000
		Entry point address: 0x00007ffb7e018970
		File path: C:\WINDOWS\system32\uxtheme.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: clbcatq.dll
		Base address: 0x00007ffb83230000
		Memory size: 0x000b0000
		Entry point address: 0x00007ffb83250dd0
		File path: C:\WINDOWS\System32\clbcatq.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1194
		Company: Microsoft Corporation

	Name: amsi.dll
		Base address: 0x00007ffb67320000
		Memory size: 0x0001d000
		Entry point address: 0x00007ffb67323f90
		File path: C:\WINDOWS\SYSTEM32\amsi.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: USERENV.dll
		Base address: 0x00007ffb800e0000
		Memory size: 0x00028000
		Entry point address: 0x00007ffb800e5230
		File path: C:\WINDOWS\SYSTEM32\USERENV.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: profapi.dll
		Base address: 0x00007ffb80960000
		Memory size: 0x00021000
		Entry point address: 0x00007ffb8096a7b0
		File path: C:\WINDOWS\SYSTEM32\profapi.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: MpOav.dll
		Base address: 0x00007ffb672a0000
		Memory size: 0x0007b000
		Entry point address: 0x00007ffb672c1f20
		File path: C:\ProgramData\Microsoft\Windows Defender\Platform\4.18.2302.7-0\MpOav.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 4.18.2302.7
		Company: Microsoft Corporation

	Name: directxdatabasehelper.dll
		Base address: 0x00007ffb7a410000
		Memory size: 0x00049000
		Entry point address: 0x00007ffb7a412290
		File path: C:\WINDOWS\SYSTEM32\directxdatabasehelper.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1344
		Company: Microsoft Corporation

	Name: cryptnet.dll
		Base address: 0x00007ffb78990000
		Memory size: 0x00032000
		Entry point address: 0x00007ffb7899f940
		File path: C:\WINDOWS\SYSTEM32\cryptnet.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: drvstore.dll
		Base address: 0x00007ffb787b0000
		Memory size: 0x00158000
		Entry point address: 0x00007ffb787cebb0
		File path: C:\WINDOWS\SYSTEM32\drvstore.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: devobj.dll
		Base address: 0x00007ffb806f0000
		Memory size: 0x0002c000
		Entry point address: 0x00007ffb806f7390
		File path: C:\WINDOWS\SYSTEM32\devobj.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1344
		Company: Microsoft Corporation

	Name: wldp.dll
		Base address: 0x00007ffb802f0000
		Memory size: 0x00048000
		Entry point address: 0x00007ffb802f3480
		File path: C:\WINDOWS\SYSTEM32\wldp.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.900
		Company: Microsoft Corporation

	Name: imagehlp.dll
		Base address: 0x00007ffb818c0000
		Memory size: 0x0001f000
		Entry point address: 0x00007ffb818c3500
		File path: C:\WINDOWS\System32\imagehlp.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: nvspcap64.dll
		Base address: 0x00007ffb37340000
		Memory size: 0x002d1000
		Entry point address: 0x00007ffb3734b52d
		File path: C:\WINDOWS\system32\nvspcap64.dll
		Product name: NVIDIA GeForce Experience
		Product version: 3.27.0.112
		Company: NVIDIA Corporation

	Name: ntmarta.dll
		Base address: 0x00007ffb7fb90000
		Memory size: 0x00034000
		Entry point address: 0x00007ffb7fb97500
		File path: C:\WINDOWS\SYSTEM32\ntmarta.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: NSI.dll
		Base address: 0x00007ffb81f70000
		Memory size: 0x00009000
		Entry point address: 0x00007ffb81f71ff0
		File path: C:\WINDOWS\System32\NSI.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: dhcpcsvc.DLL
		Base address: 0x00007ffb78bb0000
		Memory size: 0x0001f000
		Entry point address: 0x00007ffb78bb2ec0
		File path: C:\WINDOWS\SYSTEM32\dhcpcsvc.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: gpapi.dll
		Base address: 0x00007ffb80070000
		Memory size: 0x00026000
		Entry point address: 0x00007ffb80073610
		File path: C:\WINDOWS\SYSTEM32\gpapi.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: WINNSI.DLL
		Base address: 0x00007ffb7e110000
		Memory size: 0x0000d000
		Entry point address: 0x00007ffb7e112060
		File path: C:\WINDOWS\SYSTEM32\WINNSI.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: steam_api64.dll
		Base address: 0x0000000056c20000
		Memory size: 0x0003f000
		Entry point address: 0x0000000056c2ac48
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\steam_api64.dll
		Product name: Steam Client API
		Product version: 01.00.00.01
		Company: Valve Corporation

	Name: steamclient64.dll
		Base address: 0x00007ffadb3f0000
		Memory size: 0x015b6000
		Entry point address: 0x00007ffadc15658c
		File path: C:\Program Files (x86)\Steam\steamclient64.dll
		Product name: Steam
		Product version: 03.00.00.01
		Company: Valve Corporation

	Name: tier0_s64.dll
		Base address: 0x00007ffaf7640000
		Memory size: 0x00196000
		Entry point address: 0x00007ffaf765f3d0
		File path: C:\Program Files (x86)\Steam\tier0_s64.dll
		Product name:  tier0_s Dynamic Link Library
		Product version: 01.00.00.01
		Company: Valve Corporation

	Name: vstdlib_s64.dll
		Base address: 0x00007ffb0c180000
		Memory size: 0x000b3000
		Entry point address: 0x00007ffb0c1a9f30
		File path: C:\Program Files (x86)\Steam\vstdlib_s64.dll
		Product name: Steam
		Product version: 03.00.00.01
		Company: Valve Corporation

	Name: Secur32.dll
		Base address: 0x00007ffb63970000
		Memory size: 0x0000c000
		Entry point address: 0x00007ffb63971610
		File path: C:\WINDOWS\SYSTEM32\Secur32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: SSPICLI.DLL
		Base address: 0x00007ffb7fdc0000
		Memory size: 0x00042000
		Entry point address: 0x00007ffb7fdce760
		File path: C:\WINDOWS\SYSTEM32\SSPICLI.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.674
		Company: Microsoft Corporation

	Name: nvapi64.dll
		Base address: 0x00007ffb70380000
		Memory size: 0x007b5000
		Entry point address: 0x00007ffb70809ad8
		File path: C:\WINDOWS\system32\nvapi64.dll
		Product name: NVIDIA Windows drivers
		Product version: 31.0.15.3141
		Company: NVIDIA Corporation

	Name: D3D10_1.DLL
		Base address: 0x00007ffb0e4a0000
		Memory size: 0x00037000
		Entry point address: 0x00007ffb0e4a1390
		File path: C:\WINDOWS\SYSTEM32\D3D10_1.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: d3d10_1core.dll
		Base address: 0x00007ffb6c540000
		Memory size: 0x0000e000
		Entry point address: 0x00007ffb6c5419b0
		File path: C:\WINDOWS\SYSTEM32\d3d10_1core.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: MSCTF.dll
		Base address: 0x00007ffb81680000
		Memory size: 0x0011e000
		Entry point address: 0x00007ffb816c8470
		File path: C:\WINDOWS\System32\MSCTF.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: textinputframework.dll
		Base address: 0x00007ffb6b270000
		Memory size: 0x0012e000
		Entry point address: 0x00007ffb6b2bc7a0
		File path: C:\WINDOWS\SYSTEM32\textinputframework.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1344
		Company: Microsoft Corporation

	Name: WINSTA.dll
		Base address: 0x00007ffb7f690000
		Memory size: 0x00066000
		Entry point address: 0x00007ffb7f69eff0
		File path: C:\WINDOWS\SYSTEM32\WINSTA.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: nvldumdx.dll
		Base address: 0x00007ffb77410000
		Memory size: 0x000bd000
		Entry point address: 0x00007ffb774426b0
		File path: C:\WINDOWS\System32\DriverStore\FileRepository\nv_dispi.inf_amd64_50916785244854f2\nvldumdx.dll
		Product name: NVIDIA driver loader
		Product version: 31.0.15.3141
		Company: NVIDIA Corporation

	Name: nvwgf2umx.dll
		Base address: 0x00007ffb711a0000
		Memory size: 0x05481000
		Entry point address: 0x00007ffb7120d540
		File path: C:\WINDOWS\System32\DriverStore\FileRepository\nv_dispi.inf_amd64_50916785244854f2\nvwgf2umx.dll
		Product name: NVIDIA D3D10 drivers
		Product version: 31.0.15.3141
		Company: NVIDIA Corporation

	Name: MessageBus.dll
		Base address: 0x00007ffb68210000
		Memory size: 0x00737000
		Entry point address: 0x00007ffb685bb890
		File path: C:\WINDOWS\System32\DriverStore\FileRepository\nv_dispi.inf_amd64_50916785244854f2\Display.NvContainer\MessageBus.dll
		Product name: 
		Product version: 
		Company: 

	Name: socialclub_tmp.dll
		Base address: 0x00007ffac7c70000
		Memory size: 0x011ad000
		Entry point address: 0x00007ffac8e17000
		File path: C:\Users\Isael\AppData\Local\Temp\vqczt4i0ejynutm4\socialclub_tmp.dll
		Product name: RAGE Plugin Hook
		Product version: 1.104.1327.16500
		Company: MulleDK19 / LMS

	Name: FW1FontWrapper.dll
		Base address: 0x00007ffb0e000000
		Memory size: 0x0002a000
		Entry point address: 0x00007ffb0e00e94c
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\FW1FontWrapper.dll
		Product name: 
		Product version: 
		Company: 

	Name: mscoree.dll
		Base address: 0x00007ffb5c3e0000
		Memory size: 0x0006b000
		Entry point address: 0x00007ffb5c40d3b0
		File path: C:\WINDOWS\SYSTEM32\mscoree.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: XINPUT9_1_0.dll
		Base address: 0x00007ffb7db20000
		Memory size: 0x00008000
		Entry point address: 0x00007ffb7db212b0
		File path: C:\WINDOWS\SYSTEM32\XINPUT9_1_0.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: mscoreei.dll
		Base address: 0x00007ffb5c340000
		Memory size: 0x0009b000
		Entry point address: 0x00007ffb5c34bf90
		File path: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\mscoreei.dll
		Product name: Microsoft® .NET Framework
		Product version: 4.8.9065.0
		Company: Microsoft Corporation

	Name: clr.dll
		Base address: 0x00007ffb5b990000
		Memory size: 0x009a3000
		Entry point address: 0x00007ffb5bb219d0
		File path: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\clr.dll
		Product name: Microsoft® .NET Framework
		Product version: 4.8.9139.0
		Company: Microsoft Corporation

	Name: VCRUNTIME140_1_CLR0400.dll
		Base address: 0x00007ffb61840000
		Memory size: 0x0000c000
		Entry point address: 0x00007ffb618441a0
		File path: C:\WINDOWS\SYSTEM32\VCRUNTIME140_1_CLR0400.dll
		Product name: Microsoft® Visual Studio®
		Product version: 14.32.31326.0
		Company: Microsoft Corporation

	Name: ucrtbase_clr0400.dll
		Base address: 0x00007ffb5b8c0000
		Memory size: 0x000cd000
		Entry point address: 0x00007ffb5b953b60
		File path: C:\WINDOWS\SYSTEM32\ucrtbase_clr0400.dll
		Product name: Microsoft® Visual Studio®
		Product version: 14.32.31326.0
		Company: Microsoft Corporation

	Name: VCRUNTIME140_CLR0400.dll
		Base address: 0x00007ffb5c610000
		Memory size: 0x0001b000
		Entry point address: 0x00007ffb5c61fe90
		File path: C:\WINDOWS\SYSTEM32\VCRUNTIME140_CLR0400.dll
		Product name: Microsoft® Visual Studio®
		Product version: 14.32.31326.0
		Company: Microsoft Corporation

	Name: mscorlib.ni.dll
		Base address: 0x00007ffb5a2e0000
		Memory size: 0x015b3000
		Entry point address: 0x0000000000000000
		File path: C:\WINDOWS\assembly\NativeImages_v4.0.30319_64\mscorlib\3b9003e4f27d92e40668f0efad11e022\mscorlib.ni.dll
		Product name: Microsoft® .NET Framework
		Product version: 4.8.9139.0
		Company: Microsoft Corporation

	Name: clrjit.dll
		Base address: 0x00007ffb5a1b0000
		Memory size: 0x0012f000
		Entry point address: 0x00007ffb5a246620
		File path: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\clrjit.dll
		Product name: Microsoft® .NET Framework
		Product version: 4.8.9139.0
		Company: Microsoft Corporation

	Name: diasymreader.dll
		Base address: 0x00007ffb6b5f0000
		Memory size: 0x0012f000
		Entry point address: 0x00007ffb6b617480
		File path: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\diasymreader.dll
		Product name: Microsoft® .NET Framework
		Product version: 14.8.9139.0
		Company: Microsoft Corporation

	Name: System.ni.dll
		Base address: 0x00007ffb6cc40000
		Memory size: 0x00c1b000
		Entry point address: 0x0000000000000000
		File path: C:\WINDOWS\assembly\NativeImages_v4.0.30319_64\System\ce0fd4f5b50baa17e7b80e4ee874ad11\System.ni.dll
		Product name: Microsoft® .NET Framework
		Product version: 4.8.9139.0
		Company: Microsoft Corporation

	Name: System.Drawing.ni.dll
		Base address: 0x00007ffb360a0000
		Memory size: 0x001f3000
		Entry point address: 0x0000000000000000
		File path: C:\WINDOWS\assembly\NativeImages_v4.0.30319_64\System.Drawing\3c82a5286b5172d5a68c8df2e09c4c40\System.Drawing.ni.dll
		Product name: Microsoft® .NET Framework
		Product version: 4.8.9032.0
		Company: Microsoft Corporation

	Name: System.Windows.Forms.ni.dll
		Base address: 0x00007ffb09a30000
		Memory size: 0x010e5000
		Entry point address: 0x0000000000000000
		File path: C:\WINDOWS\assembly\NativeImages_v4.0.30319_64\System.Windows.Forms\bee998043eb1e9badecd282a79540a5e\System.Windows.Forms.ni.dll
		Product name: Microsoft® .NET Framework
		Product version: 4.8.9075.0
		Company: Microsoft Corporation

	Name: HID.DLL
		Base address: 0x00007ffb7f320000
		Memory size: 0x0000e000
		Entry point address: 0x00007ffb7f322740
		File path: C:\WINDOWS\SYSTEM32\HID.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: MMDevApi.dll
		Base address: 0x00007ffb76630000
		Memory size: 0x0009d000
		Entry point address: 0x00007ffb76657a50
		File path: C:\WINDOWS\System32\MMDevApi.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: XAudio2_7.dll
		Base address: 0x00007ffaed650000
		Memory size: 0x0008b000
		Entry point address: 0x00007ffaed6c0650
		File path: C:\WINDOWS\system32\XAudio2_7.dll
		Product name: Microsoft® DirectX for Windows®
		Product version: 9.29.1962.0
		Company: Microsoft Corporation

	Name: AUDIOSES.DLL
		Base address: 0x00007ffb6a9f0000
		Memory size: 0x001e5000
		Entry point address: 0x00007ffb6aa48810
		File path: C:\WINDOWS\SYSTEM32\AUDIOSES.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: resourcepolicyclient.dll
		Base address: 0x00007ffb7e5e0000
		Memory size: 0x00015000
		Entry point address: 0x00007ffb7e5e5590
		File path: C:\WINDOWS\SYSTEM32\resourcepolicyclient.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: Windows.UI.dll
		Base address: 0x00007ffb6d8f0000
		Memory size: 0x00174000
		Entry point address: 0x00007ffb6d919750
		File path: C:\Windows\System32\Windows.UI.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: avrt.dll
		Base address: 0x00007ffb7ade0000
		Memory size: 0x0000b000
		Entry point address: 0x00007ffb7ade16d0
		File path: C:\WINDOWS\SYSTEM32\avrt.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: System.Core.ni.dll
		Base address: 0x00007ffb49790000
		Memory size: 0x00a86000
		Entry point address: 0x0000000000000000
		File path: C:\WINDOWS\assembly\NativeImages_v4.0.30319_64\System.Core\990501e6199819806f01c8ecac88baac\System.Core.ni.dll
		Product name: Microsoft® .NET Framework
		Product version: 4.8.9139.0
		Company: Microsoft Corporation

	Name: System.Xml.ni.dll
		Base address: 0x00007ffb6b720000
		Memory size: 0x008b0000
		Entry point address: 0x0000000000000000
		File path: C:\WINDOWS\assembly\NativeImages_v4.0.30319_64\System.Xml\f0078c8c05b31633e5966c5629e65602\System.Xml.ni.dll
		Product name: Microsoft® .NET Framework
		Product version: 4.8.9032.0
		Company: Microsoft Corporation

	Name: System.Configuration.ni.dll
		Base address: 0x00007ffb6c800000
		Memory size: 0x00133000
		Entry point address: 0x0000000000000000
		File path: C:\WINDOWS\assembly\NativeImages_v4.0.30319_64\System.Configuration\2a25b59872a72da9b55f952ab1b0bc8b\System.Configuration.ni.dll
		Product name: Microsoft® .NET Framework
		Product version: 4.8.9032.0
		Company: Microsoft Corporation

	Name: comctl32.dll
		Base address: 0x00007ffb68e60000
		Memory size: 0x0028e000
		Entry point address: 0x00007ffb68e85180
		File path: C:\WINDOWS\WinSxS\amd64_microsoft.windows.common-controls_6595b64144ccf1df_6.0.22621.608_none_a9444ca7c10bb01d\comctl32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: gdiplus.dll
		Base address: 0x00007ffb690f0000
		Memory size: 0x001b9000
		Entry point address: 0x00007ffb6914d9d0
		File path: C:\WINDOWS\WinSxS\amd64_microsoft.windows.gdiplus_6595b64144ccf1df_1.1.22621.819_none_da30437f1b9d3de1\gdiplus.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.819
		Company: Microsoft Corporation

	Name: DWrite.dll
		Base address: 0x00007ffb7c970000
		Memory size: 0x00267000
		Entry point address: 0x00007ffb7c9fd8a0
		File path: C:\WINDOWS\SYSTEM32\DWrite.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: WindowsCodecs.dll
		Base address: 0x00007ffb7c7c0000
		Memory size: 0x001b0000
		Entry point address: 0x00007ffb7c827ea0
		File path: C:\WINDOWS\SYSTEM32\WindowsCodecs.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: TextShaping.dll
		Base address: 0x00007ffb6b120000
		Memory size: 0x000b0000
		Entry point address: 0x00007ffb6b16c7e0
		File path: C:\WINDOWS\SYSTEM32\TextShaping.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: SlimDX.dll
		Base address: 0x0000000180000000
		Memory size: 0x00392000
		Entry point address: 0x00000001801358b4
		File path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\SlimDX.dll
		Product name: 
		Product version: 
		Company: 

	Name: MSVCR100.dll
		Base address: 0x0000000056b40000
		Memory size: 0x000d2000
		Entry point address: 0x0000000056b614e4
		File path: C:\WINDOWS\SYSTEM32\MSVCR100.dll
		Product name: Microsoft® Visual Studio® 2010
		Product version: 10.00.40219.325
		Company: Microsoft Corporation

	Name: MSVCP100.dll
		Base address: 0x0000000056aa0000
		Memory size: 0x00098000
		Entry point address: 0x0000000056ae71d0
		File path: C:\WINDOWS\SYSTEM32\MSVCP100.dll
		Product name: Microsoft® Visual Studio® 2010
		Product version: 10.00.40219.325
		Company: Microsoft Corporation

	Name: napinsp.dll
		Base address: 0x00007ffb4d2b0000
		Memory size: 0x00017000
		Entry point address: 0x00007ffb4d2b1610
		File path: C:\WINDOWS\system32\napinsp.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: pnrpnsp.dll
		Base address: 0x00007ffb4d290000
		Memory size: 0x0001b000
		Entry point address: 0x00007ffb4d292dd0
		File path: C:\WINDOWS\system32\pnrpnsp.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: DNSAPI.dll
		Base address: 0x00007ffb7f590000
		Memory size: 0x000f3000
		Entry point address: 0x00007ffb7f5c61a0
		File path: C:\WINDOWS\SYSTEM32\DNSAPI.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: winrnr.dll
		Base address: 0x00007ffb4d270000
		Memory size: 0x00011000
		Entry point address: 0x00007ffb4d271390
		File path: C:\WINDOWS\System32\winrnr.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: wshbth.dll
		Base address: 0x00007ffb784d0000
		Memory size: 0x00015000
		Entry point address: 0x00007ffb784d1400
		File path: C:\WINDOWS\system32\wshbth.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: nlansp_c.dll
		Base address: 0x00007ffb4d220000
		Memory size: 0x00021000
		Entry point address: 0x00007ffb4d221fc0
		File path: C:\WINDOWS\system32\nlansp_c.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: fwpuclnt.dll
		Base address: 0x00007ffb789d0000
		Memory size: 0x00083000
		Entry point address: 0x00007ffb789d74b0
		File path: C:\WINDOWS\System32\fwpuclnt.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: rasadhlp.dll
		Base address: 0x00007ffb69b30000
		Memory size: 0x0000a000
		Entry point address: 0x00007ffb69b314c0
		File path: C:\Windows\System32\rasadhlp.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: DPAPI.dll
		Base address: 0x00007ffb80790000
		Memory size: 0x0000a000
		Entry point address: 0x00007ffb80791890
		File path: C:\WINDOWS\SYSTEM32\DPAPI.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: socialclub.dll
		Base address: 0x00007ffada800000
		Memory size: 0x00be3000
		Entry point address: 0x00007ffadaba8944
		File path: C:\Program Files\Rockstar Games\Social Club\socialclub.dll
		Product name: Social Club
		Product version: 2.1.7.0
		Company: Take-Two Interactive Software, Inc.

	Name: chrome_elf.dll
		Base address: 0x00007ffaed6e0000
		Memory size: 0x00101000
		Entry point address: 0x00007ffaed75ce38
		File path: C:\Program Files\Rockstar Games\Social Club\chrome_elf.dll
		Product name: Chromium
		Product version: 85.0.4183.102
		Company: The Chromium Authors

	Name: libcef.dll
		Base address: 0x00007ffa9a100000
		Memory size: 0x0809f000
		Entry point address: 0x00007ffaa0961630
		File path: C:\Program Files\Rockstar Games\Social Club\libcef.dll
		Product name: Chromium Embedded Framework (CEF) Dynamic Link Library
		Product version: 85.3.9+gb045a6e+chromium-85.0.4183.102
		Company: 

	Name: COMDLG32.dll
		Base address: 0x00007ffb834a0000
		Memory size: 0x000f7000
		Entry point address: 0x00007ffb834e8af0
		File path: C:\WINDOWS\System32\COMDLG32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: UIAutomationCore.DLL
		Base address: 0x00007ffb441c0000
		Memory size: 0x00441000
		Entry point address: 0x00007ffb44270110
		File path: C:\WINDOWS\SYSTEM32\UIAutomationCore.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: NETAPI32.dll
		Base address: 0x00007ffb63610000
		Memory size: 0x00019000
		Entry point address: 0x00007ffb63611390
		File path: C:\WINDOWS\SYSTEM32\NETAPI32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.674
		Company: Microsoft Corporation

	Name: OLEACC.dll
		Base address: 0x00007ffb68d50000
		Memory size: 0x00069000
		Entry point address: 0x00007ffb68d5ffb0
		File path: C:\WINDOWS\SYSTEM32\OLEACC.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: COMCTL32.dll
		Base address: 0x00007ffb68c90000
		Memory size: 0x000b3000
		Entry point address: 0x00007ffb68d11800
		File path: C:\WINDOWS\WinSxS\amd64_microsoft.windows.common-controls_6595b64144ccf1df_5.82.22621.608_none_fb280a3c7926c2cc\COMCTL32.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: WINSPOOL.DRV
		Base address: 0x00007ffb68dc0000
		Memory size: 0x0009a000
		Entry point address: 0x00007ffb68dc44d0
		File path: C:\WINDOWS\SYSTEM32\WINSPOOL.DRV
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: USP10.dll
		Base address: 0x00007ffb46860000
		Memory size: 0x00019000
		Entry point address: 0x0000000000000000
		File path: C:\WINDOWS\SYSTEM32\USP10.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: dxva2.dll
		Base address: 0x00007ffb386c0000
		Memory size: 0x00025000
		Entry point address: 0x00007ffb386c6d40
		File path: C:\WINDOWS\SYSTEM32\dxva2.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: credui.dll
		Base address: 0x00007ffb23400000
		Memory size: 0x0001c000
		Entry point address: 0x00007ffb234017d0
		File path: C:\WINDOWS\SYSTEM32\credui.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1105
		Company: Microsoft Corporation

	Name: WINHTTP.dll
		Base address: 0x00007ffb78c40000
		Memory size: 0x0012f000
		Entry point address: 0x00007ffb78c93af0
		File path: C:\WINDOWS\SYSTEM32\WINHTTP.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: urlmon.dll
		Base address: 0x00007ffb6c2c0000
		Memory size: 0x001f0000
		Entry point address: 0x00007ffb6c34e500
		File path: C:\WINDOWS\SYSTEM32\urlmon.dll
		Product name: Internet Explorer
		Product version: 11.00.22621.1344
		Company: Microsoft Corporation

	Name: ncrypt.dll
		Base address: 0x00007ffb803b0000
		Memory size: 0x0002d000
		Entry point address: 0x00007ffb803b5880
		File path: C:\WINDOWS\SYSTEM32\ncrypt.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: CRYPTUI.dll
		Base address: 0x00007ffb5e100000
		Memory size: 0x0005a000
		Entry point address: 0x00007ffb5e101f50
		File path: C:\WINDOWS\SYSTEM32\CRYPTUI.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: wevtapi.dll
		Base address: 0x00007ffb79f50000
		Memory size: 0x00054000
		Entry point address: 0x00007ffb79f64ac0
		File path: C:\WINDOWS\SYSTEM32\wevtapi.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: ESENT.dll
		Base address: 0x00007ffb5f1d0000
		Memory size: 0x003c6000
		Entry point address: 0x00007ffb5f2790b0
		File path: C:\WINDOWS\SYSTEM32\ESENT.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: srvcli.dll
		Base address: 0x00007ffb6bfd0000
		Memory size: 0x00028000
		Entry point address: 0x00007ffb6bfd2010
		File path: C:\WINDOWS\SYSTEM32\srvcli.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: iertutil.dll
		Base address: 0x00007ffb6c000000
		Memory size: 0x002b1000
		Entry point address: 0x00007ffb6c032ca0
		File path: C:\WINDOWS\SYSTEM32\iertutil.dll
		Product name: Internet Explorer
		Product version: 11.00.22621.1
		Company: Microsoft Corporation

	Name: netutils.dll
		Base address: 0x00007ffb7f700000
		Memory size: 0x0000c000
		Entry point address: 0x00007ffb7f701530
		File path: C:\WINDOWS\SYSTEM32\netutils.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.674
		Company: Microsoft Corporation

	Name: WKSCLI.DLL
		Base address: 0x00007ffb78530000
		Memory size: 0x0001a000
		Entry point address: 0x00007ffb78531cd0
		File path: C:\WINDOWS\SYSTEM32\WKSCLI.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.674
		Company: Microsoft Corporation

	Name: SAMCLI.DLL
		Base address: 0x00007ffb70120000
		Memory size: 0x00019000
		Entry point address: 0x00007ffb70124290
		File path: C:\WINDOWS\SYSTEM32\SAMCLI.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: NTASN1.dll
		Base address: 0x00007ffb80370000
		Memory size: 0x00037000
		Entry point address: 0x00007ffb80371560
		File path: C:\WINDOWS\SYSTEM32\NTASN1.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: FirewallAPI.dll
		Base address: 0x00007ffb7f410000
		Memory size: 0x000a5000
		Entry point address: 0x00007ffb7f41f300
		File path: C:\Windows\System32\FirewallAPI.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: fwbase.dll
		Base address: 0x00007ffb7f3a0000
		Memory size: 0x00038000
		Entry point address: 0x00007ffb7f3a8840
		File path: C:\Windows\System32\fwbase.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1194
		Company: Microsoft Corporation

	Name: FWPolicyIOMgr.dll
		Base address: 0x00007ffb63f20000
		Memory size: 0x0005a000
		Entry point address: 0x00007ffb63f2d850
		File path: C:\Windows\System32\FWPolicyIOMgr.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1194
		Company: Microsoft Corporation

	Name: wdmaud.drv
		Base address: 0x00007ffb600e0000
		Memory size: 0x00046000
		Entry point address: 0x00007ffb600e7bb0
		File path: C:\WINDOWS\SYSTEM32\wdmaud.drv
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: ksuser.dll
		Base address: 0x00007ffb66e50000
		Memory size: 0x00009000
		Entry point address: 0x00007ffb66e51400
		File path: C:\WINDOWS\SYSTEM32\ksuser.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: msacm32.drv
		Base address: 0x00007ffb64060000
		Memory size: 0x0000e000
		Entry point address: 0x00007ffb64061440
		File path: C:\WINDOWS\SYSTEM32\msacm32.drv
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: midimap.dll
		Base address: 0x00007ffb64050000
		Memory size: 0x0000b000
		Entry point address: 0x00007ffb64051920
		File path: C:\WINDOWS\SYSTEM32\midimap.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: ondemandconnroutehelper.dll
		Base address: 0x00007ffb7d660000
		Memory size: 0x00017000
		Entry point address: 0x00007ffb7d661a90
		File path: C:\WINDOWS\SYSTEM32\ondemandconnroutehelper.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: CoreUIComponents.dll
		Base address: 0x00007ffb79740000
		Memory size: 0x0036c000
		Entry point address: 0x00007ffb797d8c90
		File path: C:\WINDOWS\SYSTEM32\CoreUIComponents.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.608
		Company: Microsoft Corporation

	Name: schannel.DLL
		Base address: 0x00007ffb7f9e0000
		Memory size: 0x000a9000
		Entry point address: 0x00007ffb7fa0c0f0
		File path: C:\WINDOWS\system32\schannel.DLL
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

	Name: ncryptsslp.dll
		Base address: 0x00007ffb5e740000
		Memory size: 0x00027000
		Entry point address: 0x00007ffb5e748d30
		File path: C:\WINDOWS\system32\ncryptsslp.dll
		Product name: Microsoft® Windows® Operating System
		Product version: 10.0.22621.1
		Company: Microsoft Corporation

Environment:
	TickCount: 82647437
	ExitCode: 0
	CommandLine: "C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe" -scOnlineOnly-disableCustomLoadingScreen -fullscreen-disableCustomLoadingScreen-disableCustomLoadingScreen-disableCustomLoadingScreen -fullscreen-disableCustomLoadingScreen -fullscreen -skipPatcherCheck @commandline.txt -enableCrashpad -useSteam -steamAppId=271590 -scCommerceProvider=4 -scUseFQDNAvatars
	CurrentDirectory: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V
	SystemDirectory: C:\WINDOWS\system32
	MachineName: DESKTOP-272N3C2
	ProcessorCount: 16
	SystemPageSize: 4096
	Version: 4.0.30319.42000
	WorkingSet: 2041815040
	OSVersion: Microsoft Windows NT 6.2.9200.0
	Is64BitProcess: True
	Is64BitOperatingSystem: True
	HasShutdownStarted: False
	UserName: Isael
	UserInteractive: True
	UserDomainName: DESKTOP-272N3C2
	CurrentManagedThreadId: 5

Process list:
	Steam Client WebHelper 01.00.00.01 by Valve Corporation (C:\Program Files (x86)\Steam\bin\cef\cef.win7x64\steamwebhelper.exe)
	Entertainment Platform 10.22091.100300000-2209 by Microsoft Corporation (C:\Program Files\WindowsApps\Microsoft.ZuneVideo_10.22091.10031.0_x64__8wekyb3d8bbwe\Video.UI.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\conhost.exe)
	Microsoft Edge WebView2 111.0.1661.62 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\EdgeWebView\Application\111.0.1661.62\msedgewebview2.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\svchost.exe)
	Microsoft Photos 2023.11010.17009.0 by Microsoft Corporation (C:\Program Files\WindowsApps\Microsoft.Windows.Photos_2023.11010.17009.0_x64__8wekyb3d8bbwe\PhotosApp.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft® Windows® Operating System 623.1701.10.0 by Microsoft Corporation (C:\WINDOWS\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\SearchHost.exe)
	Xbox Game Bar 5.823.01271.0 by Microsoft Corporation (C:\Program Files\WindowsApps\Microsoft.XboxGamingOverlay_5.823.1271.0_x64__8wekyb3d8bbwe\GameBar.exe)
	Microsoft OneDrive 23.061.0319.0003 by Microsoft Corporation (C:\Users\Isael\AppData\Local\Microsoft\OneDrive\OneDrive.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\svchost.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\svchost.exe)
	Microsoft® Windows® Operating System 10.0.22621.608 by Microsoft Corporation (C:\Windows\System32\RuntimeBroker.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft® Windows® Operating System 10.0.22621.608 by Microsoft Corporation (C:\Windows\System32\SecurityHealthSystray.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\svchost.exe)
	Steam Client WebHelper 01.00.00.01 by Valve Corporation (C:\Program Files (x86)\Steam\bin\cef\cef.win7x64\steamwebhelper.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft® Windows® Operating System 10.0.22621.1344 by Microsoft Corporation (C:\Windows\ImmersiveControlPanel\SystemSettings.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Steam Client WebHelper 01.00.00.01 by Valve Corporation (C:\Program Files (x86)\Steam\bin\cef\cef.win7x64\steamwebhelper.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\cmd.exe)
	Voicemod.VoicemodDesktop 2.39.2.0 by Voicemod (C:\Program Files\Voicemod Desktop\VoicemodDesktop.exe)
	Google Chrome 111.0.5563.147 by Google LLC (C:\Program Files\Google\Chrome\Application\chrome.exe)
	Microsoft Edge WebView2 111.0.1661.62 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\EdgeWebView\Application\111.0.1661.62\msedgewebview2.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\svchost.exe)
	Microsoft Your Phone 1.23022.140.0 by Microsoft Corporation (C:\Program Files\WindowsApps\Microsoft.YourPhone_1.23022.140.0_x64__8wekyb3d8bbwe\PhoneExperienceHost.exe)
	Razer Synapse Service Process 1.0.0.0 by  (C:\Program Files (x86)\Razer\Synapse3\Service\..\UserProcess\Razer Synapse Service Process.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\svchost.exe)
	Microsoft Edge WebView2 111.0.1661.62 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\EdgeWebView\Application\111.0.1661.62\msedgewebview2.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft® Windows® Operating System 10.0.22621.608 by Microsoft Corporation (C:\Windows\System32\RuntimeBroker.exe)
	  by  (C:\Program Files\Rockstar Games\Launcher\ThirdParty\Crashpad\RockstarErrorHandler.exe)
	Discord 1.0.9012 by Discord Inc. (C:\Users\Isael\AppData\Local\Discord\app-1.0.9012\Discord.exe)
	Social Club UI 2.1.7.0 by Take-Two Interactive Software, Inc. (C:\Program Files\Rockstar Games\Social Club\SocialClubHelper.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\DllHost.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Overwolf 0.221.0.4 by Overwolf LTD (C:\Program Files (x86)\Overwolf\0.221.0.4\OverwolfBrowser.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Discord 1.0.9012 by Discord Inc. (C:\Users\Isael\AppData\Local\Discord\app-1.0.9012\Discord.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\svchost.exe)
	Microsoft® Windows® Operating System 10.0.22621.608 by Microsoft Corporation (C:\Windows\System32\RuntimeBroker.exe)
	Discord 1.0.9012 by Discord Inc. (C:\Users\Isael\AppData\Local\Discord\app-1.0.9012\Discord.exe)
	Microsoft® Windows® Operating System 10.0.22621.1413 by Microsoft Corporation (C:\Windows\SystemApps\Microsoft.LockApp_cw5n1h2txyewy\LockApp.exe)
	Microsoft® Windows® Operating System 10.0.22621.1344 by Microsoft Corporation (C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\StartMenuExperienceHost.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Google Chrome 111.0.5563.147 by Google LLC (C:\Program Files\Google\Chrome\Application\chrome.exe)
	Overwolf 0.221.0.4 by Overwolf LTD (C:\Program Files (x86)\Overwolf\Overwolf.exe)
	Microsoft Edge WebView2 111.0.1661.62 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\EdgeWebView\Application\111.0.1661.62\msedgewebview2.exe)
	Steam Client WebHelper 01.00.00.01 by Valve Corporation (C:\Program Files (x86)\Steam\bin\cef\cef.win7x64\steamwebhelper.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Google Chrome 111.0.5563.147 by Google LLC (C:\Program Files\Google\Chrome\Application\chrome.exe)
	Microsoft® Windows® Operating System 10.0.22621.608 by Microsoft Corporation (C:\Windows\System32\RuntimeBroker.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\svchost.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft OneDrive 23.061.0319.0003 by Microsoft Corporation (C:\Users\Isael\AppData\Local\Microsoft\OneDrive\23.061.0319.0003\FileCoAuth.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\sihost.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\DllHost.exe)
	Overwolf 0.221.0.4 by Overwolf LTD (C:\Users\Isael\AppData\Local\Overwolf\ProcessCache\0.221.0.4\cchhcaiapeikjbdbpfplgmpobbcdkdaphclbmkbj\curseforge.exe)
	Social Club UI 2.1.7.0 by Take-Two Interactive Software, Inc. (C:\Program Files\Rockstar Games\Social Club\SocialClubHelper.exe)
	Google Chrome 111.0.5563.147 by Google LLC (C:\Program Files\Google\Chrome\Application\chrome.exe)
	Steam 03.00.00.01 by Valve Corporation (C:\Program Files (x86)\Steam\GameOverlayUI.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Discord 1.0.9012 by Discord Inc. (C:\Users\Isael\AppData\Local\Discord\app-1.0.9012\Discord.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Java Platform SE Auto Updater 2.8.341.10 by Oracle Corporation (C:\Program Files (x86)\Common Files\Java\Java Update\jucheck.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\conhost.exe)
	Node.js 11.13.0 by Node.js (C:\Program Files (x86)\NVIDIA Corporation\NvNode\NVIDIA Web Helper.exe)
	Overwolf 0.221.0.4 by Overwolf LTD (C:\Program Files (x86)\Overwolf\0.221.0.4\OverwolfBrowser.exe)
	Overwolf 0.221.0.4 by Overwolf LTD (C:\Users\Isael\AppData\Local\Overwolf\ProcessCache\0.221.0.4\oldfhfbggeglgjgenidckaneodejpjkaggklojma\OverwolfBrowser.exe)
	Microsoft® Windows® Operating System 421.20070.1500.0 by Microsoft Corporation (C:\Program Files\WindowsApps\MicrosoftWindows.Client.WebExperience_423.8900.0.0_x64__cw5n1h2txyewy\Dashboard\Widgets.exe)
	Java Platform SE Auto Updater 2.8.341.10 by Oracle Corporation (C:\Program Files (x86)\Common Files\Java\Java Update\jusched.exe)
	  by  (C:\Program Files\WindowsApps\SpotifyAB.SpotifyMusic_1.208.923.0_x86__zpdnekdrzrea0\SpotifyWidgetProvider.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft® Windows® Operating System 623.1701.0.0 by Microsoft Corporation (C:\WINDOWS\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\TextInputHost.exe)
	Microsoft Edge WebView2 111.0.1661.62 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\EdgeWebView\Application\111.0.1661.62\msedgewebview2.exe)
	Microsoft Edge WebView2 111.0.1661.62 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\EdgeWebView\Application\111.0.1661.62\msedgewebview2.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\svchost.exe)
	Social Club UI 2.1.7.0 by Take-Two Interactive Software, Inc. (C:\Program Files\Rockstar Games\Social Club\SocialClubHelper.exe)
	Discord 1.0.9012 by Discord Inc. (C:\Users\Isael\AppData\Local\Discord\app-1.0.9012\Discord.exe)
	Taskbar system 1.0.0.2 by  (C:\Users\Isael\AppData\Local\Programs\Taskbar system\TaskbarSystem.exe)
	Malwarebytes 4.0.0.122 by Malwarebytes (C:\PROGRAM FILES\MALWAREBYTES\ANTI-MALWARE\MbamBgNativeMsg.exe)
	Social Club UI 2.1.7.0 by Take-Two Interactive Software, Inc. (C:\Program Files\Rockstar Games\Social Club\SocialClubHelper.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\Explorer.EXE)
	Microsoft® Windows® Operating System 10.0.22621.608 by Microsoft Corporation (C:\WINDOWS\system32\ApplicationFrameHost.exe)
	Microsoft Photos 2023.11010.17009.0 by Microsoft Corporation (C:\Program Files\WindowsApps\Microsoft.Windows.Photos_2023.11010.17009.0_x64__8wekyb3d8bbwe\PhotosService\PhotosService.exe)
	Google Chrome 111.0.5563.147 by Google LLC (C:\Program Files\Google\Chrome\Application\chrome.exe)
	Steam Client WebHelper 01.00.00.01 by Valve Corporation (C:\Program Files (x86)\Steam\bin\cef\cef.win7x64\steamwebhelper.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft® Windows® Operating System 10.0.22621.608 by Microsoft Corporation (C:\Windows\System32\RuntimeBroker.exe)
	Grand Theft Auto V 1.0.2845.0 by Rockstar Games (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe)
	  by  (C:\Program Files\WindowsApps\SpotifyAB.SpotifyMusic_1.208.923.0_x86__zpdnekdrzrea0\XboxGameBarSpotify.exe)
	Microsoft Photos 2023.11010.17009.0 by Microsoft Corporation (C:\Program Files\WindowsApps\Microsoft.Windows.Photos_2023.11010.17009.0_x64__8wekyb3d8bbwe\PhotosService\PhotosService.exe)
	Microsoft Edge WebView2 111.0.1661.62 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\EdgeWebView\Application\111.0.1661.62\msedgewebview2.exe)
	Google Chrome 111.0.5563.147 by Google LLC (C:\Program Files\Google\Chrome\Application\chrome.exe)
	Overwolf 0.221.0.4 by Overwolf LTD (C:\Program Files (x86)\Overwolf\0.221.0.4\OverwolfBrowser.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Proton VPN 2.3.2-8bf7f2cf by ProtonVPN (C:\Program Files (x86)\Proton Technologies\ProtonVPN\ProtonVPN.exe)
	Microsoft® Windows® Operating System 10.0.22621.608 by Microsoft Corporation (C:\Windows\System32\RuntimeBroker.exe)
	Microsoft® Windows® Operating System 10.0.22621.608 by Microsoft Corporation (C:\Windows\System32\RuntimeBroker.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Steam Client WebHelper 01.00.00.01 by Valve Corporation (C:\Program Files (x86)\Steam\bin\cef\cef.win7x64\steamwebhelper.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft Edge WebView2 111.0.1661.62 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\EdgeWebView\Application\111.0.1661.62\msedgewebview2.exe)
	  by  (C:\Program Files\WindowsApps\MicrosoftWindows.Client.WebExperience_423.8900.0.0_x64__cw5n1h2txyewy\Dashboard\widgetservice.exe)
	Malwarebytes Tray Application  by Malwarebytes (C:\Program Files\Malwarebytes\Anti-Malware\mbamtray.exe)
	Steam Client WebHelper 01.00.00.01 by Valve Corporation (C:\Program Files (x86)\Steam\bin\cef\cef.win7x64\steamwebhelper.exe)
	Rockstar Games Launcher Redirector 1.0.0.56 by Rockstar Games (C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\PlayGTAV.exe)
	Microsoft Edge WebView2 111.0.1661.62 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\EdgeWebView\Application\111.0.1661.62\msedgewebview2.exe)
	Steam 01.00.00.02 by Valve Corporation (C:\Program Files (x86)\Steam\steam.exe)
	Steam Client WebHelper 01.00.00.01 by Valve Corporation (C:\Program Files (x86)\Steam\bin\cef\cef.win7x64\steamwebhelper.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\conhost.exe)
	Microsoft® Windows® Operating System 10.0.22621.608 by Microsoft Corporation (C:\Windows\System32\RuntimeBroker.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\svchost.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\taskhostw.exe)
	Microsoft® Windows® Operating System 10.0.22621.1105 by Microsoft Corporation (C:\Windows\System32\oobe\UserOOBEBroker.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\Windows\System32\smartscreen.exe)
	Microsoft® Windows® Operating System 10.0.22621.608 by Microsoft Corporation (C:\Windows\System32\RuntimeBroker.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Google Chrome 111.0.5563.147 by Google LLC (C:\Program Files\Google\Chrome\Application\chrome.exe)
	Microsoft® Windows® Operating System 10.0.22621.608 by Microsoft Corporation (C:\Windows\System32\RuntimeBroker.exe)
	Microsoft Edge WebView2 111.0.1661.62 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\EdgeWebView\Application\111.0.1661.62\msedgewebview2.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\system32\svchost.exe)
	Steam Client WebHelper 01.00.00.01 by Valve Corporation (C:\Program Files (x86)\Steam\bin\cef\cef.win7x64\steamwebhelper.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\WINDOWS\System32\LocationNotificationWindows.exe)
	Discord 1.0.9012 by Discord Inc. (C:\Users\Isael\AppData\Local\Discord\app-1.0.9012\Discord.exe)
	Microsoft® Windows® Operating System 10.0.22621.1 by Microsoft Corporation (C:\Windows\System32\GameBarPresenceWriter.exe)
	Microsoft Edge WebView2 111.0.1661.62 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\EdgeWebView\Application\111.0.1661.62\msedgewebview2.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Rockstar Games Launcher 1.0.71.1428 by Rockstar Games (C:\Program Files\Rockstar Games\Launcher\Launcher.exe)
	Microsoft OneNote 16.0.14326.21384 by Microsoft Corporation (C:\Program Files\WindowsApps\Microsoft.Office.OneNote_16001.14326.21386.0_x64__8wekyb3d8bbwe\onenoteim.exe)
	Google Chrome 111.0.5563.147 by Google LLC (C:\Program Files\Google\Chrome\Application\chrome.exe)
	Microsoft Edge 112.0.1722.34 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe)
	Microsoft Edge WebView2 111.0.1661.62 by Microsoft Corporation (C:\Program Files (x86)\Microsoft\EdgeWebView\Application\111.0.1661.62\msedgewebview2.exe)
	Xbox Game Bar 5.823.01271.0 by Microsoft Corporation (C:\Program Files\WindowsApps\Microsoft.XboxGamingOverlay_5.823.1271.0_x64__8wekyb3d8bbwe\GameBarFTServer.exe)
	Microsoft® Windows® Operating System 10.0.22621.900 by Microsoft Corporation (C:\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy\ShellExperienceHost.exe)
	  by  (C:\Program Files\NVIDIA Corporation\NvContainer\nvcontainer.exe)

File list: 
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\AdvancedHookV.dll *bd542a136d36305f76ec7d8e74c97436
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\AdvancedHookV.log *3b0478048af3dc5b691732194120e023
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Albo1125.Common.dll *8bff6ea79f6ce8a855387409b610cef5
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\asiloader.log *00e69213cfd19cf8f9e46ae12e18c1c2
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\bass.dll *bad0d33c7e0d150ddf9835cd8c373ea5
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\bink2w64.dll *3722f03c488093cb2631b5412d4f12d9
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ClearTheWayV.dll *e031e18c7fd868b97e920735ff6a044a
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\commandline.txt *db80b1e9e98cb61059af4e161f9df9fb
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\common.rpf *bbe724acef5f9fcfd85a38c4e35e2f00
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\CrashReport_Isael_638165835996197451.rcr *b1a88207bc9e40777a304b0d402170a5
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\cursor_32_2.png *be981c7e1461188450c1bc0352aee019
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\d3dcompiler_46.dll *7ea872c2f9803cfb4223098b85e70cc0
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\d3dcsx_46.dll *8355e491fa90ca00045be22bb556b213
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\DdsConvert.dll *65e684e0fd64493392436cb92617ceb0
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\DefaultSkin.png *a7562ebd9a7c54a6575808da4680caf3
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\dinput8.dll *c9b973183908a6631b31ca29f863b4d1
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Disarm.dll *863bb8616a40358e218f7e9c02c6eddb
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\discord-rpc.dll *5882c37b79bae47a0d090006564edb22
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\DiscordRpcNet.dll *65c8b3ac6205985288c4ee507481cddc
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\EasyHook.dll *163e0d2a3cccaa53f16bf5d41721730e
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\EasyHook64.dll *2d7a7ddd6f7ebf32543d851d9a55f60b
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\EasyLoad64.dll *0ee88c5ca0bcfdf02290f4b87f8b9a7e
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ELS.asi *8a3a156befdec3aaeeaef410880ac8fe
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ELS.ini *a0376719f8ef0e8f346ee6cd12d55dba
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ELS.log *2c5db78330d03d0b79d3b6389841efda
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\FW1FontWrapper.dll *daa32fd4ee493fc1fdf0b66991868ef4
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GameBackups.rph *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\gameconfig.xml *f0be9a083fd6deb94303dab738d5ebe3
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GFSDK_ShadowLib.win64.dll *f2c348c5aaff0c420f4dce3abc1bbad6
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GFSDK_TXAA.win64.dll *167385d13443035ff68643b2c0c59a4d
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GFSDK_TXAA_AlphaResolve.win64.dll *ea04393624856f44854cace25b50ce3c
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GPUPerfAPIDX11-x64.dll *121044fe4ae47114dfccd15e399df399
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTA5.exe *73e6a700321b822cbb6b9e2f31be669c
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTAVLanguageSelect.exe *994ff22cd3d965ce9cc7211c1f5126dd
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\GTAVLauncher.exe *994ff22cd3d965ce9cc7211c1f5126dd
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Gwen.dll *367a1b17121dfc7c2347984380939bc2
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Gwen.UnitTest.dll *90b34cfce1f4caba67f42f4d8f135189
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\hashes.ini *a6d892dad755f62278c44b02ce6f2479
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\installscript.vdf *982887e5f7c67a04cb729b39801fbad7
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\LMS.Common.dll *61dfccfc5509df7e88bc4ab7eab982e1
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\LMS.PortableExecutable.dll *6a52fa924073b0f913855f070dc553a7
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\lspdfr_uinst.exe *8e66043791a0f0408c3064916b7cba0d
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\LUA.asi *4f5175c0b079cfd979936cc4b7516bf7
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Microsoft.Expression.Drawing.dll *5bd39a82aacf1aa423e6eeeeda696eea
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Microsoft.VisualStudio.QualityTools.UnitTestFramework.dll *660103c9ffbd699916d054beeb186bb6
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Mono.Cecil.dll *6d6292bc8e698e53e69556add6f62442
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Mono.Cecil.Mdb.dll *3c6cff9ef0ba7748d6c61dfacb6890a7
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Mono.Cecil.Pdb.dll *c7a0b5173df5bea531a20fbace30fc89
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Mono.Cecil.Rocks.dll *7c9a0c59ce05aba61485eb46883ba933
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\More Gore.dll *d93f631705c8708607699ef7ad514274
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\NativeTrainer.asi *e107b94ae23ec9a56bfa1faaf7118e85
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\NvPmApi.Core.win64.dll *2041025c15e6ff893dcbb5ed63fdb2f8
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\openCameraV.asi *33864c75d1b85563da56aff0ea794267
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\openCameraV.log *c33e527eabf2eea82afc4101ec04b685
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\OpenIV.asi *ef3de847eac7ba336e2d83ba96a8d61d
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\OpenIV.log *64e2f0873ed30b8412771e828242dccb
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\PedConversation.ini *ed754ec9c2bbd081424bde2fa191c75c
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\PedConversation1.1.asi *4f58a35e8c7cb8b02281c98e2251cb51
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\PlayGTAV.exe *994ff22cd3d965ce9cc7211c1f5126dd
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\RAGENativeUI.dll *c4ceae96f696d5ef09dc106ebffc6e4a
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\RAGENativeUI.xml *7be296761e9d4b35681cc8aa69988a91
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\RAGEPluginHook.exe *ef0bd547dac16aadac67ff612c9dccf2
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\RagePluginHook.ini *a857c961f87bd85b47c1680f07807d0b
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\RagePluginHook.log *466d814a23ccf425260cf1c04a9e69c0
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ResourceAdjuster.ini *a428694703102d36f59840e2b180bfc4
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\RPH_Readme.txt *7b081efb3e794533b99a7c15807ed09a
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ScriptHookV.dll *d47ecfd957e664826c9e5ad0b4605050
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ScriptHookV.log *707361b3d7cb7b819498669d46b27eda
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Skin Control.asi *dc180529c9f9f8b91acf060f2d3a72d6
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Skin Control.ini *e19b1d1e97a30c241ebe2fffa299ab3d
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\SlimDX.dll *5c243b42d2b0103bbe603cf586ea8467
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Spikes.asi *16030554a932d97693e5bf375445dea4
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Spikes.ini *5775238b3046366895953855c46bea5c
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\Spotlight.dll *a623c09e5c4f77e7b5169b9ada77a121
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\startup.rphs *9208de4076134a65553a550e4e4af8ab
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\steam_api64.dll *cac66a8487a2ef6d3b1b8a66c20d1c12
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\System.ValueTuple.dll *4be8f58e6a00f0130f051f444987d217
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\version.txt *eb0ec566293a46f64f522242687722cb
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64a.rpf *edfbe6855ec32a21a698abc27a899341
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64b.rpf *70af24cd4fe2c8ee58edb902f018a558
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64c.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64d.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64e.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64f.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64g.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64h.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64i.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64j.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64k.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64l.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64m.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64n.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64o.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64p.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64q.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64r.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64s.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64t.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64u.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64v.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\x64w.rpf *Unknown
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\XInput1_4.dll *d2ef25dff3e2ad78f89a527101767707
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ZMenu.h *f3b03c8a64d9098d0a7b3905bac325ba
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ZMenuLog.txt *d41d8cd98f00b204e9800998ecf8427e
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ZMenuV.asi *e86975bb1cfa03c59fd57c4154d4e6f0
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ZMenuV.ini *5db24555d16403abc0dcc66903d7ec8b
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\ZMenuV.lib *a85222f85744c74ef36e7f04eb266fbf
	C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\zmods_twitch.dll *5e4909fa15a5a771ad8bbf568d370830

Latest log:
4/8/2023 1:48:10 PM.274] Started new log on 4/8/2023 1:48:10 PM.274
[4/8/2023 1:48:10 PM.275] ====================================================================================================
[4/8/2023 1:48:10 PM.269] Log path: C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V\RagePluginHook.log
[4/8/2023 1:48:10 PM.275] Log verbosity: Trivial
[4/8/2023 1:48:10 PM.278] Initializing input system
[4/8/2023 1:48:10 PM.280] Initializing game console
[4/8/2023 1:48:10 PM.286] Console key has been set to F4 (key code: 115)
[4/8/2023 1:48:10 PM.341] Initializing console variable "ConsoleScrollAmount".
[4/8/2023 1:48:10 PM.605] Type: System.Int32, Reading section: "Miscellaneous", key: ConsoleScrollAmount
[4/8/2023 1:48:10 PM.607] Read value: <null>
[4/8/2023 1:48:10 PM.607] Initializing console variable "ConsoleKey".
[4/8/2023 1:48:10 PM.607] Type: System.Windows.Forms.Keys, Reading section: "Miscellaneous", key: ConsoleKey
[4/8/2023 1:48:10 PM.608] Read value: F4
[4/8/2023 1:48:10 PM.608] Setting value of console variable "ConsoleKey" to stored value.
[4/8/2023 1:48:10 PM.608] Console key has been set to F4 (key code: 115)
[4/8/2023 1:48:10 PM.608] Initializing console variable "PluginTimeoutThreshold".
[4/8/2023 1:48:10 PM.608] Type: System.Int32, Reading section: "Miscellaneous", key: PluginTimeoutThreshold
[4/8/2023 1:48:10 PM.610] Read value: 60000
[4/8/2023 1:48:10 PM.610] Setting value of console variable "PluginTimeoutThreshold" to stored value.
[4/8/2023 1:48:10 PM.610] Initializing console variable "AlwaysShowConsoleOutput".
[4/8/2023 1:48:10 PM.610] Type: System.Boolean, Reading section: "Miscellaneous", key: AlwaysShowConsoleOutput
[4/8/2023 1:48:10 PM.611] Read value: <null>
[4/8/2023 1:48:10 PM.611] Initializing console variable "ShowConsoleCommandInfoOnPluginLoad".
[4/8/2023 1:48:10 PM.611] Type: System.Boolean, Reading section: "Miscellaneous", key: ShowConsoleCommandInfoOnPluginLoad
[4/8/2023 1:48:10 PM.611] Read value: False
[4/8/2023 1:48:10 PM.611] Setting value of console variable "ShowConsoleCommandInfoOnPluginLoad" to stored value.
[4/8/2023 1:48:10 PM.611] Initializing console variable "ShowOnScreenWarnings".
[4/8/2023 1:48:10 PM.611] Type: System.Boolean, Reading section: "Miscellaneous", key: ShowOnScreenWarnings
[4/8/2023 1:48:10 PM.612] Read value: <null>
[4/8/2023 1:48:10 PM.612] Console initialized
[4/8/2023 1:48:10 PM.612] Initializing forms manager
[4/8/2023 1:48:10 PM.614] Cleaning temp folder
[4/8/2023 1:48:10 PM.615] Version: RAGE Plugin Hook v1.104.1327.16500 for Grand Theft Auto V
[4/8/2023 1:48:10 PM.620] ================ RAGE Plugin Hook ================
[4/8/2023 1:48:10 PM.623] Command line option "scOnlineOnly-disableCustomLoadingScreen" is specified twice. Please remove one.
[4/8/2023 1:48:10 PM.623] Command line option "fullscreen-disableCustomLoadingScreen-disableCustomLoadingScreen-disableCustomLoadingScreen" is specified twice. Please remove one.
[4/8/2023 1:48:10 PM.623] Command line option "fullscreen-disableCustomLoadingScreen" is specified twice. Please remove one.
[4/8/2023 1:48:10 PM.623] Command line option "fullscreen-disableCustomLoadingScreen" is specified twice. Please remove one.
[4/8/2023 1:48:10 PM.623] Command line option "fullscreen" is specified twice. Please remove one.
[4/8/2023 1:48:10 PM.626] Detected Windows 10 Professional (64-bit) (10.0.22621.0)!
[4/8/2023 1:48:10 PM.627] Checking game support
[4/8/2023 1:48:10 PM.749] Product name: Grand Theft Auto V
[4/8/2023 1:48:10 PM.749] Product version: 1.0.2845.0
[4/8/2023 1:48:10 PM.749] Is steam version: True
[4/8/2023 1:48:10 PM.750] Initializing DirectX
[4/8/2023 1:48:10 PM.751] Initializing Direct3D
[4/8/2023 1:48:10 PM.751] Getting game swap chain
[4/8/2023 1:48:10 PM.774] Swap Chain created: 0x7FF6242441D0
[4/8/2023 1:48:10 PM.774] Swap Chain VTable: 0x1AAC8F62A40
[4/8/2023 1:48:10 PM.774] 0x575655F1B9BEE5E9;0xEC8148B9246C8D48;0x65058B4800000090
[4/8/2023 1:48:10 PM.774] D3D11Present: 0x7FFB7E1A42E0
[4/8/2023 1:48:10 PM.774] D3D11ResizeBuffers: 0x7FFB7E193840
[4/8/2023 1:48:10 PM.774] D3D11ResizeTarget: 0x7FFB7E1E53E0
[4/8/2023 1:48:10 PM.774] D3D11SetFullscreenState: 0x7FFB7E193EA0
[4/8/2023 1:48:10 PM.774] Getting device
[4/8/2023 1:48:10 PM.774] Retrieved device
[4/8/2023 1:48:10 PM.774] Creating wrapper
[4/8/2023 1:48:10 PM.774] Direct3D initialized
[4/8/2023 1:48:10 PM.774] Initialized DirectX
[4/8/2023 1:48:10 PM.775] Direct3D watcher thread spawned
[4/8/2023 1:48:10 PM.817] Wrapper created
[4/8/2023 1:48:10 PM.819] Effect created
[4/8/2023 1:48:10 PM.819] Creating buffer
[4/8/2023 1:48:10 PM.819] Created buffer
[4/8/2023 1:48:10 PM.819] Creating blend state
[4/8/2023 1:48:10 PM.819] Created blend state
[4/8/2023 1:48:10 PM.819] Done with creation
[4/8/2023 1:48:10 PM.863] Initializing texture system.
[4/8/2023 1:48:10 PM.863] Initializing texture system; phase 1
[4/8/2023 1:48:10 PM.863] Initializing texture system; phase 2
[4/8/2023 1:48:10 PM.870] Initializing texture system; phase 3
[4/8/2023 1:48:10 PM.870] Initializing texture system; phase 4
[4/8/2023 1:48:10 PM.878] Initializing texture system; phase 5
[4/8/2023 1:48:10 PM.879] Initializing texture system; phase 6
[4/8/2023 1:48:10 PM.880] Initializing texture system; phase 7
[4/8/2023 1:48:10 PM.883] Initializing texture system; phase 8
[4/8/2023 1:48:10 PM.884] Initializing texture system; phase 9
[4/8/2023 1:48:10 PM.884] Initializing texture system; phase 10
[4/8/2023 1:48:10 PM.888] Initializing texture system; phase 11
[4/8/2023 1:48:10 PM.888] Initializing texture system; phase 12
[4/8/2023 1:48:10 PM.889] Initializing texture system; phase 13
[4/8/2023 1:48:10 PM.889] Initializing texture system; phase 14
[4/8/2023 1:48:15 PM.776] Direct3D watcher thread ended
[4/8/2023 1:48:28 PM.112] LoadingScreenMsg: Initializing game support
[4/8/2023 1:48:28 PM.363] Initializing game support
[4/8/2023 1:48:33 PM.770] LoadingScreenMsg: Velocity limit removed
[4/8/2023 1:48:34 PM.076] Compatibility level: 0
[4/8/2023 1:48:34 PM.076] Supported version detected
[4/8/2023 1:48:34 PM.076] ==================================================
[4/8/2023 1:48:34 PM.076] LoadingScreenMsg: Patching code
[4/8/2023 1:48:34 PM.326] LoadingScreenMsg: Waiting for game initialization
[4/8/2023 1:48:34 PM.577] Waiting for game initialization
[4/8/2023 1:48:34 PM.678] LoadingScreenMsg: Initializing core
[4/8/2023 1:48:34 PM.929] Initializing hook
[4/8/2023 1:48:39 PM.950] LoadingScreenMsg: Completing interoperability
[4/8/2023 1:48:40 PM.201] Completing interoperability
[4/8/2023 1:48:40 PM.201] Initialization code 1.
[4/8/2023 1:48:40 PM.201] Initialization code 2.
[4/8/2023 1:48:40 PM.201] Initialization code 3.
[4/8/2023 1:48:40 PM.208] 1 Address: 0x00007FF622004890
[4/8/2023 1:48:40 PM.208] Calling func 1
[4/8/2023 1:48:40 PM.221] 2 Address: 0x00007FF622BC3546
[4/8/2023 1:48:40 PM.221] 3 Address: 0x00007FF6215C5F6A
[4/8/2023 1:48:40 PM.241] Address: 0x00007FF622BC34F0
[4/8/2023 1:48:40 PM.241] Unknown var: 0x00007FF623C14D70
[4/8/2023 1:48:40 PM.241] Initialization code 4.
[4/8/2023 1:48:40 PM.241] Initialization code 5.
[4/8/2023 1:48:40 PM.241] Completing interoperability, phase 1
[4/8/2023 1:48:40 PM.241] Completing interoperability, phase 2
[4/8/2023 1:48:40 PM.241] Completing interoperability, phase 3
[4/8/2023 1:48:40 PM.241] Completing interoperability, phase 4
[4/8/2023 1:48:40 PM.241] Completing interoperability, phase 5
[4/8/2023 1:48:40 PM.241] Completing interoperability, phase 6
[4/8/2023 1:48:40 PM.241] Completing interoperability, phase 7
[4/8/2023 1:48:40 PM.241] LoadingScreenMsg: 
[4/8/2023 1:48:40 PM.493] LoadingScreenMsg: Loading Story Mode
[4/8/2023 1:48:42 PM.826] LoadingScreenMsg: Loading and Populating Game World
[4/8/2023 1:48:43 PM.076] LoadingScreenMsg:
