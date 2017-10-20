#import "ViewController.h"


@implementation ViewController
NSTimer* myTimeer;


- (void)viewDidLoad {
    [super viewDidLoad];
}

-(IBAction)playAudio:(id)sender
{
    NSString *path = [[NSBundle mainBundle]
                      pathForResource:@"33 Hey Brother" ofType:@"mp3"];
    
    // NSURL
    
    _audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:
                   [NSURL fileURLWithPath:path] error:NULL];
    
    
    [_audioPlayer play];
    
    
    myTimeer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                                         target:self
                                                       selector:@selector(progressMethod:)
                                                       userInfo:nil
                                                        repeats:YES];
    
    
    _playProgressView.progress = 0;

}

-(void)progressMethod:(NSTimer*)timer {
    
    float currentProgFloat = _audioPlayer.currentTime / _audioPlayer.duration;
    
    _playProgressView.progress = currentProgFloat;
}

-(void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag
{
    
    [myTimeer invalidate];
    _playProgressView.progress = 0;
}


@end
