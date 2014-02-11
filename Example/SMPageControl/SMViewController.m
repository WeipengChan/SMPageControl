//
//  SMViewController.m
//  SMPageControl
//
//  Created by Jerry Jones on 10/13/12.
//  Copyright (c) 2012 Spaceman Labs. All rights reserved.
//

#import "SMViewController.h"

@interface SMViewController ()

@end

@implementation SMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"retro_intro"]];
		
	self.spacePageControl1.numberOfPages = 10;
	self.spacePageControl2.numberOfPages = 10;
	self.spacePageControl3.numberOfPages = 10;
	self.spacePageControl4.numberOfPages = 10;
	self.spacePageControl5.numberOfPages = 10;
	self.spacePageControl6.numberOfPages = 10;
	self.spacePageControl7.numberOfPages = 10;
	
	self.spacePageControl7.indicatorMargin = 20.0f;
	self.spacePageControl7.indicatorDiameter = 10.0f;
	
	self.spacePageControl2.alignment = SMPageControlAlignmentLeft;
	self.spacePageControl3.alignment = SMPageControlAlignmentRight;
	
	[self.spacePageControl4 setPageIndicatorImage:[UIImage imageNamed:@"pageDot"]];
	[self.spacePageControl4 setCurrentPageIndicatorImage:[UIImage imageNamed:@"currentPageDot"]];

	[self.spacePageControl5 setPageIndicatorImage:[UIImage imageNamed:@"pageDot"]];
	[self.spacePageControl5 setCurrentPageIndicatorImage:[UIImage imageNamed:@"currentPageDot"]];
	[self.spacePageControl5 setImage:[UIImage imageNamed:@"searchDot"] forPage:0];
	[self.spacePageControl5 setCurrentImage:[UIImage imageNamed:@"currentSearchDot"] forPage:0];
	[self.spacePageControl5 setImage:[UIImage imageNamed:@"appleDot"] forPage:1];
	[self.spacePageControl5 setCurrentImage:[UIImage imageNamed:@"currentAppleDot"] forPage:1];
	self.spacePageControl5.currentPage = 3;
	
	[self.spacePageControl6 setPageIndicatorImage:[UIImage imageNamed:@"pageDot"]];
	[self.spacePageControl6 setCurrentPageIndicatorImage:[UIImage imageNamed:@"currentPageDot"]];
	[self.spacePageControl6 setImage:[UIImage imageNamed:@"searchDot"] forPage:0];
	[self.spacePageControl6 setCurrentImage:[UIImage imageNamed:@"currentSearchDot"] forPage:0];
	[self.spacePageControl6 setImage:[UIImage imageNamed:@"appleDot"] forPage:1];
	[self.spacePageControl6 setCurrentImage:[UIImage imageNamed:@"currentAppleDot"] forPage:1];
	self.spacePageControl6.currentPage = 4;
	
	[self.pageControl addTarget:self action:@selector(pageControl:) forControlEvents:UIControlEventValueChanged];
	[self.spacePageControl1 addTarget:self action:@selector(spacePageControl:) forControlEvents:UIControlEventValueChanged];
	[self.spacePageControl2 addTarget:self action:@selector(spacePageControl:) forControlEvents:UIControlEventValueChanged];
	[self.spacePageControl3 addTarget:self action:@selector(spacePageControl:) forControlEvents:UIControlEventValueChanged];
	[self.spacePageControl4 addTarget:self action:@selector(spacePageControl:) forControlEvents:UIControlEventValueChanged];
	[self.spacePageControl5 addTarget:self action:@selector(spacePageControl:) forControlEvents:UIControlEventValueChanged];
	[self.spacePageControl6 addTarget:self action:@selector(spacePageControl:) forControlEvents:UIControlEventValueChanged];
	[self.spacePageControl7 addTarget:self action:@selector(spacePageControl:) forControlEvents:UIControlEventValueChanged];
}

- (void)pageControl:(id)sender
{
	NSLog(@"Current Page (UIPageControl) : %i", self.pageControl.currentPage);
}

- (void)spacePageControl:(SMPageControl *)sender
{
	NSLog(@"Current Page (SMPageControl): %i", sender.currentPage);
}

@end
