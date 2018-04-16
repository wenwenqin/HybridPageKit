//
//  MediaController.m
//  HybridPageKit
//
//  Created by dequanzhu.
//  Copyright © 2018 HybridPageKit. All rights reserved.
//

#import "MediaController.h"

@implementation MediaController
-(BOOL)shouldResponseWithComponentView:(__kindof UIView *)componentView
                         componentModel:(RNSObject *)componentModel{
    return [componentView class] == [MediaView class] && [componentModel class] == [MediaModel class];
}

- (void)controllerInit:(__kindof HPKViewController *)controller{
    
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

//webview
- (void)webViewDidFinishNavigation:(__kindof HPKWebView *)webView{
    
}
- (void)webViewDidShow:(__kindof HPKWebView *)webView{
    
}
- (void)webViewScrollViewDidScroll:(__kindof HPKWebView *)webView{
    
}

//component scroll
- (void)scrollViewWillDisplayComponentView:(__kindof UIView *)componentView
                            componentModel:(RNSObject *)componentModel{
   [((MediaView *)componentView) layoutWithData:(MediaModel *)componentModel];
}

- (void)scrollViewEndDisplayComponentView:(__kindof UIView *)componentView
                           componentModel:(RNSObject *)componentModel{
    NSLog(@"");
}

- (void)scrollViewWillPrepareComponentView:(__kindof UIView *)componentView
                            componentModel:(RNSObject *)componentModel{
    NSLog(@"");
}

- (void)scrollViewEndPrepareComponentView:(__kindof UIView *)componentView
                           componentModel:(RNSObject *)componentModel{
    NSLog(@"");
}
@end
