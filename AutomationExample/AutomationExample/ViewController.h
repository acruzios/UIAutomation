//
//  ViewController.h
//  AutomationExample
//
//  Created by amayoral on 4/30/15.
//  Copyright (c) 2015 Comcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

/** Title of view */
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

/** Guest/Username label*/
@property (weak, nonatomic) IBOutlet UILabel *lblUserName;

/** Text field for username */
@property (weak, nonatomic) IBOutlet UITextField *textFieldName;

/** Button - Say Hi! */
@property (weak, nonatomic) IBOutlet UIButton *btnSayHi;

@end

