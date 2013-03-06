//
//  AlertPrompt.h
//  CustomAlert
//
//  Created by Tedi Fibri on 3/6/13.
//  Copyright (c) 2013 tediscript. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlertPrompt : UIAlertView {
    UITextField *textField;
}

@property (nonatomic, retain) UITextField *textField;
@property (readonly) NSString *enteredText;

- (id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle okButtonTitle:(NSString *)okButtonTitle;
@end
