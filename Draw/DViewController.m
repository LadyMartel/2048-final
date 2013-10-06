//
//  DViewController.m
//  Draw
//
//  Created by Rose on 10/5/13.
//  Copyright (c) 2013 LadyMartel. All rights reserved.
//

#import "DViewController.h"

@interface DViewController ()
@property (strong, nonatomic) IBOutlet UILabel *welcomeLabel;
@end

@implementation DViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

-(void) viewDidAppear:(BOOL)animated
{
    NSString *name = [[NSUserDefaults standardUserDefaults]objectForKey:@"name"];
    NSString *trimmedName = [name stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSString *greeting = @"Hello";
    self.welcomeLabel.text = [NSString stringWithFormat:@"%@, %@!", greeting, trimmedName];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clearAccountButton:(id)sender {
    [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"name"];
}

@end
