//
//  ViewController.m
//  UiElements
//
//  Created by Denis on 01.09.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextFeild;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTF;
@property (weak, nonatomic) IBOutlet UITextField *emailTF;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumberTF;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;
@property (weak, nonatomic) IBOutlet UITextField *confimPasswordTF;

@property (nonatomic, strong) NSArray *textFieldsArray;
@property (nonatomic, assign) NSInteger currentTFIndex;

@end

@implementation ViewController

- (NSArray *)textFieldsArray
{
   if (!_textFieldsArray)
   {
       _textFieldsArray = @[self.firstNameTextFeild, self.lastNameTF, self.emailTF, self.phoneNumberTF, self.passwordTF, self.confimPasswordTF];
   }
    return _textFieldsArray;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    self.currentTFIndex = textField.tag;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.currentTFIndex = textField.tag;
    
    UITextField *nextTF = [self nextTF];
    
    if (nextTF == nil)
    {
        [textField resignFirstResponder];
    }
    else
    {
        [nextTF becomeFirstResponder];
    }
    return YES;
}

- (UITextField*)nextTF
{
    NSInteger currentIndex = self.currentTFIndex;
    
    for (NSInteger i = 0; i<self.textFieldsArray.count; i++)
    {
        currentIndex += 1;
        if(currentIndex > 5)
        {
            currentIndex = 0;
        }
        
        
        UITextField *textField = self.textFieldsArray[currentIndex];
        
        if (textField.text.length == 0)
        {
            return textField;
        }
        
    }
    return nil;
}
@end
