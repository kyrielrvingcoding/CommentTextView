//
//  CommnetButton.m
//  textField
//
//  Created by 诸超杰 on 16/4/27.
//  Copyright © 2016年 class17. All rights reserved.
//

#import "CommnetButton.h"
#define DefineWeakSelf __weak __typeof(self) weakSelf = self

@implementation CommnetButton

//使她可以成为第一响应者
- (BOOL)becomeFirstResponder {
    return YES;
}

//+ (instancetype)buttonWithType:(UIButtonType)buttonType {
//   CommnetButton *button = [super buttonWithType:buttonType];
////    self.comment = [YYCommentControl yyCreatView];
////    self.TextField.inputAccessoryView = self.comment;
////    DefineWeakSelf;
////    [self.comment setCancel:^{
////        weakSelf.comment.TextView.text = nil;
////        [weakSelf.comment.TextView resignFirstResponder];
////        [weakSelf.TextField resignFirstResponder];
////    }];
////    [self.comment setSender:^(NSString * title)
////     {
////         NSLog(@"yy = /** %@ */",title);
////         weakSelf.comment.TextView.text = nil;
////         [weakSelf.comment.TextView resignFirstResponder];
////         [weakSelf.TextField resignFirstResponder];
////         
////     }];
////
//    
//    
//    return button;
//}



- (instancetype)initWithSth {
    CommnetButton *button = [CommnetButton buttonWithType:UIButtonTypeCustom];
    button.textField = [[UITextField alloc] init];
    button.comment = [YYCommentControl yyCreatView];
    button.textField.inputAccessoryView = button.comment;
    [button addSubview:button.textField];

    
__weak typeof (button) wkButton = button;
    [button.comment setCancel:^{
        wkButton.comment.TextView.text = nil;
        [wkButton.comment.TextView resignFirstResponder];
        [wkButton.textField resignFirstResponder];
    
    }];
     
    [button.comment setSender:^(NSString * title)
     {
         NSLog(@"yy = /** %@ */",@"发送通知");
         wkButton.comment.TextView.text = nil;
         [wkButton.comment.TextView resignFirstResponder];
         [wkButton.textField resignFirstResponder];
     }];
    
    
    wkButton.block = ^ {
        [wkButton.textField becomeFirstResponder];
        [wkButton.comment.TextView becomeFirstResponder];
    };

    return button;
}

@end
