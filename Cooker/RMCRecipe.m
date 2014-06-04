//
//  RMCRecipe.m
//  Cooker
//
//  Created by Nikolas on 5/15/14.
//  Copyright (c) 2014 Redmond. All rights reserved.
//

#import "RMCRecipe.h"
#import "SMXMLDocument.h"

@implementation RMCRecipe

-(RMCRecipe*)init
{
    self = [super init];
    return self;
}
-(RMCRecipe*)initWithXML:(NSData*) xml
{
    self = [self init];
    SMXMLDocument *document = [SMXMLDocument documentWithData:xml error:NULL];
    //SMXMLElement *recXml = [document.root childNamed:@"Recipe"];
    self.name = [document.root attributeNamed:@"name"];
    NSLog(@"Recipe name: %@",self.name);
    self.time = [document.root attributeNamed:@"time"];
    NSLog(@"Recipe time: %@",self.time);
    self.temperature = [document.root attributeNamed:@"temperature"];
    NSLog(@"Recipe temperature: %@",self.temperature);
    self.range = [document.root attributeNamed:@"range"];
    NSLog(@"Recipe range: %@",self.range);
    self.keepwarm = [document.root attributeNamed:@"keepwarm"];
    NSLog(@"Recipe keepwarm: %@",self.keepwarm);
    return self;
}

@end
