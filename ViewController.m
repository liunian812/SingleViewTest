//
//  ViewController.m
//  SingleViewTest
//
//  Created by patrick on 13-8-29.
//  Copyright (c) 2013年 patrick. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UILabel *banner; // index banner
- (IBAction)login:(id)sender;

@end

@implementation ViewController

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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)login:(id)sender {
    self.userName = self.userNameTextField.text;
    self.password = self.passwordTextField.text;
    
    NSString *userNameString = self.userName;
    if([userNameString length] == 0){
        userNameString = @"World";
    }
    NSString *bannerText = [[NSString alloc] initWithFormat:@"Welcome to my world, %@!", userNameString];
    self.banner.text = bannerText;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField
{
    if(theTextField == self.userNameTextField){
        [theTextField resignFirstResponder];
    }
    //if(theTextField == self.passwordTextField){
      //  [theTextField resignFirstResponder];
    //}
    return YES;
}
@end
