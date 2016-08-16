//
//  SETableViewCell.h
//  Sentient
//
//  Created by Kostya on 16.08.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SETableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *description1;

@end
