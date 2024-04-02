//
//  ViewController.h
//  sem5
//
//  Created by Михаил Тамбов on 02.04.2024.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (nonatomic) Loader *loader;

@end

