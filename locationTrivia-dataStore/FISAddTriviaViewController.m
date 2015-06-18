//
//  FISAddTriviaViewController.m
//  locationTrivia-dataStore
//
//  Created by Mason Macias on 6/18/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISAddTriviaViewController.h"

@interface FISAddTriviaViewController ()
@property (weak, nonatomic) IBOutlet UITextField *triviaItemTextField;


@end

@implementation FISAddTriviaViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonTapped:(id)sender {
    FISTrivia *triviaItem = [[FISTrivia alloc] init];
    
    triviaItem.content = self.triviaItemTextField.text;
    
    [self.locationTriviaItems addObject:triviaItem];
    
    
    
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)cancelButtonTapped:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
