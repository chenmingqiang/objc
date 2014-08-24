//
//  ViewController.h
//  KeepMemory
//
//  Created by Mingqiang Chen on 8/23/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIAlertViewDelegate>
{
         UITextView *textView;
         UIImageView *imageView;
         NSString *lastChosenMediaType;
}

@property(nonatomic,retain)  IBOutlet UITextView  *textView;
@property(nonatomic,retain)  IBOutlet UIImageView *imageView;
@property(nonatomic,copy)    NSString *lastChosenMediaType;

- (IBAction)onClick:(id)sender;

- (IBAction)takePhoto:(id)sender;

@end

