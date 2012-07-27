//
//  BNRHelloShapesViewController.m
//  HelloShapes
//
//  Created by Jonathan Blocksom on 7/27/12.
//  Copyright (c) 2012 Big Nerd Ranch, Inc. All rights reserved.
//

#import "BNRHelloShapesViewController.h"

#import <SceneKit/SceneKit.h>

@interface BNRHelloShapesViewController ()

@end

@implementation BNRHelloShapesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)awakeFromNib
{
    SCNView *sceneView = (SCNView *)self.view;
    sceneView.backgroundColor = [NSColor blueColor];
}

@end
