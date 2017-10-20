#import <AVFoundation/AVFoundation.h>


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <AVAudioPlayerDelegate>



@property (weak, nonatomic) IBOutlet UIProgressView *playProgressView;
@property (nonatomic) AVAudioPlayer *audioPlayer;


-(IBAction)playAudio:(id)sender;
@end

