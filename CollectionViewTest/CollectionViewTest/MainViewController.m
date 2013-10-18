//
//  MainViewController.m
//  CollectionViewTest
//
//  Created by Patrick Steiner on 18.10.13.
//  Copyright (c) 2013 Patrick Steiner. All rights reserved.
//

#import "MainViewController.h"
#import "CollectionViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) CollectionViewController *collectionViewController;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _collectionViewController = [[CollectionViewController alloc] initWithCollectionViewLayout:_collectionView.collectionViewLayout];
    
    _collectionView.dataSource = _collectionViewController;
    _collectionView.delegate = _collectionViewController;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testButtonPressed:(id)sender {
    [_collectionViewController outputSelectedCell];
}
@end
