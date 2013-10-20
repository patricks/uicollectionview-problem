//
//  MainViewController.m
//  CollectionViewTest
//
//  Created by Patrick Steiner on 18.10.13.
//  Copyright (c) 2013 Patrick Steiner. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property NSArray *collectionitems;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _collectionitems = @[@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"W", @"X", @"Y", @"Z"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testButtonPressed:(id)sender {
    NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
    NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
    
    NSString *itemValue = _collectionitems[indexPath.row];
    
    if ([indexPaths count] > 0) {
        NSLog(@"Selected item: %@", itemValue);
    } else {
        NSLog(@"Nothing selected.");
    }
}

#pragma mark - collection view stuff

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
@end
