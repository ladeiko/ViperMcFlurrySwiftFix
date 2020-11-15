//
//  ViperMcFlurrySwiftFixLoader.m
//
//  Created by Siarhei Ladzeika.
//  Copyright © 2017 Siarhei Ladzeika. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/message.h>

@implementation NSObject(ViperMcFlurrySwiftFixLoader)

+ (void)load {
    void (*setup)(id, SEL) = (void(*)(id, SEL))objc_msgSend;
    setup([UIViewController class], NSSelectorFromString(@"applyViperMcFlurrySwiftFix"));
}

@end


