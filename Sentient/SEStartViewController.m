//
//  SEStartViewController.m
//  Sentient
//
//  Created by Kostya on 16.08.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "SEStartViewController.h"

@interface SEStartViewController ()

@property (weak, nonatomic) IBOutlet UIView *gifView;

@end

@implementation SEStartViewController

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
    [super viewDidLoad];
    YLImageView* imageView = [[YLImageView alloc] initWithFrame:CGRectMake(0, 0, self.gifView.frame.size.width, self.gifView.frame.size.height)];
   
    imageView.image = [YLGIFImage imageNamed:@"brain.gif"];
  [self.gifView addSubview:imageView];
}


@end
