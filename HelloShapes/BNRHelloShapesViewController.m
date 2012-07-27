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

    // Create the scene and get the root
    sceneView.scene = [SCNScene scene];
    SCNNode *root = sceneView.scene.rootNode;
    
    // Create the cube geometry and node
    SCNBox *cubeGeom = [SCNBox boxWithWidth:1.0
                                     height:1.0
                                     length:1.0
                              chamferRadius:0.0];
    SCNNode *cubeNode = [SCNNode nodeWithGeometry:cubeGeom];
    [root addChildNode:cubeNode];

    // Add cylinder
    SCNCylinder *cylGeom = [SCNCylinder cylinderWithRadius:0.5 height:1.0];
    SCNNode *cylNode = [SCNNode nodeWithGeometry:cylGeom];
    cylNode.position = SCNVector3Make(1.5, 0.0, 0.0);
    [root addChildNode:cylNode];
    
    // Add sphere
    SCNSphere *sphereGeom = [SCNSphere sphereWithRadius:0.5];
    SCNNode *sphereNode = [SCNNode nodeWithGeometry:sphereGeom];
    sphereNode.position = SCNVector3Make(3.0, 0.0, 0.0);
    [root addChildNode:sphereNode];

    // Turn on the lights!
    SCNLight *light = [SCNLight light];
    light.type = SCNLightTypeDirectional;
    root.light = light;
}

@end
