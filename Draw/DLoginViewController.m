//
//  DLoginViewController.m
//  Draw
//
//  Created by Rose on 10/5/13.
//  Copyright (c) 2013 LadyMartel. All rights reserved.
//

#import "DLoginViewController.h"

@interface DLoginViewController ()

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation DLoginViewController

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
}

- (void) viewDidAppear:(BOOL)animated
{
    NSString *name = [[NSUserDefaults standardUserDefaults]objectForKey:@"name"];
    if(name != nil){
         [self performSegueWithIdentifier:@"skipView" sender:self];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)saveUserButton:(id)sender {
    
    [[NSUserDefaults standardUserDefaults]setObject: self.nameTextField.text forKey:@"name"];
    
}

@end
