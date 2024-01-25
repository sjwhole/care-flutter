//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'kakoId', '3': 3, '4': 1, '5': 4, '10': 'kakoId'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBmtha29JZBgDIA'
    'EoBFIGa2Frb0lk');

@$core.Deprecated('Use getUserRequestDescriptor instead')
const GetUserRequest$json = {
  '1': 'GetUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRVc2VyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use createUserRequestDescriptor instead')
const CreateUserRequest$json = {
  '1': 'CreateUserRequest',
  '2': [
    {'1': 'kakaoAccessToken', '3': 1, '4': 1, '5': 9, '10': 'kakaoAccessToken'},
  ],
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVVc2VyUmVxdWVzdBIqChBrYWthb0FjY2Vzc1Rva2VuGAEgASgJUhBrYWthb0FjY2'
    'Vzc1Rva2Vu');

@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = {
  '1': 'UpdateUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.user.User', '10': 'user'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVVc2VyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSHgoEdXNlchgCIAEoCzIKLnVzZX'
    'IuVXNlclIEdXNlcg==');

@$core.Deprecated('Use deleteUserRequestDescriptor instead')
const DeleteUserRequest$json = {
  '1': 'DeleteUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUserRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVVc2VyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getUserByKakaoAccessTokenRequestDescriptor instead')
const GetUserByKakaoAccessTokenRequest$json = {
  '1': 'GetUserByKakaoAccessTokenRequest',
  '2': [
    {'1': 'kakaoAccessToken', '3': 1, '4': 1, '5': 9, '10': 'kakaoAccessToken'},
  ],
};

/// Descriptor for `GetUserByKakaoAccessTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserByKakaoAccessTokenRequestDescriptor = $convert.base64Decode(
    'CiBHZXRVc2VyQnlLYWthb0FjY2Vzc1Rva2VuUmVxdWVzdBIqChBrYWthb0FjY2Vzc1Rva2VuGA'
    'EgASgJUhBrYWthb0FjY2Vzc1Rva2Vu');

@$core.Deprecated('Use getJWTByAccessTokenRequestDescriptor instead')
const GetJWTByAccessTokenRequest$json = {
  '1': 'GetJWTByAccessTokenRequest',
  '2': [
    {'1': 'kakaoAccessToken', '3': 1, '4': 1, '5': 9, '10': 'kakaoAccessToken'},
  ],
};

/// Descriptor for `GetJWTByAccessTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getJWTByAccessTokenRequestDescriptor = $convert.base64Decode(
    'ChpHZXRKV1RCeUFjY2Vzc1Rva2VuUmVxdWVzdBIqChBrYWthb0FjY2Vzc1Rva2VuGAEgASgJUh'
    'BrYWthb0FjY2Vzc1Rva2Vu');

@$core.Deprecated('Use jWTDescriptor instead')
const JWT$json = {
  '1': 'JWT',
  '2': [
    {'1': 'jwt', '3': 1, '4': 1, '5': 9, '10': 'jwt'},
  ],
};

/// Descriptor for `JWT`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jWTDescriptor = $convert.base64Decode(
    'CgNKV1QSEAoDand0GAEgASgJUgNqd3Q=');

