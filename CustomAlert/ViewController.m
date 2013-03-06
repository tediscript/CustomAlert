//
//  ViewController.m
//  CustomAlert
//
//  Created by Tedi Fibri on 3/6/13.
//  Copyright (c) 2013 tediscript. All rights reserved.
//

#import "ViewController.h"
#import "AlertPrompt.h"

@interface ViewController ()

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

- (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex != [alertView cancelButtonIndex])
    {
        NSString *entered = [(AlertPrompt *)alertView enteredText];
        //label.text = [NSString stringWithFormat:@"You typed: %@", entered];
        NSLog(@"%@", entered);
    }
}

- (IBAction)buttonTapAction:(UIButton *)sender {
    AlertPrompt *prompt = [AlertPrompt alloc];
    prompt = [prompt initWithTitle:@"Enter Text" message:@"Please enter some text in" delegate:self cancelButtonTitle:@"Cancel" okButtonTitle:@"Ok"];
    [prompt show];
}


@end
