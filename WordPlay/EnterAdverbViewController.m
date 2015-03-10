//
//  EnterAdverbViewController.m
//  WordPlay
//
//  Created by Jen Kelley on 3/10/15.
//  Copyright (c) 2015 Jen Kelley. All rights reserved.
//

#import "EnterAdverbViewController.h"
#import "ResultsViewController.h"

@interface EnterAdverbViewController ()
@property (strong, nonatomic) IBOutlet UITextField *adverbTextField;

@end

@implementation EnterAdverbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
   ResultsViewController *resultsVC = segue.destinationViewController;
    resultsVC.adverb = self.adverbTextField.text;
    resultsVC.name = self.name;
    resultsVC.adjective = self.adjective;
    resultsVC.verb = self.verb;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.adverbTextField.text isEqual: @""]) {
        return NO;
    } else {
        return YES;
    }
}

@end
