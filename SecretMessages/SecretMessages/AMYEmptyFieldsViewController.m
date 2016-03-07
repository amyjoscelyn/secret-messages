//
//  AMYEmptyFieldsViewController.m
//  SecretMessages
//
//  Created by Amy Joscelyn on 3/6/16.
//  Copyright © 2016 Amy Joscelyn. All rights reserved.
//

#import "AMYEmptyFieldsViewController.h"
#import "AMYForm.h"

@interface AMYEmptyFieldsViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstMessageTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondMessageTextField;
@property (weak, nonatomic) IBOutlet UITextField *emoji1TextField;
@property (weak, nonatomic) IBOutlet UITextField *emoji2TextField;
@property (weak, nonatomic) IBOutlet UITextField *emoji3TextField;

@property (weak, nonatomic) IBOutlet UIButton *showMessageButton;

@property (strong, nonatomic) AMYForm *dataStore;

@end

@implementation AMYEmptyFieldsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.dataStore = [AMYForm sharedFormDataStore];
}

- (IBAction)firstMessageTextFieldValueChanged:(UITextField *)textField
{
}

- (IBAction)secondMessageTextFieldValueChanged:(UITextField *)textField
{
}

- (IBAction)firstEmojiTextFieldValueChanged:(UITextField *)textField
{
    //if longer then 2, not cool!
}

- (IBAction)secondEmojiTextFieldValueChanged:(UITextField *)textField
{
    //if longer then 2, not cool!
}

- (IBAction)thirdEmojiTextFieldValueChanged:(UITextField *)textField
{
    //if longer then 2, not cool!
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //the segue is to the ViewController, i'm not really sure what i need to do in here for this; i have a dataStore, so i don't need to send info forward
}

- (IBAction)showMessageButtonTapped:(id)sender
{
    self.dataStore.firstMessage = self.firstMessageTextField.text;
    self.dataStore.secondMessage = self.secondMessageTextField.text;
    self.dataStore.emoji1 = self.emoji1TextField.text;
    self.dataStore.emoji2 = self.emoji2TextField.text;
    self.dataStore.emoji3 = self.emoji3TextField.text;
}


@end
