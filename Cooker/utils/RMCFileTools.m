//
//  RMCFileTools.m
//  Cooker
//
//  Created by Nikolas on 5/22/14.
//  Copyright (c) 2014 Redmond. All rights reserved.
//

#import "RMCFileTools.h"
#import "RMCRecipe.h"

@implementation RMCFileTools

- (void)inflateDirectory
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:nil];
    NSLog(@"path = %@",path);
    //-----> LIST ALL FILES <-----//
    NSLog(@"LISTING ALL FILES FOUND");
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *pathToTempDirectoryInMain = [[paths lastObject] stringByAppendingPathComponent:@"recipes"];
    NSError *copyError = nil;
     if (![[NSFileManager defaultManager] copyItemAtPath:path toPath:pathToTempDirectoryInMain error:&copyError]) {
     NSLog(@"Error copying files: %@", [copyError localizedDescription]);
     }
}

- (NSMutableArray*)prepareRecipes
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *pathToTempDirectoryInMain = [[paths lastObject] stringByAppendingPathComponent:@"recipes"];
    NSLog(@"path = %@",pathToTempDirectoryInMain);
    NSFileManager *fm = [NSFileManager defaultManager];
    NSArray *directoryContent = [fm contentsOfDirectoryAtPath:pathToTempDirectoryInMain error:NULL];
    BOOL isDirectory;
    
    NSMutableArray *recipes = [[NSMutableArray alloc] init];
    
    for (NSString *item in directoryContent)
    {
        NSString *curDir = [pathToTempDirectoryInMain stringByAppendingPathComponent:item];
        [fm fileExistsAtPath:curDir isDirectory:&isDirectory];
        if (isDirectory)
        {            
            NSLog(@"Directory: %@", item);
            NSString *defaultRecPath = [curDir stringByAppendingPathComponent:@"default.xml"];
            NSData *data = [[NSData alloc] initWithContentsOfFile:defaultRecPath];
            RMCRecipe *rec = [[RMCRecipe alloc] initWithXML:data];
            [recipes addObject:rec];
        }
    }
    return recipes;
}

@end
