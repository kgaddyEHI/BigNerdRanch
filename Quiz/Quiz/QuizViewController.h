//
//  QuizViewController.h
//  Quiz
//
//  Created by kgaddy on 3/13/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
NSMutableArray *questions;
NSMutableArray *answers;
int currentQuesionIndex;
IBOutlet UILabel *questionField;
IBOutlet UILabel *answerField;
}

-(IBAction)showQuestion:(id)sender;
-(IBAction)showAnswer:(id)sender;
@end
