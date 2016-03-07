//
//  ViewController.m
//  SecretMessages
//
//  Created by Amy Joscelyn on 3/6/16.
//  Copyright © 2016 Amy Joscelyn. All rights reserved.
//

#import "ViewController.h"
#import "AMYForm.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *firstMessageButton;
@property (weak, nonatomic) IBOutlet UILabel *secondMessageLabel;

@property (weak, nonatomic) IBOutlet UILabel *emojiLabel1;
@property (weak, nonatomic) IBOutlet UILabel *emojiLabel2;
@property (weak, nonatomic) IBOutlet UILabel *emojiLabel3;

@property (strong, nonatomic) AMYForm *dataStore;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.dataStore = [AMYForm sharedFormDataStore];
    
    self.secondMessageLabel.hidden = YES;
    self.emojiLabel1.hidden = YES;
    self.emojiLabel2.hidden = YES;
    self.emojiLabel3.hidden = YES;
    
    self.view.backgroundColor = [UIColor blackColor];
    
//    self.firstMessageButton.titleLabel.text = self.dataStore.firstMessage;
    
    /*self.firstMessageButton.titleLabel.text = @"Hi, Mark!";
    self.firstMessageButton.titleLabel.textColor = [UIColor greenColor];*/
    
    self.firstMessageButton.titleLabel.font = [UIFont systemFontOfSize:self.view.frame.size.width / 5];
    self.firstMessageButton.backgroundColor = [UIColor greenColor];
    self.firstMessageButton.layer.cornerRadius = 10;
}

- (IBAction)firstMessageButtonTapped:(id)sender
{
    //when button is tapped, hide the button, change the background color, make the label say something, reveal the label
    self.view.backgroundColor = [UIColor greenColor];
    self.firstMessageButton.hidden = YES;
    
        self.secondMessageLabel.text = @"I love you!";
//    self.secondMessageLabel.text = self.dataStore.secondMessage;
    self.secondMessageLabel.textColor = [UIColor blackColor];
    self.secondMessageLabel.font = [UIFont systemFontOfSize:self.view.frame.size.width / 5];
    self.secondMessageLabel.hidden = NO;
    
        self.emojiLabel1.text = @"❤️";
        self.emojiLabel2.text = @"❤️";
        self.emojiLabel3.text = @"< 3";
//    self.emojiLabel1.text = self.dataStore.emoji1;
//    self.emojiLabel2.text = self.dataStore.emoji2;
//    self.emojiLabel3.text = self.dataStore.emoji3;
    
    //    self.emojiLabel3.textColor = [UIColor redColor];
    
    self.emojiLabel1.font = [UIFont systemFontOfSize:self.view.frame.size.width / 5];
    self.emojiLabel2.font = [UIFont systemFontOfSize:self.view.frame.size.width / 5];
    self.emojiLabel3.font = [UIFont systemFontOfSize:self.view.frame.size.width / 5];
    
    self.emojiLabel1.hidden = NO;
    self.emojiLabel2.hidden = NO;
    self.emojiLabel3.hidden = NO;
}

@end
