//
//  VCFarben.m
//  QuickThink
//
//  Created by Hendric Lenz on 02.06.14.
//  Copyright (c) 2014 Hendric Lenz. All rights reserved.
//

#import "VCFarben.h"

@interface VCFarben ()

@end

@implementation VCFarben

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    reaktionsBild.image = [UIImage imageNamed:@"normal.png"];
    reaktionsZeit = 0.000;
    reaktionsLabel.hidden = YES;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(IBAction)startGame:(id)sender {   //Zeit bis reactNow.png erscheint
    
    int randomTime = (arc4random()%10)+2;
    
    NSTimer *timer1 = [NSTimer scheduledTimerWithTimeInterval:randomTime target:self selector:@selector(reagiereJetzt) userInfo:nil repeats:NO];
}
-(IBAction)reactNow:(id)sender {    //Label
    
    [ReaktionsTimer invalidate];
    reaktionsLabel.hidden = NO;     //Label zeigen
    reaktionsLabel.text = [NSString stringWithFormat:@"Zeit: %.3f", reaktionsZeit];
    
}

- (void) reagiereJetzt {
    reaktionsBild.image = [UIImage imageNamed:@"reactNow.png"];
    
    ReaktionsTimer = [NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(plusOne) userInfo:nil repeats:YES];
}
- (void) plusOne{   //Counter
    
    reaktionsZeit+=0.001;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
