//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Jen Kelley on 3/10/15.
//  Copyright (c) 2015 Jen Kelley. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    EnterAdjectiveViewController *adjVC = segue.destinationViewController;
    adjVC.name = self.nameTextField.text;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.nameTextField.text isEqual: @""]) {
        return NO;
    } else {
        return YES;
    }
}

@end
