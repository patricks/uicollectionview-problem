//
//  MainViewController.h
//  CollectionViewTest
//
//  Created by Patrick Steiner on 18.10.13.
//  Copyright (c) 2013 Patrick Steiner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

- (IBAction)testButtonPressed:(id)sender;

@end
