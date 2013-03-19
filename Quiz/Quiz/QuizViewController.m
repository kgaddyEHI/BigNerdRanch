//
//  QuizViewController.m
//  Quiz
//
//  Created by kgaddy on 3/13/13.
//  Copyright (c) 2013 kgaddy. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController


-(IBAction)showQuestion:(id)sender
{
    //step to the next question
    currentQuesionIndex ++;
    //am I past the last question?
    if(currentQuesionIndex==[questions count])
    {
        //goto first question
        currentQuesionIndex=0;
    }
    
    NSString *question = [questions objectAtIndex:currentQuesionIndex];
    //display in the question field
    [questionField setText:question];
    
    //clear the answer field
    [answerField setText:@"???"];
    
}

-(IBAction)showAnswer:(id)sender
{
    //get the answer
    NSString *answer = [answers objectAtIndex:currentQuesionIndex];
    [answerField setText:answer];
    
    
}


-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //call the method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
        // create 2 arrays and make pointers to them.
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        //add to the arrays
        [questions addObject:@"What is 7+7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        currentQuesionIndex=0;
        
    }
    return self;
}

@end
