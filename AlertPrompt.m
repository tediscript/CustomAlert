//
//  AlertPrompt.m
//  CustomAlert
//
//  Created by Tedi Fibri on 3/6/13.
//  Copyright (c) 2013 tediscript. All rights reserved.
//

#import "AlertPrompt.h"

@implementation AlertPrompt

@synthesize textField;
@synthesize enteredText;

- (id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle okButtonTitle:(NSString *)okayButtonTitle
{
    
    if (self = [super initWithTitle:title message:message delegate:delegate cancelButtonTitle:cancelButtonTitle otherButtonTitles:okayButtonTitle, nil])
    {
        UITextField *theTextField = [[UITextField alloc] initWithFrame:CGRectMake(12.0, 45.0, 260.0, 25.0)];
        [theTextField setBackgroundColor:[UIColor whiteColor]];
        [self addSubview:theTextField];
        self.textField = theTextField;
        //[theTextField release];
        //CGAffineTransform translate = CGAffineTransformMakeTranslation(0.0, 30.0);
        //[self setTransform:translate];
    }
    return self;
}
- (void)show
{
    [textField becomeFirstResponder];
    [super show];
}
- (NSString *)enteredText
{
    return textField.text;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
