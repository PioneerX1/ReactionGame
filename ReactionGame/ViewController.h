//
//  ViewController.h
//  ReactionGame
//
//  Created by Mick Sexton on 3/27/18.
//  Copyright © 2018 Mick Sexton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timerCountDown;
    int countDown;
    NSTimer *timerScore;
    int countScore;
}

@property (weak, nonatomic) IBOutlet UILabel *getReadyLabel;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
- (IBAction)StartStop:(id)sender;

@end

