///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMPOLICIESEmmState.h"

#pragma mark - API Object

@implementation DBTEAMPOLICIESEmmState

#pragma mark - Constructors

- (instancetype)initWithDisabled {
  self = [super init];
  if (self) {
    _tag = DBTEAMPOLICIESEmmStateDisabled;
  }
  return self;
}

- (instancetype)initWithOptional {
  self = [super init];
  if (self) {
    _tag = DBTEAMPOLICIESEmmStateOptional;
  }
  return self;
}

- (instancetype)initWithRequired {
  self = [super init];
  if (self) {
    _tag = DBTEAMPOLICIESEmmStateRequired;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBTEAMPOLICIESEmmStateOther;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isDisabled {
  return _tag == DBTEAMPOLICIESEmmStateDisabled;
}

- (BOOL)isOptional {
  return _tag == DBTEAMPOLICIESEmmStateOptional;
}

- (BOOL)isRequired {
  return _tag == DBTEAMPOLICIESEmmStateRequired;
}

- (BOOL)isOther {
  return _tag == DBTEAMPOLICIESEmmStateOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMPOLICIESEmmStateDisabled:
    return @"DBTEAMPOLICIESEmmStateDisabled";
  case DBTEAMPOLICIESEmmStateOptional:
    return @"DBTEAMPOLICIESEmmStateOptional";
  case DBTEAMPOLICIESEmmStateRequired:
    return @"DBTEAMPOLICIESEmmStateRequired";
  case DBTEAMPOLICIESEmmStateOther:
    return @"DBTEAMPOLICIESEmmStateOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMPOLICIESEmmStateSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMPOLICIESEmmStateSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMPOLICIESEmmStateSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMPOLICIESEmmStateSerializer

+ (NSDictionary *)serialize:(DBTEAMPOLICIESEmmState *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isDisabled]) {
    jsonDict[@".tag"] = @"disabled";
  } else if ([valueObj isOptional]) {
    jsonDict[@".tag"] = @"optional";
  } else if ([valueObj isRequired]) {
    jsonDict[@".tag"] = @"required";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
  }

  return jsonDict;
}

+ (DBTEAMPOLICIESEmmState *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"disabled"]) {
    return [[DBTEAMPOLICIESEmmState alloc] initWithDisabled];
  } else if ([tag isEqualToString:@"optional"]) {
    return [[DBTEAMPOLICIESEmmState alloc] initWithOptional];
  } else if ([tag isEqualToString:@"required"]) {
    return [[DBTEAMPOLICIESEmmState alloc] initWithRequired];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBTEAMPOLICIESEmmState alloc] initWithOther];
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end