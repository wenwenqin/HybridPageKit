//
//  FoldedController.m
//  HybridPageKit
//
//  Created by dequanzhu.
//  Copyright © 2018 HybridPageKit. All rights reserved.
//

#import "FoldedController.h"
#import "HPKViewController.h"

@interface FoldedController()
@property(nonatomic,weak,readwrite) __kindof HPKViewController *controller;
@property(nonatomic,weak,readwrite)FoldedModel *foldedModel;
@end

@implementation FoldedController



#pragma mark -

-(BOOL)shouldResponseWithComponentView:(__kindof UIView *)componentView
                        componentModel:(RNSObject *)componentModel{
    return [componentView class] == [FoldedView class] && [componentModel class] == [FoldedModel class];
}

- (void)controllerInit:(__kindof HPKViewController *)controller{
    _controller = controller;
}
- (void)controllerViewDidLoad:(__kindof HPKViewController *)controller{
    
}
- (void)controllerViewWillAppear:(__kindof HPKViewController *)controller{
    
}
- (void)controllerViewDidAppear:(__kindof HPKViewController *)controller{
    
}
- (void)controllerViewWillDisappear:(__kindof HPKViewController *)controller{
    
}
- (void)controllerViewDidDisappear:(__kindof HPKViewController *)controller{
    
}

//data
- (void)controller:(__kindof HPKViewController *)controller
    didReceiveData:(NSObject *)data{
    
}

//component scroll
- (void)scrollViewWillDisplayComponentView:(__kindof UIView *)componentView
                            componentModel:(RNSObject *)componentModel{
}

- (void)scrollViewEndDisplayComponentView:(__kindof UIView *)componentView
                           componentModel:(RNSObject *)componentModel{
}

- (void)scrollViewWillPrepareComponentView:(__kindof UIView *)componentView
                            componentModel:(RNSObject *)componentModel{
    
    _foldedModel = (FoldedModel *)componentModel;
    
    __weak typeof(self) wself = self;
    [((FoldedView *)componentView) layoutWithData:_foldedModel clickBlock:^(CGFloat height) {
        [wself.foldedModel setComponentHeight:height];
        [wself.controller reLayoutExtensionComponents];
    }];
}

- (void)scrollViewEndPrepareComponentView:(__kindof UIView *)componentView
                           componentModel:(RNSObject *)componentModel{
}
@end
