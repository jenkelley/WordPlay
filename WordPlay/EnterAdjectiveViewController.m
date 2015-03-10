//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Jen Kelley on 3/10/15.
//  Copyright (c) 2015 Jen Kelley. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterVerbViewController.h"

@interface EnterAdjectiveViewController ()
@property (strong, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    EnterVerbViewController *verbVC = segue.destinationViewController;
    verbVC.adjective = self.adjectiveTextField.text;
    verbVC.name = self.name;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.adjectiveTextField.text isEqual: @""]) {
        return NO;
    } else {
        return YES;
    }
}


@end
