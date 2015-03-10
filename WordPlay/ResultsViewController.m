//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Jen Kelley on 3/10/15.
//  Copyright (c) 2015 Jen Kelley. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (strong, nonatomic) IBOutlet UITextView *resultsTextView;


@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resultsTextView.text = [NSString stringWithFormat:@"%@ is very %@ when he or she %@ %@.", self.name, self.adjective, self.verb, self.adverb];

    NSArray *answersArray = [NSArray arrayWithObjects: self.name, self.adjective, self.verb, self.adverb, nil];

    NSString *temporaryString = (@"%@ %@ %@ %@", answersArray[1], answersArray[2],answersArray[3], answersArray[4]);

    NSMutableString *myBoldString = [[NSMutableString alloc] initWithString:temporaryString] attributes:@ { NSFontAttributeName: [UIFont boldSystemFontOfSize:12.0]};

@end
