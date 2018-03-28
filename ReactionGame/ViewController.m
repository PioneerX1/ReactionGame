//
//  ViewController.m
//  ReactionGame
//
//  Created by Mick Sexton on 3/27/18.
//  Copyright © 2018 Mick Sexton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    countScore = 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)StartStop:(id)sender {
    if (countScore == 0) {
        countDown = 3;
        self.getReadyLabel.text = [NSString stringWithFormat:@"%i", countDown];
        timerCountDown = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countingDown) userInfo:nil repeats:YES];
        [sender setTitle:@"Stop" forState:UIControlStateNormal];
    } else {
        [timerScore invalidate];
    }
    if (countDown == 0) {
        countScore = 0;
        [sender setTitle:@"Restart" forState:UIControlStateNormal];
    }
}

-(void)countingDown {
    countDown--;
    self.getReadyLabel.text = [NSString stringWithFormat:@"%i", countDown];
    if (countDown == 0) {
        [timerCountDown invalidate];
        countScore = 0;
        self.timerLabel.text = [NSString stringWithFormat:@"%i", countScore];
        timerScore = [NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(countingScore) userInfo:nil repeats:YES];
    }
}

-(void)countingScore {
    countScore++;
    self.timerLabel.text = [NSString stringWithFormat:@"%i", countScore];
}

@end
