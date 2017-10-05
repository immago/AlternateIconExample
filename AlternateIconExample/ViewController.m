//
//  ViewController.m
//  AlternateIconExample
//
//  Created by Dmitry Byankin on 04.10.17.
//  Copyright © 2017 Dmitry Byankin. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

-(void)setIconWithName:(NSString*)name {
    
    // Check compatibility before set
    if([UIApplication sharedApplication].supportsAlternateIcons){
        
        // Set by name or nil to reset
        [[UIApplication sharedApplication] setAlternateIconName:name completionHandler:^(NSError * _Nullable error) {
            if(error){
                NSLog(@"error = %@", error.localizedDescription);
            }
        }];
    }else{
        NSLog(@"AlternateIcons unsupported");
    }
}

- (IBAction)icon1VuttonPressed:(id)sender {
    [self setIconWithName:@"icon-1"];
}
- (IBAction)icon2ButtonPressed:(id)sender {
    [self setIconWithName:@"icon-2"];
}
- (IBAction)icon3ButtonPressed:(id)sender {
    [self setIconWithName:@"icon-3"];
}
- (IBAction)defaultIconButtonPressed:(id)sender {
    [self setIconWithName:nil];
}


@end
