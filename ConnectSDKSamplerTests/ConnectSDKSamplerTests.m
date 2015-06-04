//
//  ConnectSDKSamplerTests.m
//  ConnectSDKSamplerTests
//
//  Created by Eugene Nikolskyi on 2015-04-06.
//  Copyright (c) 2015 LGE. All rights reserved.
//

#import "SystemViewController.h"

#import <Expecta.h>
#import <Specta.h>

SpecBegin(SystemViewController)

describe(@"mute switch", ^{
    it(@"should be on when muted", ^{
        SystemModel *model = [SystemModel new];

        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"MainStoryboard"
                                                     bundle:[NSBundle mainBundle]];
        SystemViewController *vc = [sb instantiateViewControllerWithIdentifier:@"SystemVC"];
//        [vc loadView];
//        SystemViewController *vc = [SystemViewController new];
        vc.systemModel = model;
        // poke the view
        [vc view];
//        vc.view, [vc viewDidLoad];

        model.isMuted = YES;
        // sanity check
//        expect(vc.isViewLoaded).beTruthy();
        expect(vc.muteSwitch).notTo.beNil();
        expect(vc.muteSwitch.on).beTruthy();
    });
});

SpecEnd
