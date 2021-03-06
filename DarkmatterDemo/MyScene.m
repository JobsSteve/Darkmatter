//
//  MyScene.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "MyScene.h"
#import <Darkmatter/DMGraphics.h>

@implementation MyScene

@synthesize obj;

- (void)prepare {
	[super prepare];
	self.camera.z = 12;
	obj = [DMObject new];
}	

- (void)drawObjects {
	glColor3f(0.65f, 1.0f, 0.45f);
    glBegin(GL_TRIANGLES);
	{
		for(int x=-20; x<20; x++){
			for(int y=-20; y<20; y++){
				float a = 1;
				glVertex3f( .5+x*a+a*.95, y*a+a*.95, 0);
				glVertex3f( .5+x*a, y*a+a*.95, 0);
				glVertex3f( .5+x*a+a*.95, y*a, 0);
				glVertex3f( .5+x*a+a*.95, y*a, 0);
				glVertex3f( .5+x*a, y*a, 0);
				glVertex3f( .5+x*a, y*a+a*.95, 0);
			}
		}
	}
    glEnd();
	
	[obj draw];
}

@end
