	==337==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x000176026ac0 at pc 0x00010ba3000c bp 0x00016b965730 sp 0x00016b964ec0
	READ of size 23 at 0x000176026ac0 thread T0
	    #0 0x10ba30008 in MemcmpInterceptorCommon(void*, int (*)(void const*, void const*, unsigned long), void const*, void const*, unsigned long)+0x204 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/Frameworks/libclang_rt.asan_ios_dynamic.dylib:arm64+0x18008)
	    #1 0x10ba30330 in wrap_memcmp+0x84 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/Frameworks/libclang_rt.asan_ios_dynamic.dylib:arm64+0x18330)
	    #2 0x1d1c367b8 in <redacted>+0x19c (/usr/lib/swift/libswiftCore.dylib:arm64+0x17b7b8)
	    #3 0x1d1c36834 in <redacted>+0x14 (/usr/lib/swift/libswiftCore.dylib:arm64+0x17b834)
	    #4 0x1d0d879b8 in <redacted>+0x60 (/System/Library/PrivateFrameworks/UIKitCore.framework/UIKitCore:arm64+0xcc09b8)
	    #5 0x1052eafb4 in SuperIccp.JZYHomeNavigationView.config(userName: Swift.String, isAuth: Swift.Bool, isHaveNews: Swift.Bool) -> ()+0x3f8 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x100e52fb4)
	    #6 0x1048e16c8 in closure #1 () -> () in SuperIccp.JZYSuperHomeVC.(refreshUI in _2ABF8FCD91538313681802D0FB95B391)() -> ()+0x594 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x1004496c8)
	    #7 0x1045a9da0 in reabstraction thunk helper from @escaping @callee_guaranteed () -> () to @escaping @callee_unowned @convention(block) () -> ()+0x88 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x100111da0)
	    #8 0x10ba53ae4 in __wrap_dispatch_async_block_invoke+0xb8 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/Frameworks/libclang_rt.asan_ios_dynamic.dylib:arm64+0x3bae4)
	    #9 0x10b8276ec in _dispatch_call_block_and_release+0x14 (/usr/lib/system/introspection/libdispatch.dylib:arm64+0x36ec)
	    #10 0x10b828c70 in _dispatch_client_callout+0xc (/usr/lib/system/introspection/libdispatch.dylib:arm64+0x4c70)
	    #11 0x10b8366f8 in _dispatch_main_queue_callback_4CF+0x54c (/usr/lib/system/introspection/libdispatch.dylib:arm64+0x126f8)
	    #12 0x1a4152c18 in <redacted>+0x8 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xa9c18)
	    #13 0x1a414db50 in <redacted>+0x780 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xa4b50)
	    #14 0x1a414d0ac in CFRunLoopRunSpecific+0x1b0 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xa40ac)
	    #15 0x1a634d798 in GSEventRunModal+0x64 (/System/Library/PrivateFrameworks/GraphicsServices.framework/GraphicsServices:arm64+0xa798)
	    #16 0x1d0983974 in UIApplicationMain+0xd0 (/System/Library/PrivateFrameworks/UIKitCore.framework/UIKitCore:arm64+0x8bc974)
	    #17 0x104a6cb68 in main+0x50 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x1005d4b68)
	    #18 0x1a3c128dc in <redacted>+0x0 (/usr/lib/system/libdyld.dylib:arm64+0x18dc)
	
	0x000176026ac0 is located 0 bytes to the right of 32-byte region [0x000176026aa0,0x000176026ac0)
	allocated by thread T0 here:
	    #0 0x10ba550e8 in __sanitizer_mz_malloc+0x88 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/Frameworks/libclang_rt.asan_ios_dynamic.dylib:arm64+0x3d0e8)
	    #1 0x1a3da3c14 in malloc_zone_malloc+0x98 (/usr/lib/system/libsystem_malloc.dylib:arm64+0xfc14)
	    #2 0x1a4153f84 in _CFRuntimeCreateInstance+0x140 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xaaf84)
	    #3 0x1a416d6ac in <redacted>+0x770 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xc46ac)
	    #4 0x1a416dbec in CFStringCreateWithBytes+0x28 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xc4bec)
	    #5 0x1d1cf1ce8 in <redacted>+0x44 (/usr/lib/swift/libswiftCore.dylib:arm64+0x236ce8)
	    #6 0x1052eaf70 in SuperIccp.JZYHomeNavigationView.config(userName: Swift.String, isAuth: Swift.Bool, isHaveNews: Swift.Bool) -> ()+0x3b4 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x100e52f70)
	    #7 0x1048e16c8 in closure #1 () -> () in SuperIccp.JZYSuperHomeVC.(refreshUI in _2ABF8FCD91538313681802D0FB95B391)() -> ()+0x594 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x1004496c8)
	    #8 0x1045a9da0 in reabstraction thunk helper from @escaping @callee_guaranteed () -> () to @escaping @callee_unowned @convention(block) () -> ()+0x88 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x100111da0)
	    #9 0x10ba53ae4 in __wrap_dispatch_async_block_invoke+0xb8 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/Frameworks/libclang_rt.asan_ios_dynamic.dylib:arm64+0x3bae4)
	    #10 0x10b8276ec in _dispatch_call_block_and_release+0x14 (/usr/lib/system/introspection/libdispatch.dylib:arm64+0x36ec)
	    #11 0x10b828c70 in _dispatch_client_callout+0xc (/usr/lib/system/introspection/libdispatch.dylib:arm64+0x4c70)
	    #12 0x10b8366f8 in _dispatch_main_queue_callback_4CF+0x54c (/usr/lib/system/introspection/libdispatch.dylib:arm64+0x126f8)
	    #13 0x1a4152c18 in <redacted>+0x8 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xa9c18)
	    #14 0x1a414db50 in <redacted>+0x780 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xa4b50)
	    #15 0x1a414d0ac in CFRunLoopRunSpecific+0x1b0 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xa40ac)
	    #16 0x1a634d798 in GSEventRunModal+0x64 (/System/Library/PrivateFrameworks/GraphicsServices.framework/GraphicsServices:arm64+0xa798)
	    #17 0x1d0983974 in UIApplicationMain+0xd0 (/System/Library/PrivateFrameworks/UIKitCore.framework/UIKitCore:arm64+0x8bc974)
	    #18 0x104a6cb68 in main+0x50 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x1005d4b68)
	    #19 0x1a3c128dc in <redacted>+0x0 (/usr/lib/system/libdyld.dylib:arm64+0x18dc)
	
	SUMMARY: AddressSanitizer: heap-buffer-overflow (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/Frameworks/libclang_rt.asan_ios_dynamic.dylib:arm64+0x18008) in MemcmpInterceptorCommon(void*, int (*)(void const*, void const*, unsigned long), void const*, void const*, unsigned long)+0x204
	Shadow bytes around the buggy address:
	  0x00013b684d00: fd fd fd fa fa fa 00 00 00 fa fa fa 00 00 00 07
	  0x00013b684d10: fa fa 00 00 00 fa fa fa 00 00 00 fa fa fa 00 00
	  0x00013b684d20: 00 fa fa fa 00 00 00 fa fa fa fd fd fd fa fa fa
	  0x00013b684d30: fd fd fd fa fa fa fd fd fd fa fa fa fd fd fd fd
	  0x00013b684d40: fa fa 00 00 00 00 fa fa fd fd fd fa fa fa fd fd
	=>0x00013b684d50: fd fd fa fa 00 00 00 00[fa]fa fd fd fd fa fa fa
	  0x00013b684d60: 00 00 00 fa fa fa fd fd fd fa fa fa fd fd fd fa
	  0x00013b684d70: fa fa fd fd fd fa fa fa fd fd fd fd fa fa fd fd
	  0x00013b684d80: fd fa fa fa fd fd fd fa fa fa fd fd fd fa fa fa
	  0x00013b684d90: fd fd fd fa fa fa fd fd fd fd fa fa 00 00 00 00
	  0x00013b684da0: fa fa fd fd fd fd fa fa 00 00 00 fa fa fa fd fd
	Shadow byte legend (one shadow byte represents 8 application bytes):
	  Addressable:           00
	  Partially addressable: 01 02 03 04 05 06 07 
	  Heap left redzone:       fa
	  Freed heap region:       fd
	  Stack left redzone:      f1
	  Stack mid redzone:       f2
	  Stack right redzone:     f3
	  Stack after return:      f5
	  Stack use after scope:   f8
	  Global redzone:          f9
	  Global init order:       f6
	  Poisoned by user:        f7
	  Container overflow:      fc
	  Array cookie:            ac
	  Intra object redzone:    bb
	  ASan internal:           fe
	  Left alloca redzone:     ca
	  Right alloca redzone:    cb
	  Shadow gap:              cc
	2021-07-01 14:50:39.472559+0800 SuperIccp[337:69453] =================================================================
	2021-07-01 14:50:39.472720+0800 SuperIccp[337:69453] ==337==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x000176026ac0 at pc 0x00010ba3000c bp 0x00016b965730 sp 0x00016b964ec0
	2021-07-01 14:50:39.473026+0800 SuperIccp[337:69453] READ of size 23 at 0x000176026ac0 thread T0
	2021-07-01 14:50:39.473118+0800 SuperIccp[337:69453]     #0 0x10ba30008 in MemcmpInterceptorCommon(void*, int (*)(void const*, void const*, unsigned long), void const*, void const*, unsigned long)+0x204 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/Frameworks/libclang_rt.asan_ios_dynamic.dylib:arm64+0x18008)
	2021-07-01 14:50:39.473935+0800 SuperIccp[337:69453]     #1 0x10ba30330 in wrap_memcmp+0x84 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/Frameworks/libclang_rt.asan_ios_dynamic.dylib:arm64+0x18330)
	2021-07-01 14:50:39.474176+0800 SuperIccp[337:69453]     #2 0x1d1c367b8 in <redacted>+0x19c (/usr/lib/swift/libswiftCore.dylib:arm64+0x17b7b8)
	2021-07-01 14:50:39.474948+0800 SuperIccp[337:69453]     #3 0x1d1c36834 in <redacted>+0x14 (/usr/lib/swift/libswiftCore.dylib:arm64+0x17b834)
	2021-07-01 14:50:39.475031+0800 SuperIccp[337:69453]     #4 0x1d0d879b8 in <redacted>+0x60 (/System/Library/PrivateFrameworks/UIKitCore.framework/UIKitCore:arm64+0xcc09b8)
	2021-07-01 14:50:39.475145+0800 SuperIccp[337:69453]     #5 0x1052eafb4 in SuperIccp.JZYHomeNavigationView.config(userName: Swift.String, isAuth: Swift.Bool, isHaveNews: Swift.Bool) -> ()+0x3f8 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x100e52fb4)
	2021-07-01 14:50:39.475226+0800 SuperIccp[337:69453]     #6 0x1048e16c8 in closure #1 () -> () in SuperIccp.JZYSuperHomeVC.(refreshUI in _2ABF8FCD91538313681802D0FB95B391)() -> ()+0x594 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x1004496c8)
	2021-07-01 14:50:39.477117+0800 SuperIccp[337:69453]     #7 0x1045a9da0 in reabstraction thunk helper from @escaping @callee_guaranteed () -> () to @escaping @callee_unowned @convention(block) () -> ()+0x88 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x100111da0)
	2021-07-01 14:50:39.477942+0800 SuperIccp[337:69453]     #8 0x10ba53ae4 in __wrap_dispatch_async_block_invoke+0xb8 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/Frameworks/libclang_rt.asan_ios_dynamic.dylib:arm64+0x3bae4)
	2021-07-01 14:50:39.478054+0800 SuperIccp[337:69453]     #9 0x10b8276ec in _dispatch_call_block_and_release+0x14 (/usr/lib/system/introspection/libdispatch.dylib:arm64+0x36ec)
	2021-07-01 14:50:39.478192+0800 SuperIccp[337:69453]     #10 0x10b828c70 in _dispatch_client_callout+0xc (/usr/lib/system/introspection/libdispatch.dylib:arm64+0x4c70)
	2021-07-01 14:50:39.478300+0800 SuperIccp[337:69453]     #11 0x10b8366f8 in _dispatch_main_queue_callback_4CF+0x54c (/usr/lib/system/introspection/libdispatch.dylib:arm64+0x126f8)
	2021-07-01 14:50:39.479234+0800 SuperIccp[337:69453]     #12 0x1a4152c18 in <redacted>+0x8 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xa9c18)
	2021-07-01 14:50:39.479314+0800 SuperIccp[337:69453]     #13 0x1a414db50 in <redacted>+0x780 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xa4b50)
	2021-07-01 14:50:39.479386+0800 SuperIccp[337:69453]     #14 0x1a414d0ac in CFRunLoopRunSpecific+0x1b0 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xa40ac)
	2021-07-01 14:50:39.479483+0800 SuperIccp[337:69453]     #15 0x1a634d798 in GSEventRunModal+0x64 (/System/Library/PrivateFrameworks/GraphicsServices.framework/GraphicsServices:arm64+0xa798)
	2021-07-01 14:50:39.479558+0800 SuperIccp[337:69453]     #16 0x1d0983974 in UIApplicationMain+0xd0 (/System/Library/PrivateFrameworks/UIKitCore.framework/UIKitCore:arm64+0x8bc974)
	2021-07-01 14:50:39.480033+0800 SuperIccp[337:69453]     #17 0x104a6cb68 in main+0x50 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x1005d4b68)
	2021-07-01 14:50:39.480108+0800 SuperIccp[337:69453]     #18 0x1a3c128dc in <redacted>+0x0 (/usr/lib/system/libdyld.dylib:arm64+0x18dc)
	2021-07-01 14:50:39.480179+0800 SuperIccp[337:69453] 
	2021-07-01 14:50:39.480249+0800 SuperIccp[337:69453] 0x000176026ac0 is located 0 bytes to the right of 32-byte region [0x000176026aa0,0x000176026ac0)
	2021-07-01 14:50:39.480400+0800 SuperIccp[337:69453] allocated by thread T0 here:
	2021-07-01 14:50:39.480474+0800 SuperIccp[337:69453]     #0 0x10ba550e8 in __sanitizer_mz_malloc+0x88 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/Frameworks/libclang_rt.asan_ios_dynamic.dylib:arm64+0x3d0e8)
	2021-07-01 14:50:39.480884+0800 SuperIccp[337:69453]     #1 0x1a3da3c14 in malloc_zone_malloc+0x98 (/usr/lib/system/libsystem_malloc.dylib:arm64+0xfc14)
	2021-07-01 14:50:39.483231+0800 SuperIccp[337:69453]     #2 0x1a4153f84 in _CFRuntimeCreateInstance+0x140 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xaaf84)
	2021-07-01 14:50:39.483319+0800 SuperIccp[337:69453]     #3 0x1a416d6ac in <redacted>+0x770 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xc46ac)
	2021-07-01 14:50:39.483395+0800 SuperIccp[337:69453]     #4 0x1a416dbec in CFStringCreateWithBytes+0x28 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xc4bec)
	2021-07-01 14:50:39.483470+0800 SuperIccp[337:69453]     #5 0x1d1cf1ce8 in <redacted>+0x44 (/usr/lib/swift/libswiftCore.dylib:arm64+0x236ce8)
	2021-07-01 14:50:39.483545+0800 SuperIccp[337:69453]     #6 0x1052eaf70 in SuperIccp.JZYHomeNavigationView.config(userName: Swift.String, isAuth: Swift.Bool, isHaveNews: Swift.Bool) -> ()+0x3b4 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x100e52f70)
	2021-07-01 14:50:39.483754+0800 SuperIccp[337:69453]     #7 0x1048e16c8 in closure #1 () -> () in SuperIccp.JZYSuperHomeVC.(refreshUI in _2ABF8FCD91538313681802D0FB95B391)() -> ()+0x594 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x1004496c8)
	2021-07-01 14:50:39.483827+0800 SuperIccp[337:69453]     #8 0x1045a9da0 in reabstraction thunk helper from @escaping @callee_guaranteed () -> () to @escaping @callee_unowned @convention(block) () -> ()+0x88 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x100111da0)
	2021-07-01 14:50:39.483903+0800 SuperIccp[337:69453]     #9 0x10ba53ae4 in __wrap_dispatch_async_block_invoke+0xb8 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/Frameworks/libclang_rt.asan_ios_dynamic.dylib:arm64+0x3bae4)
	2021-07-01 14:50:39.484033+0800 SuperIccp[337:69453]     #10 0x10b8276ec in _dispatch_call_block_and_release+0x14 (/usr/lib/system/introspection/libdispatch.dylib:arm64+0x36ec)
	2021-07-01 14:50:39.486385+0800 SuperIccp[337:69453]     #11 0x10b828c70 in _dispatch_client_callout+0xc (/usr/lib/system/introspection/libdispatch.dylib:arm64+0x4c70)
	2021-07-01 14:50:39.486478+0800 SuperIccp[337:69453]     #12 0x10b8366f8 in _dispatch_main_queue_callback_4CF+0x54c (/usr/lib/system/introspection/libdispatch.dylib:arm64+0x126f8)
	2021-07-01 14:50:39.486603+0800 SuperIccp[337:69453]     #13 0x1a4152c18 in <redacted>+0x8 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xa9c18)
	2021-07-01 14:50:39.487196+0800 SuperIccp[337:69453]     #14 0x1a414db50 in <redacted>+0x780 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xa4b50)
	2021-07-01 14:50:39.487283+0800 SuperIccp[337:69453]     #15 0x1a414d0ac in CFRunLoopRunSpecific+0x1b0 (/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation:arm64+0xa40ac)
	2021-07-01 14:50:39.487444+0800 SuperIccp[337:69453]     #16 0x1a634d798 in GSEventRunModal+0x64 (/System/Library/PrivateFrameworks/GraphicsServices.framework/GraphicsServices:arm64+0xa798)
	2021-07-01 14:50:39.487781+0800 SuperIccp[337:69453]     #17 0x1d0983974 in UIApplicationMain+0xd0 (/System/Library/PrivateFrameworks/UIKitCore.framework/UIKitCore:arm64+0x8bc974)
	2021-07-01 14:50:39.487858+0800 SuperIccp[337:69453]     #18 0x104a6cb68 in main+0x50 (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/SuperIccp:arm64+0x1005d4b68)
	2021-07-01 14:50:39.487932+0800 SuperIccp[337:69453]     #19 0x1a3c128dc in <redacted>+0x0 (/usr/lib/system/libdyld.dylib:arm64+0x18dc)
	2021-07-01 14:50:39.488008+0800 SuperIccp[337:69453] 
	2021-07-01 14:50:39.488511+0800 SuperIccp[337:69453] SUMMARY: AddressSanitizer: heap-buffer-overflow (/var/containers/Bundle/Application/14C3231D-55B7-4789-BB59-090590B9E728/SuperIccp.app/Frameworks/libclang_rt.asan_ios_dynamic.dylib:arm64+0x18008) in MemcmpInterceptorCommon(void*, int (*)(void const*, void const*, unsigned long), void const*, void const*, unsigned long)+0x204
	2021-07-01 14:50:39.489798+0800 SuperIccp[337:69453] Shadow bytes around the buggy address:
	2021-07-01 14:50:39.489931+0800 SuperIccp[337:69453]   0x00013b684d00: fd fd fd fa fa fa 00 00 00 fa fa fa 00 00 00 07
	2021-07-01 14:50:39.490054+0800 SuperIccp[337:69453]   0x00013b684d10: fa fa 00 00 00 fa fa fa 00 00 00 fa fa fa 00 00
	2021-07-01 14:50:39.490177+0800 SuperIccp[337:69453]   0x00013b684d20: 00 fa fa fa 00 00 00 fa fa fa fd fd fd fa fa fa
	2021-07-01 14:50:39.490327+0800 SuperIccp[337:69453]   0x00013b684d30: fd fd fd fa fa fa fd fd fd fa fa fa fd fd fd fd
	2021-07-01 14:50:39.490416+0800 SuperIccp[337:69453]   0x00013b684d40: fa fa 00 00 00 00 fa fa fd fd fd fa fa fa fd fd
	2021-07-01 14:50:39.491025+0800 SuperIccp[337:69453] =>0x00013b684d50: fd fd fa fa 00 00 00 00[fa]fa fd fd fd fa fa fa
	2021-07-01 14:50:39.491109+0800 SuperIccp[337:69453]   0x00013b684d60: 00 00 00 fa fa fa fd fd fd fa fa fa fd fd fd fa
	2021-07-01 14:50:39.491194+0800 SuperIccp[337:69453]   0x00013b684d70: fa fa fd fd fd fa fa fa fd fd fd fd fa fa fd fd
	2021-07-01 14:50:39.491850+0800 SuperIccp[337:69453]   0x00013b684d80: fd fa fa fa fd fd fd fa fa fa fd fd fd fa fa fa
	2021-07-01 14:50:39.491925+0800 SuperIccp[337:69453]   0x00013b684d90: fd fd fd fa fa fa fd fd fd fd fa fa 00 00 00 00
	2021-07-01 14:50:39.492000+0800 SuperIccp[337:69453]   0x00013b684da0: fa fa fd fd fd fd fa fa 00 00 00 fa fa fa fd fd
	2021-07-01 14:50:39.492526+0800 SuperIccp[337:69453] Shadow byte legend (one shadow byte represents 8 application bytes):
	2021-07-01 14:50:39.492802+0800 SuperIccp[337:69453]   Addressable:           00
	2021-07-01 14:50:39.492897+0800 SuperIccp[337:69453]   Partially addressable: 01 02 03 04 05 06 07
	2021-07-01 14:50:39.492967+0800 SuperIccp[337:69453]   Heap left redzone:       fa
	2021-07-01 14:50:39.493056+0800 SuperIccp[337:69453]   Freed heap region:       fd
	2021-07-01 14:50:39.493153+0800 SuperIccp[337:69453]   Stack left redzone:      f1
	2021-07-01 14:50:39.493227+0800 SuperIccp[337:69453]   Stack mid redzone:       f2
	2021-07-01 14:50:39.493714+0800 SuperIccp[337:69453]   Stack right redzone:     f3
	2021-07-01 14:50:39.493795+0800 SuperIccp[337:69453]   Stack after return:      f5
	2021-07-01 14:50:39.494007+0800 SuperIccp[337:69453]   Stack use after scope:   f8
	2021-07-01 14:50:39.494104+0800 SuperIccp[337:69453]   Global redzone:          f9
	2021-07-01 14:50:39.494178+0800 SuperIccp[337:69453]   Global init order:       f6
	2021-07-01 14:50:39.494581+0800 SuperIccp[337:69453]   Poisoned by user:        f7
	2021-07-01 14:50:39.494659+0800 SuperIccp[337:69453]   Container overflow:      fc
	2021-07-01 14:50:39.494727+0800 SuperIccp[337:69453]   Array cookie:            ac
	2021-07-01 14:50:39.494798+0800 SuperIccp[337:69453]   Intra object redzone:    bb
	2021-07-01 14:50:39.494871+0800 SuperIccp[337:69453]   ASan internal:           fe
	2021-07-01 14:50:39.494943+0800 SuperIccp[337:69453]   Left alloca redzone:     ca
	2021-07-01 14:50:39.495016+0800 SuperIccp[337:69453]   Right alloca redzone:    cb
	2021-07-01 14:50:39.496566+0800 SuperIccp[337:69453]   Shadow gap:              cc
	==337==ABORTING
	AddressSanitizer report breakpoint hit. Use 'thread info -s' to get extended information about the report.
	(lldb) thread info -s
	thread #1: tid = 0x10f4d, 0x000000010ba5d838 libclang_rt.asan_ios_dynamic.dylib`__asan::AsanDie(), queue = 'com.apple.main-thread', stop reason = Heap buffer overflow
	
	(lldb) thread info -s
	{
	  "access_size": 23,
	  "access_type": 0,
	  "address": 6274837184,
	  "description": "heap-buffer-overflow",
	  "instrumentation_class": "AddressSanitizer",
	  "pc": 4490199052,
	  "stop_type": "fatal_error"
	}


[Overflow and Underflow of Buffers](https://developer.apple.com/documentation/xcode/overflow-and-underflow-of-buffers)

[解决XCode 7 AddressSanitizer: heap-buffer-overflow的问题](https://blog.csdn.net/yqmfly/article/details/48135967)