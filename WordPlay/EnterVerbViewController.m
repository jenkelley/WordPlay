//
//  EnterVerbViewController.m
//  WordPlay
//
//  Created by Jen Kelley on 3/10/15.
//  Copyright (c) 2015 Jen Kelley. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "EnterAdverbViewController.h"

@interface EnterVerbViewController ()
@property (strong, nonatomic) IBOutlet UITextField *verbTextField;

@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    EnterAdverbViewController *adverbVC = segue.destinationViewController;
    adverbVC.verb = self.verbTextField.text;
    adverbVC.name = self.name;
    adverbVC.adjective = self.adjective;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.verbTextField.text isEqual: @""]) {
        return NO;
    } else {
        return YES;
    }
}

@end
