//
//  CommnetButton.h
//  textField
//
//  Created by 诸超杰 on 16/4/27.
//  Copyright © 2016年 class17. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YYCommentControl.h"
@interface CommnetButton : UIButton
@property(strong ,nonatomic)YYCommentControl * comment;
@property (strong, nonatomic) UITextField *textField;
@property (nonatomic, copy) void (^block) ();
- (instancetype)initWithSth;
@end
