//
//  SETableViewController.m
//  Sentient
//
//  Created by Kostya on 16.08.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "SETableViewController.h"

@interface SETableViewController ()
@property (copy, nonatomic) NSArray *data;
@property (copy, nonatomic) NSArray *data2;
@end

@implementation SETableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
      self.data = [NSArray arrayWithObjects:@"The White Snake vfvfvfvfvfvfvfvnkvvn;wenv;wner;vkwenj;vwn;rejvwn",@"The Boy Who Cried Wolf",@"Helen of Troy",nil];
     self.data2 = [NSArray arrayWithObjects:@"The White Snakwefmnqlkwnflqkwneflqnwelfknqlkwenflqknweflqnwefnq;nwefkqnewl;kfnqlkwnef;nqkwenfq qwefnqlnewflkqnwe fqlwenfq lwefknq wekfnqwe fkqwe fkqew fqwemf qwefnq wekfmqe fqewmf qmwefqnkl ewfqwefn qwlef qew flqwefq wejfkqn wekjf qwefe vfvfvfvfvfvfvfvnkvvn;wenv;wner;vkwenj;vwn;rejvwn",@"The Boy Who Criedqirevqio'jrv'ioqnerv qrv qirnvqnrvjnqrkv qrj;nv qrkv jq rjnvqk;r vkjnq;r vkq rjkvqnr vjq; rvq Wolf",@"Helen of qjr;vnq;frqjkrfnq rf qjnrf qr fqrfjnqjkrnfjqnrf;nq rfqrfnjqnfrjq;rjfnqknrfjqnfjkq rfkjq rjfnjq rfjkqrfj qfnrjq rfkq rjkf qrjkfq rfnqjnrfjknq rf qjrf qkn rfjqrjkf qkr fjkq rfn qjr f. qrjkfq rfjkqrfnqrf qjrf qr fjq rfj qjr fjqnr fjq rfhqj rfjkq rfn qrfj qrjkfn qrnf qjkr fqnrf hj qkr vkq rvnjq nrv ;qk rvnq nrv qn rvq;kr vqkr vqnrv qnmrvq rv qrv;nq rvq;rn vTroy",nil];
 
    [self.tableView registerNib:[UINib nibWithNibName:@"cell" bundle:nil] forCellReuseIdentifier:@"CustomCell"];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.estimatedRowHeight = 80;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self.tableView setNeedsLayout];
    [self.tableView layoutIfNeeded];
    
    //self.tableView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0) ;// Status bar inset
}



#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.data count];
}


-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellIdentify = @"CustomCell";
           SETableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
        if (!cell)
        {
            [tableView registerNib:[UINib nibWithNibName:@"cell" bundle:nil] forCellReuseIdentifier:cellIdentify];
            cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
        }
        cell.title.text = [self.data objectAtIndex:indexPath.row];
        cell.description1.text = [self.data2 objectAtIndex:indexPath.row];
        cell.image.image = [UIImage imageNamed:@"heart.gif"];
        return cell;
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewAutomaticDimension;
}

@end
