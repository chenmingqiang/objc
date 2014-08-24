//
//  ViewController.m
//  KeepMemory
//
//  Created by Mingqiang Chen on 8/23/14.
//  Copyright (c) 2014 mqchen. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import <QuartzCore/CoreAnimation.h>
#import <MobileCoreServices/UTCoreTypes.h>

@interface ViewController ()


@end

@implementation ViewController

@synthesize imageView, textView, lastChosenMediaType;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClick:(id)sender {
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"请选择图片来源" message:@"" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"拍摄",@"手机相册", nil];
    [alert show];
}

- (IBAction)takePhoto:(id)sender {
     [self getMediaFromSource:UIImagePickerControllerSourceTypeCamera];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex==1) {
        [self shootPicturePrVideo];
    } else if(buttonIndex==2) {
        [self selectExistingPictureOrVideo];
    }
}

-(void)shootPicturePrVideo{
    [self getMediaFromSource:UIImagePickerControllerSourceTypeCamera];
}

-(void)selectExistingPictureOrVideo{
    [self getMediaFromSource:UIImagePickerControllerSourceTypePhotoLibrary];
}

-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    self.lastChosenMediaType = [info objectForKey:UIImagePickerControllerMediaType];
    if([lastChosenMediaType isEqual:(NSString *) kUTTypeImage])
    {
        UIImage *chosenImage=[info objectForKey:UIImagePickerControllerEditedImage];
        imageView.image=chosenImage;
    }
    
    if([lastChosenMediaType isEqual:(NSString *) kUTTypeMovie])
    {
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"提示信息!" message:@"系统只支持图片格式" delegate:nil cancelButtonTitle:@"确认" otherButtonTitles: nil];
        [alert show];
        
    }
    
    [picker dismissModalViewControllerAnimated:YES];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) imagePickerControllerDidCancel:(UIImagePickerController *)picker{
         [picker dismissModalViewControllerAnimated:YES];
}

-(void)getMediaFromSource:(UIImagePickerControllerSourceType)sourceType
 {
     NSArray *mediatypes=[UIImagePickerController availableMediaTypesForSourceType:sourceType];
     if([UIImagePickerController isSourceTypeAvailable:sourceType] &&[mediatypes count]>0) {
         NSArray *mediatypes=[UIImagePickerController availableMediaTypesForSourceType:sourceType];
         UIImagePickerController *picker=[[UIImagePickerController alloc] init];
         picker.mediaTypes=mediatypes;
         picker.delegate=self;
         picker.allowsEditing=YES;
         picker.sourceType=sourceType;
         NSString *requiredmediatype=(NSString *)kUTTypeImage;
         NSArray *arrmediatypes=[NSArray arrayWithObject:requiredmediatype];
         [picker setMediaTypes:arrmediatypes];
         [self presentModalViewController:picker animated:YES];
     } else{
         UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"错误信息!" message:@"当前设备不支持拍摄功能" delegate:nil cancelButtonTitle:@"确认" otherButtonTitles: nil];
         [alert show];
     }
 }

static UIImage *shrinkImage(UIImage *orignal,CGSize size)
{
    CGFloat scale=[UIScreen mainScreen].scale;
    CGColorSpaceRef colorSpace=CGColorSpaceCreateDeviceRGB();
    CGContextRef context=CGBitmapContextCreate(NULL, size.width *scale,size.height*scale, 8, 0, colorSpace, kCGImageAlphaPremultipliedFirst);
    CGContextDrawImage(context, CGRectMake(0, 0, size.width*scale, size.height*scale), orignal.CGImage);
    CGImageRef shrunken=CGBitmapContextCreateImage(context);
    UIImage *final=[UIImage imageWithCGImage:shrunken];
    CGContextRelease(context);
    CGImageRelease(shrunken);
    return  final;
}

@end
