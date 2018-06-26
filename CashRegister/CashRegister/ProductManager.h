//
//  ProductManager.h
//  CashRegister
//
//  Created by Edmel John Ricahuerta on 2018-06-21.
//  Copyright © 2018 com.map523.seneca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProductManager : NSObject

@property (strong,nonatomic) NSMutableArray* allProducts;
@property (strong,nonatomic) NSMutableArray* allProductsBought;

-(void)buyProductWithTotal : (int) quantity atIndex: (int) index;
-(void)restockProductWithTotal : (int) quantity atIndex : (int) index;

@end
