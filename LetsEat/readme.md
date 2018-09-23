## Let's Eat

This project is based on [Learn iOS 11 Programming with Swift 4 (2018, pp)])(https://www.packtpub.com/application-development/learn-ios-11-programming-swift-4-second-edition) book.
The screenshots are not that very friendly to the eye. Amazon reviews of the book are quite accurate.

Stopped at Chapter 8, page 210. Running the app after adding the collection view header, the app crashes at startup as follows:

```
2018-09-23 12:47:48.493308+0300 LetsEat[8871:115355] *** Assertion failure in -[UICollectionView _dequeueReusableViewOfKind:withIdentifier:forIndexPath:viewCategory:], /BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UICollectionView.m:5372
2018-09-23 12:47:48.504683+0300 LetsEat[8871:115355] *** Terminating app due to uncaught exception 'NSInternalInconsistencyException', reason: 'could not dequeue a view of kind: UICollectionElementKindSectionHeader with identifier header - must register a nib or a class for the identifier or connect a prototype cell in a storyboard'
*** First throw call stack:
(
0   CoreFoundation                      0x000000010681029b __exceptionPreprocess + 331
1   libobjc.A.dylib                     0x0000000104eba735 objc_exception_throw + 48
2   CoreFoundation                      0x0000000106810022 +[NSException raise:format:arguments:] + 98
3   Foundation                          0x00000001048beb47 -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:] + 194
4   UIKitCore                           0x0000000108c69d1e -[UICollectionView _dequeueReusableViewOfKind:withIdentifier:forIndexPath:viewCategory:] + 2536
5   UIKitCore                           0x0000000108c6a117 -[UICollectionView dequeueReusableSupplementaryViewOfKind:withReuseIdentifier:forIndexPath:] + 324
6   LetsEat                             0x00000001043dd371 $S7LetsEat21ExploreViewControllerC010collectionD0_33viewForSupplementaryElementOfKind2atSo020UICollectionReusableD0CSo0nD0C_SS10Foundation9IndexPathVtF + 193
7   LetsEat                             0x00000001043dd44a $S7LetsEat21ExploreViewControllerC010collectionD0_33viewForSupplementaryElementOfKind2atSo020UICollectionReusableD0CSo0nD0C_SS10Foundation9IndexPathVtFTo + 154
8   UIKitCore                           0x0000000108c545cc -[UICollectionView _createPreparedSupplementaryViewForElementOfKind:atIndexPath:withLayoutAttributes:applyAttributes:] + 556
9   UIKitCore                           0x0000000108c58809 -[UICollectionView _updateVisibleCellsNow:] + 4534
10  UIKitCore                           0x0000000108c5e68e -[UICollectionView layoutSubviews] + 364
11  UIKitCore                           0x00000001092c5015 -[UIView(CALayerDelegate) layoutSublayersOfLayer:] + 1441
12  QuartzCore                          0x000000010abe9d3d -[CALayer layoutSublayers] + 175
13  QuartzCore                          0x000000010abeebf7 _ZN2CA5Layer16layout_if_neededEPNS_11TransactionE + 395
14  QuartzCore                          0x000000010ab67aa6 _ZN2CA7Context18commit_transactionEPNS_11TransactionE + 342
15  QuartzCore                          0x000000010ab9ec2a _ZN2CA11Transaction6commitEv + 576
16  UIKitCore                           0x0000000108bc6d4c __34-[UIApplication _firstCommitBlock]_block_invoke_2 + 139
17  CoreFoundation                      0x0000000106773a3c __CFRUNLOOP_IS_CALLING_OUT_TO_A_BLOCK__ + 12
18  CoreFoundation                      0x00000001067731f0 __CFRunLoopDoBlocks + 336
19  CoreFoundation                      0x000000010676da64 __CFRunLoopRun + 1284
20  CoreFoundation                      0x000000010676d221 CFRunLoopRunSpecific + 625
21  GraphicsServices                    0x000000010e9001dd GSEventRunModal + 62
22  UIKitCore                           0x0000000108bac115 UIApplicationMain + 140
23  LetsEat                             0x00000001043dbca7 main + 71
24  libdyld.dylib                       0x0000000107c9b551 start + 1
)
libc++abi.dylib: terminating with uncaught exception of type NSException
(lldb) 
```

