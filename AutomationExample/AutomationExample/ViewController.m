//
//  ViewController.m
//  AutomationExample
//
//  Created by amayoral on 4/30/15.
//  Copyright (c) 2015 Comcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionBtnSayHi:(id)sender {
    
    NSString *nameWithSpaces = [self sayHeyWithSpaces:self.textFieldName.text];
    self.lblUserName.text = nameWithSpaces;
    
}

- (NSString *)sayHeyWithSpaces:(NSString *)stringName {
    NSMutableString *spacedName = [[NSMutableString alloc] init];
    
    [stringName enumerateSubstringsInRange:NSMakeRange(0, stringName.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        
        if(enclosingRange.location < (stringName.length-1)) {
            [spacedName appendFormat:@"%@ ", substring];
        }else {
            // String without space.
            [spacedName appendString:substring];
        }
        
        
    }];
    
    return spacedName;
}

- (void)doSomethingThatTakesSomeTimesWithCompletionBlock:(void (^)(NSString *result))completion
{
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:2.0f];
        dispatch_sync(dispatch_get_main_queue(), ^{
            completion(@"result");
        });
    });
}


@end
