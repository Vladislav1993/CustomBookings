//
//  PaxRequestToView.m
//  CPACustomBookings
//
//  Created by Vlad on 28.04.16.
//  Copyright © 2016 Vlad. All rights reserved.
//

#import "PaxRequestToView.h"

@interface PaxRequestToView ()

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@end

@implementation PaxRequestToView

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setDate:(NSString *)date {
    _dateLabel.text = date;
}

- (void)setPrice:(NSString *)price {
    [self writeTextWithString:price];
}

- (void)writeTextWithString:(NSString *)pastString {
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@", pastString]];
    [string addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor] range:NSMakeRange(0, string.length)];
    
    NSMutableAttributedString *string2 = [[NSMutableAttributedString alloc] initWithString:@"AED"];
    [string2 addAttribute:NSForegroundColorAttributeName value:[UIColor grayColor] range:NSMakeRange(0, string2.length)];
    [string appendAttributedString:string2];
    
    [_priceLabel setAttributedText:string];
}

- (IBAction)requestAction:(id)sender {
    NSLog(@"CLICK TO REQUEST IN FIND DRIVER");
}

@end
