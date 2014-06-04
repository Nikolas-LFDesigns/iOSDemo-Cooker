//
//  RMCRecipe.h
//  Cooker
//
//  Created by Nikolas on 5/15/14.
//  Copyright (c) 2014 Redmond. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RMCRecipe : NSObject

@property NSString *name;
@property NSString *time;
@property NSString *temperature;
@property NSString *range;
@property NSString *keepwarm;
@property BOOL hasRecipeInfo;

-(RMCRecipe*)initWithXML:(NSData*) xml;

@end
