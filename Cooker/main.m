//
//  main.m
//  Cooker
//
//  Created by Nikolas on 5/13/14.
//  Copyright (c) 2014 Redmond. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "RMCAppDelegate.h"
#import "RMCFileTools.h"

int main(int argc, char * argv[])
{
    RMCFileTools *fileTools = [[RMCFileTools alloc] init];
    [fileTools inflateDirectory];
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([RMCAppDelegate class]));
    }
}
