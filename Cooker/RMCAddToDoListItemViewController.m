//
//  RMCViewController.m
//  Cooker
//
//  Created by Nikolas on 5/13/14.
//  Copyright (c) 2014 Redmond. All rights reserved.
//

#import "RMCAddToDoListItemViewController.h"

@interface RMCAddToDoListItemViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation RMCAddToDoListItemViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    /*if (sender != self.doneButton) return;
    if (self.textField.text.length > 0) {
        self.toDoItem = [[RMCToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }*/
}

@end
