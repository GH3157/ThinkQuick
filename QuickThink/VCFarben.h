//
//  VCFarben.h
//  QuickThink
//
//  Created by Hendric Lenz on 02.06.14.
//  Copyright (c) 2014 Hendric Lenz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCFarben : UIViewController {
    
    IBOutlet UIImageView *reaktionsBild;
    IBOutlet UILabel *reaktionsLabel;
    NSTimer *ReaktionsTimer;
    float reaktionsZeit;
    
    
}
- (IBAction)startGame:(id)sender;
- (IBAction)reactNow:(id)sender;


@end
