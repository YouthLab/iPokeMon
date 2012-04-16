//
//  PokemonMemoViewController.m
//  Pokemon
//
//  Created by Kaijie Yu on 2/6/12.
//  Copyright (c) 2012 Kjuly. All rights reserved.
//

#import "SixPokemonsMemoViewController.h"

@implementation SixPokemonsMemoViewController

- (void)dealloc {
  [super dealloc];
}

- (void)didReceiveMemoryWarning
{
  // Releases the view if it doesn't have a superview.
  [super didReceiveMemoryWarning];
  
  // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
  [super loadView];
  
  // Constants
  CGRect  const descriptionFrame  = CGRectMake(10.f, 10.f, 300.f, 190.f);
  
  ///Memo
  UITextView * memoField = [[UITextView alloc] initWithFrame:descriptionFrame];
  [memoField setBackgroundColor:
    [UIColor colorWithPatternImage:[UIImage imageNamed:@"PokemonDetailDescriptionBackground.png"]]];
  [memoField setOpaque:NO];
  [memoField setEditable:NO];
  [memoField setFont:[GlobalRender textFontNormalInSizeOf:14.f]];
  [memoField setTextColor:[GlobalRender textColorNormal]];
  [memoField setText:NSLocalizedString(self.pokemon.memo, nil)];
  [self.view addSubview:memoField];
  [memoField release];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
  [super viewDidLoad];
}

- (void)viewDidUnload {
  [super viewDidUnload];
}

@end
