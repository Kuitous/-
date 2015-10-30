//
//  ViewController.m
//  kxmenu
//
//  Created by Kolyvan on 17.05.13.
//  Copyright (c) 2013 Konstantin Bukreev. All rights reserved.
//

#import "ViewController.h"
#import "KxMenu.h"
@interface ViewController ()

@end

@implementation ViewController{
    NSArray *menuItems0;
    NSArray *menuItems1;
    NSArray *menuItems;
    UIButton * _tmpBtn;
    int j;
    int j0;
    int j1;
    int aniu0;
    int aniu1;
    int aniu2;
    NSString *shou;
    NSMutableArray * array;
    NSMutableArray * imagearray;
    UIImageView *image;
    NSString *imagearr;
    KxMenuOverlay *kx;
}

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
 
    UIView *vieww=[[UIView alloc]initWithFrame:CGRectMake(100, 300, 100, 100)];
    vieww.backgroundColor=[UIColor redColor];
    [self.view addSubview:vieww];
    
    self.view.backgroundColor = [UIColor yellowColor];

    
    [self button];

}
-(void)button
{
    
    const CGFloat W = self.view.bounds.size.width;
    
    array = [NSMutableArray arrayWithObjects:@"颜色",@"牌照",@"排序",nil];
    UIColor *colo=[UIColor colorWithRed:18/255.0f green:152/255.0f blue:233/255.0f alpha:1];
    for (int i = 0; i<3; i ++) {
        _tmpBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _tmpBtn.frame=CGRectMake(W/3*i, 50, W/3, 50);

        [_tmpBtn setImage:[UIImage imageNamed:@"白色.jpeg"] forState:UIControlStateNormal];
        [_tmpBtn setImage:[UIImage imageNamed:@"红色.jpeg"] forState:UIControlStateSelected];
        [_tmpBtn setTitle:[array objectAtIndex:i] forState:UIControlStateNormal];
        [_tmpBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [_tmpBtn setTitleColor:colo forState:UIControlStateSelected];
        [_tmpBtn setTitleEdgeInsets:UIEdgeInsetsMake(0, -30, 0,30 )];
        [_tmpBtn setImageEdgeInsets:UIEdgeInsetsMake(0,0 ,0,-W/3 )];
        
        [_tmpBtn.titleLabel setFont:[UIFont systemFontOfSize:13]];
        [_tmpBtn.layer setBorderWidth:0.3];
        _tmpBtn.tag=i;
        _tmpBtn.userInteractionEnabled = YES;
        [_tmpBtn addTarget:self action:@selector(btnt:) forControlEvents:UIControlEventTouchUpInside];
        [_tmpBtn setBackgroundColor:[UIColor whiteColor]];
        [_tmpBtn setTag:i];
        _tmpBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        [self.view addSubview:_tmpBtn];
    }
    
    
}

-(void)btnt:(UIButton *)sender
{
//     if ([[NSString stringWithFormat:@"%ld",(long)btn.tag]intValue]==0)
    switch(sender.tag){
        case 0:{
            
            menuItems0 =
            @[
              
              [KxMenuItem menuItem:@"黑色"
                             image:[UIImage imageNamed:@"黑色.jpeg"]
                            target:self
                            action:@selector(pushMenuItem0:)],
              
              [KxMenuItem menuItem:@"白色"
                             image:[UIImage imageNamed:@"白色.jpeg"]
                            target:self
                            action:@selector(pushMenuItem0:)],
              
              [KxMenuItem menuItem:@"红色"
                             image:[UIImage imageNamed:@"红色.jpeg"]
                            target:self
                            action:@selector(pushMenuItem0:)],
              
              [KxMenuItem menuItem:@"金色"
                             image:[UIImage imageNamed:@"金色.jpeg"]
                            target:self
                            action:@selector(pushMenuItem0:)],
              
              [KxMenuItem menuItem:@"其他色"
                             image:[UIImage imageNamed:@"其他色.jpeg"]
                            target:self
                            action:@selector(pushMenuItem0:)],
              
              ];
           
            if (aniu0==0) {//此方法用于判断首次点击按钮,冒泡弹窗都是默认的灰色
                
            }else
            {
                KxMenuItem *first = menuItems0[j0];
                

                first.foreColor = [UIColor colorWithRed:18/255.0f green:152/255.0f blue:233/255.0f alpha:1];
                first.alignment = NSTextAlignmentLeft;

            }
            
            [KxMenu showMenuInView:self.view
                          fromRect:sender.frame
                         menuItems:menuItems0];

        }break;
        case 1:{
           
            menuItems1 =
            @[
              
              [KxMenuItem menuItem:@"本地"
                             image:[UIImage imageNamed:@"本地.jpeg"]
                            target:self
                            action:@selector(pushMenuItem1:)],
              
              [KxMenuItem menuItem:@"无4 (本地)"
                             image:[UIImage imageNamed:@"本地无4.jpeg"]
                            target:self
                            action:@selector(pushMenuItem1:)],
              
              [KxMenuItem menuItem:@"外地"
                             image:[UIImage imageNamed:@"外地.jpeg"]
                            target:self
                            action:@selector(pushMenuItem1:)],
              
              [KxMenuItem menuItem:@"无4 (外地)"
                             image:[UIImage imageNamed:@"外地无4.jpeg"]
                            target:self
                            action:@selector(pushMenuItem1:)],
              
              
              ];
            if (aniu1==0) {
                
            }else
            {
                KxMenuItem *first = menuItems1[j1];
                first.foreColor = [UIColor colorWithRed:18/255.0f green:152/255.0f blue:233/255.0f alpha:1];
                first.alignment = NSTextAlignmentLeft;
            }
           
            
            [KxMenu showMenuInView:self.view
                          fromRect:sender.frame
                         menuItems:menuItems1];
        }break;
        case 2:{
            
            menuItems =
            @[
              
              [KxMenuItem menuItem:@"综合排序"
                             image:[UIImage imageNamed:@"综合排序.jpeg"]
                            target:self
                            action:@selector(pushMenuItem:)],
              
              [KxMenuItem menuItem:@"价格低到高"
                             image:[UIImage imageNamed:@"价格低到高.jpeg"]
                            target:self
                            action:@selector(pushMenuItem:)],
              
              [KxMenuItem menuItem:@"接受率高"
                             image:[UIImage imageNamed:@"接受率高.jpeg"]
                            target:self
                            action:@selector(pushMenuItem:)],
              
              [KxMenuItem menuItem:@"最高评价"
                             image:[UIImage imageNamed:@"最高评价.jpeg"]
                            target:self
                            action:@selector(pushMenuItem:)],
              
              [KxMenuItem menuItem:@"次数最多"
                             image:[UIImage imageNamed:@"次数最多.jpeg"]
                            target:self
                            action:@selector(pushMenuItem:)],
              
              ];
            if (aniu2==0) {
                
            }else
            {
                KxMenuItem *first = menuItems[j];
                first.foreColor = [UIColor colorWithRed:18/255.0f green:152/255.0f blue:233/255.0f alpha:1];
                first.alignment = NSTextAlignmentLeft;
            }
           
            
            [KxMenu showMenuInView:self.view
                          fromRect:sender.frame
                         menuItems:menuItems];

        }break;
        default:
            break;
     
}
     
    if (_tmpBtn == nil){
        
        sender.selected = YES;
        _tmpBtn = sender;
    }
    else if (_tmpBtn !=nil && _tmpBtn == sender){
        sender.selected = YES;
        
    }
    else if (_tmpBtn!= sender && _tmpBtn!=nil){
        _tmpBtn.selected = NO;
        sender.selected = YES;
        _tmpBtn = sender;
    }
    
   
}


- (void) pushMenuItem:(KxMenuItem*)sender
{
    aniu2+=1;
    NSLog(@"第三个按钮%@", sender.title);
    
    for( int i  =0; i<menuItems.count; ++i) //n为数组长度
    {
         if([menuItems[i] title] == sender.title) //temp为要查找 的元素
           //i为该元素在数组中的位置
        j=i;
    
    }
    [array replaceObjectAtIndex:2 withObject:sender.title];
    [_tmpBtn setTitle:[array objectAtIndex:2] forState:UIControlStateNormal];
    [_tmpBtn setImageEdgeInsets:UIEdgeInsetsMake(0,0 ,0,-(self.view.frame.size.width)/2.5 )];
    [self xiaosi];
}
- (void) pushMenuItem0:(KxMenuItem*)sender
{
    aniu0+=1;
    NSLog(@"第一个按钮%@", sender.title);
    
    for( int i  =0; i<menuItems0.count; ++i) //n为数组长度
    {
        if([menuItems0[i] title] == sender.title) //temp为要查找 的元素
            //i为该元素在数组中的位置
            j0=i;
        
    }
   [array replaceObjectAtIndex:0 withObject:sender.title];
   [_tmpBtn setTitle:[array objectAtIndex:0] forState:UIControlStateNormal];
    
   [self xiaosi];
}
- (void) pushMenuItem1:(KxMenuItem*)sender
{
    aniu1+=1;
    NSLog(@"第二个按钮%@", sender.title);
    
    for( int i  =0; i<menuItems1.count; ++i) //n为数组长度
    {
        if([menuItems1[i] title] == sender.title) //temp为要查找 的元素
            //i为该元素在数组中的位置
            j1=i;
        
    }
    [array replaceObjectAtIndex:1 withObject:sender.title];
    [_tmpBtn setTitle:[array objectAtIndex:1] forState:UIControlStateNormal];
    if ([sender.title isEqualToString:@"无4 (本地)"]||
        [sender.title isEqualToString:@"无4 (外地)"]){
         [_tmpBtn setImageEdgeInsets:UIEdgeInsetsMake(0,0 ,0,-(self.view.frame.size.width)/2.5)];
    }else
    {
         [_tmpBtn setImageEdgeInsets:UIEdgeInsetsMake(0,0 ,0,-(self.view.frame.size.width)/3)];
    }
        
   
   [self xiaosi];
}
-(void)xiaosi
{
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc addObserver:self selector:@selector(handleColorChange:) name:@"ChangeDizhiNotification" object:nil];
    
    if ([shou isEqualToString:@"1"]||[shou isKindOfClass:[NSNull class]]) {
        _tmpBtn.selected = NO;
        
   
    }else
    {
 
        _tmpBtn.selected = NO;
    }

}
-(void)handleColorChange:(NSNotification*)not
{
    NSDictionary *userInfo = not.userInfo;
    shou = [userInfo objectForKey:@"stu"];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    _tmpBtn.selected=NO;
}
@end
