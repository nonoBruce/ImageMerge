//
//  ViewController.m
//  ImageMerge
//


#import "ViewController.h"
#import "ImageMerge.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *imageArray = [[NSArray alloc] initWithObjects:
                         [UIImage imageNamed:@"image1.png"],
                         //[UIImage imageNamed:@"image2.png"],
                         nil];
    UIImage *image = [UIImage imageNamed:@"bg_image.png"];
    UIImage *imagesMerge = [ImageMerge mergeWithMainImage:image andImageArray:imageArray];
    self.imageView.image = imagesMerge;

}




@end
