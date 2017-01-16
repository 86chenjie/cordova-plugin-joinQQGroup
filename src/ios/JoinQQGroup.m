#import "JoinQQGroup.h"
#import <Cordova/CDVPluginResult.h>

@implementation JoinQQGroup

- (void)open:(CDVInvokedUrlCommand *)command{

    NSDictionary *params = [command.arguments objectAtIndex:0];
    NSString *uin = [params objectForKey:@"uin"];
    NSString *key = [params objectForKey:@"key"];

    /*

    NSString *urlStr = [NSString stringWithFormat:@"mqqapi://card/show_pslcard?src_type=internal&version=1&uin=%@&key=%@&card_type=group&source=external", uin,key];
    //NSString *urlStr = [NSString stringWithFormat:@"mqqapi://card/show_pslcard?src_type=internal&version=1&uin=%@&key=%@&card_type=group&source=external", @"498644453",@"6ee13036eb460cdc01956799fae6c917dbe828a11dc624aaf23753317ba4ff07"];

    NSURL *url = [NSURL URLWithString:urlStr];
    if([[UIApplication sharedApplication] canOpenURL:url]){
        [[UIApplication sharedApplication] openURL:url];
        //return YES;
    }
    //else return NO;
    */


    //是否安装QQ
    if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"mqq://"]])
    {
       //用来接收临时消息的客服QQ号码(注意此QQ号需开通QQ推广功能,否则陌生人向他发送消息会失败)
       NSString *QQ = @"1099779883";
       //调用QQ客户端,发起QQ临时会话
       NSString *url = [NSString stringWithFormat:@"mqq://im/chat?chat_type=wpa&uin=%@&version=1&src_type=web",key];
       [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
    }

}

@end
