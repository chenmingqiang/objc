//
//  ViewController.m
//  WebViewDemo
//
//  Created by Mingqiang Chen on 8/20/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    NSURLRequest *request = [NSURLRequest requestWithURL: [NSURL URLWithString: @"http://www.baidu.com"]];
    [self.view addSubview: webView];
    [webView loadRequest: request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
