//  
//  MLChain4NSObject.m
//  MLChainPodDemo
//  
//  Created by 赖妙龙 on 2017/05/18.
//  Copyright © 2017年 myCompany. All rights reserved.
//  


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"
#import "MLChainContainer.h"
@implementation MLChain4NSObject
+ (void)load{
        
  [self mlc_setUpMethodDynamically];        
}
@end
#pragma clang diagnostic pop
//  
//  MLChain4UIResponder.m
//  MLChainPodDemo
//  
//  Created by 赖妙龙 on 2017/05/18.
//  Copyright © 2017年 myCompany. All rights reserved.
//  


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"
#import "MLChainContainer.h"
@implementation MLChain4UIResponder
+ (void)load{
        
  [self mlc_setUpMethodDynamically];        
}
- (UIResponder *)chainObject{         
    return (id)[super chainObject];         
}
@end
#pragma clang diagnostic pop
//  
//  MLChain4UIView.m
//  MLChainPodDemo
//  
//  Created by 赖妙龙 on 2017/05/18.
//  Copyright © 2017年 myCompany. All rights reserved.
//  


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"
#import "MLChainContainer.h"
@implementation MLChain4UIView
+ (void)load{
        
  [self mlc_setUpMethodDynamically];        
}
- (UIView *)chainObject{         
    return (id)[super chainObject];         
}
@end
#pragma clang diagnostic pop
//  
//  MLChain4UIScrollView.m
//  MLChainPodDemo
//  
//  Created by 赖妙龙 on 2017/05/18.
//  Copyright © 2017年 myCompany. All rights reserved.
//  


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"
#import "MLChainContainer.h"
@implementation MLChain4UIScrollView
+ (void)load{
        
  [self mlc_setUpMethodDynamically];        
}
- (UIScrollView *)chainObject{         
    return (id)[super chainObject];         
}
@end
#pragma clang diagnostic pop
//  
//  MLChain4UITableView.m
//  MLChainPodDemo
//  
//  Created by 赖妙龙 on 2017/05/18.
//  Copyright © 2017年 myCompany. All rights reserved.
//  


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"
#import "MLChainContainer.h"
@implementation MLChain4UITableView
+ (void)load{
        
  [self mlc_setUpMethodDynamically];        
}
- (UITableView *)chainObject{         
    return (id)[super chainObject];         
}
@end
#pragma clang diagnostic pop
//  
//  NSObject.m
//  MLChainPodDemo
//  
//  Created by 赖妙龙 on 2017/05/18.
//  Copyright © 2017年 myCompany. All rights reserved.
//  




@implementation NSObject(MLChain)
+ (MLChain4NSObject *)mlc_make {         
         
    id chainBridge = [self mlc_chainBridge];         
    return chainBridge;         
         
}
- (MLChain4NSObject *)mlc_make {         
         
    id chainBridge = [self mlc_chainBridge];         
    return chainBridge;         
         
}
+ (MLChain4NSObject *)mlc_makeConfigs:(void(^)(MLChain4NSObject *maker))block{         
         
    id chainBridge = [self mlc_chainBridge];         
   block(chainBridge);         
   return chainBridge;         
         
}
- (MLChain4NSObject *)mlc_makeConfigs:(void(^)(MLChain4NSObject *maker))block{         
         
    id chainBridge = [self mlc_chainBridge];         
   block(chainBridge);         
   return chainBridge;         
         
}

@end

//  
//  UIResponder.m
//  MLChainPodDemo
//  
//  Created by 赖妙龙 on 2017/05/18.
//  Copyright © 2017年 myCompany. All rights reserved.
//  




@implementation UIResponder(MLChain)
+ (MLChain4UIResponder *)mlc_make {         
         
   return (id)[super mlc_make];         
         
}
- (MLChain4UIResponder *)mlc_make {         
         
   return (id)[super mlc_make];         
         
}
+ (MLChain4UIResponder *)mlc_makeConfigs:(void(^)(MLChain4UIResponder *maker))block{         
         
   MLChain4UIResponder *chainBridge = self.mlc_make;         
   block(chainBridge);         
   return chainBridge;         
         
}
- (MLChain4UIResponder *)mlc_makeConfigs:(void(^)(MLChain4UIResponder *maker))block{         
         
   MLChain4UIResponder *chainBridge = self.mlc_make;         
   block(chainBridge);         
   return chainBridge;         
         
}

@end

//  
//  UIView.m
//  MLChainPodDemo
//  
//  Created by 赖妙龙 on 2017/05/18.
//  Copyright © 2017年 myCompany. All rights reserved.
//  




@implementation UIView(MLChain)
+ (MLChain4UIView *)mlc_make {         
         
   return (id)[super mlc_make];         
         
}
- (MLChain4UIView *)mlc_make {         
         
   return (id)[super mlc_make];         
         
}
+ (MLChain4UIView *)mlc_makeConfigs:(void(^)(MLChain4UIView *maker))block{         
         
   MLChain4UIView *chainBridge = self.mlc_make;         
   block(chainBridge);         
   return chainBridge;         
         
}
- (MLChain4UIView *)mlc_makeConfigs:(void(^)(MLChain4UIView *maker))block{         
         
   MLChain4UIView *chainBridge = self.mlc_make;         
   block(chainBridge);         
   return chainBridge;         
         
}

@end

//  
//  UIScrollView.m
//  MLChainPodDemo
//  
//  Created by 赖妙龙 on 2017/05/18.
//  Copyright © 2017年 myCompany. All rights reserved.
//  




@implementation UIScrollView(MLChain)
+ (MLChain4UIScrollView *)mlc_make {         
         
   return (id)[super mlc_make];         
         
}
- (MLChain4UIScrollView *)mlc_make {         
         
   return (id)[super mlc_make];         
         
}
+ (MLChain4UIScrollView *)mlc_makeConfigs:(void(^)(MLChain4UIScrollView *maker))block{         
         
   MLChain4UIScrollView *chainBridge = self.mlc_make;         
   block(chainBridge);         
   return chainBridge;         
         
}
- (MLChain4UIScrollView *)mlc_makeConfigs:(void(^)(MLChain4UIScrollView *maker))block{         
         
   MLChain4UIScrollView *chainBridge = self.mlc_make;         
   block(chainBridge);         
   return chainBridge;         
         
}

@end

//  
//  UITableView.m
//  MLChainPodDemo
//  
//  Created by 赖妙龙 on 2017/05/18.
//  Copyright © 2017年 myCompany. All rights reserved.
//  




@implementation UITableView(MLChain)
+ (MLChain4UITableView *)mlc_make {         
         
   return (id)[super mlc_make];         
         
}
- (MLChain4UITableView *)mlc_make {         
         
   return (id)[super mlc_make];         
         
}
+ (MLChain4UITableView *)mlc_makeConfigs:(void(^)(MLChain4UITableView *maker))block{         
         
   MLChain4UITableView *chainBridge = self.mlc_make;         
   block(chainBridge);         
   return chainBridge;         
         
}
- (MLChain4UITableView *)mlc_makeConfigs:(void(^)(MLChain4UITableView *maker))block{         
         
   MLChain4UITableView *chainBridge = self.mlc_make;         
   block(chainBridge);         
   return chainBridge;         
         
}

@end

