//
//  CollectionViewController.m
//  CollectionViewTest
//
//  Created by Patrick Steiner on 18.10.13.
//  Copyright (c) 2013 Patrick Steiner. All rights reserved.
//

#import "CollectionViewController.h"

@interface CollectionViewController ()

@property NSArray *collectionitems;

@end

@implementation CollectionViewController

- (id)initWithCollectionViewLayout:(UICollectionViewLayout *)layout
{
    self = [super initWithCollectionViewLayout:layout];
    if (self) {
        _collectionitems = @[@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"W", @"X", @"Y", @"Z"];
    }

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"DBG: collection view loaded");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section
{
    return [_collectionitems count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"customCell" forIndexPath:indexPath];
    
    return cell;
}


- (void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *stageButton = [collectionView cellForItemAtIndexPath:indexPath];
    stageButton.backgroundColor = [UIColor lightGrayColor];
}

- (void)collectionView:(UICollectionView *)collectionView didUnhighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *stageButton = [collectionView cellForItemAtIndexPath:indexPath];
    stageButton.backgroundColor = [UIColor greenColor];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Selected item: %i", indexPath.row);
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Unselected item: %i", indexPath.row);
}

- (void)outputSelectedCell
{
    NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
    
    if ([indexPaths count] > 0) {
        NSLog(@"Selected items: %i", [indexPaths count]);
    } else {
        NSLog(@"Nothing selected.");
    }
}

@end
