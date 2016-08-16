//
//  SEInteractiveViewController.m
//  Sentient
//
//  Created by Kostya on 16.08.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "SEInteractiveViewController.h"

@interface SEInteractiveViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *heart;
@property (weak, nonatomic) IBOutlet UIView *heartView;
@property NSTimer *timer1;
@property NSTimer *timer2;
@end

@implementation SEInteractiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    if([textField.text isEqual:@"I love you"]){
        [self.timer2 invalidate];
        [self setHeart];
        self.timer1 = [NSTimer scheduledTimerWithTimeInterval: 1.0
                                                          target: self
                                                        selector:@selector(dataAnimation)
                                                        userInfo: nil repeats:YES];
        NSLog(@"text done");
    }
    else if([textField.text isEqual:@"I dont love you"]){
        [self.timer1 invalidate];
        [self setHeart];
        self.timer2 = [NSTimer scheduledTimerWithTimeInterval: 2.0
                                                          target: self
                                                        selector:@selector(dataAnimation1)
                                                        userInfo: nil repeats:YES];
    }
        else if([textField.text isEqual:@"please stop"]){
            [self.timer1 invalidate];
            [self.timer2 invalidate];
    
    }
    
        else if([textField.text isEqual:@"show brain"]){
            [self.timer1 invalidate];
            [self.timer2 invalidate];
            YLImageView* imageView1 = [[YLImageView alloc] initWithFrame:CGRectMake(0, 0, self.heartView.frame.size.width, self.heartView.frame.size.height)];
            
            imageView1.image = [YLGIFImage imageNamed:@"giphy.gif"];
            [self.heartView addSubview:imageView1];
        

        }
    
    return YES;
}


-(void)dataAnimation
{
    
[self.heartView pulse:NULL];
   

}

-(void)dataAnimation1
{
    
   [self.heartView swing:NULL];
}

-(void)setHeart
{
    YLImageView* imageView = [[YLImageView alloc] initWithFrame:CGRectMake(0, 0, self.heartView.frame.size.width, self.heartView.frame.size.height)];
    
    imageView.image = [YLGIFImage imageNamed:@"heart.gif"];
    [self.heartView addSubview:imageView];
    [self.heartView expandIntoView:self.view finished:NULL];
   
}
@end
