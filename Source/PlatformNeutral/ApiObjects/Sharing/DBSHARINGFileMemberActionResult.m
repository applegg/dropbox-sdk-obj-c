///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGFileMemberActionIndividualResult.h"
#import "DBSHARINGFileMemberActionResult.h"
#import "DBSHARINGMemberSelector.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGFileMemberActionResult

#pragma mark - Constructors

- (instancetype)initWithMember:(DBSHARINGMemberSelector *)member
                        result:(DBSHARINGFileMemberActionIndividualResult *)result {

  self = [super init];
  if (self) {
    _member = member;
    _result = result;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGFileMemberActionResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGFileMemberActionResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGFileMemberActionResultSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGFileMemberActionResultSerializer

+ (NSDictionary *)serialize:(DBSHARINGFileMemberActionResult *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"member"] = [DBSHARINGMemberSelectorSerializer serialize:valueObj.member];
  jsonDict[@"result"] = [DBSHARINGFileMemberActionIndividualResultSerializer serialize:valueObj.result];

  return jsonDict;
}

+ (DBSHARINGFileMemberActionResult *)deserialize:(NSDictionary *)valueDict {
  DBSHARINGMemberSelector *member = [DBSHARINGMemberSelectorSerializer deserialize:valueDict[@"member"]];
  DBSHARINGFileMemberActionIndividualResult *result =
      [DBSHARINGFileMemberActionIndividualResultSerializer deserialize:valueDict[@"result"]];

  return [[DBSHARINGFileMemberActionResult alloc] initWithMember:member result:result];
}

@end