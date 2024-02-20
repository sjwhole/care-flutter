//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/empty.pb.dart' as $0;
import 'user.pb.dart' as $2;

export 'user.pb.dart';

@$pb.GrpcServiceName('user.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$0.Empty, $2.User>(
      '/user.UserService/GetUser',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.User.fromBuffer(value));
  static final _$createUser = $grpc.ClientMethod<$2.CreateUserRequest, $2.User>(
      '/user.UserService/CreateUser',
      ($2.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.User.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$2.UpdateUserRequest, $2.User>(
      '/user.UserService/UpdateUser',
      ($2.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.User.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$2.DeleteUserRequest, $0.Empty>(
      '/user.UserService/DeleteUser',
      ($2.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getUserByKakaoAccessToken = $grpc.ClientMethod<$2.GetUserByKakaoAccessTokenRequest, $2.User>(
      '/user.UserService/GetUserByKakaoAccessToken',
      ($2.GetUserByKakaoAccessTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.User.fromBuffer(value));
  static final _$getJWTByAccessToken = $grpc.ClientMethod<$2.GetJWTByAccessTokenRequest, $2.JWT>(
      '/user.UserService/GetJWTByAccessToken',
      ($2.GetJWTByAccessTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.JWT.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.User> getUser($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$2.User> createUser($2.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$2.User> updateUser($2.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteUser($2.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$2.User> getUserByKakaoAccessToken($2.GetUserByKakaoAccessTokenRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserByKakaoAccessToken, request, options: options);
  }

  $grpc.ResponseFuture<$2.JWT> getJWTByAccessToken($2.GetJWTByAccessTokenRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getJWTByAccessToken, request, options: options);
  }
}

@$pb.GrpcServiceName('user.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.User>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateUserRequest, $2.User>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateUserRequest.fromBuffer(value),
        ($2.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateUserRequest, $2.User>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateUserRequest.fromBuffer(value),
        ($2.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteUserRequest, $0.Empty>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteUserRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetUserByKakaoAccessTokenRequest, $2.User>(
        'GetUserByKakaoAccessToken',
        getUserByKakaoAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetUserByKakaoAccessTokenRequest.fromBuffer(value),
        ($2.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetJWTByAccessTokenRequest, $2.JWT>(
        'GetJWTByAccessToken',
        getJWTByAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetJWTByAccessTokenRequest.fromBuffer(value),
        ($2.JWT value) => value.writeToBuffer()));
  }

  $async.Future<$2.User> getUser_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getUser(call, await request);
  }

  $async.Future<$2.User> createUser_Pre($grpc.ServiceCall call, $async.Future<$2.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$2.User> updateUser_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$0.Empty> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$2.User> getUserByKakaoAccessToken_Pre($grpc.ServiceCall call, $async.Future<$2.GetUserByKakaoAccessTokenRequest> request) async {
    return getUserByKakaoAccessToken(call, await request);
  }

  $async.Future<$2.JWT> getJWTByAccessToken_Pre($grpc.ServiceCall call, $async.Future<$2.GetJWTByAccessTokenRequest> request) async {
    return getJWTByAccessToken(call, await request);
  }

  $async.Future<$2.User> getUser($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$2.User> createUser($grpc.ServiceCall call, $2.CreateUserRequest request);
  $async.Future<$2.User> updateUser($grpc.ServiceCall call, $2.UpdateUserRequest request);
  $async.Future<$0.Empty> deleteUser($grpc.ServiceCall call, $2.DeleteUserRequest request);
  $async.Future<$2.User> getUserByKakaoAccessToken($grpc.ServiceCall call, $2.GetUserByKakaoAccessTokenRequest request);
  $async.Future<$2.JWT> getJWTByAccessToken($grpc.ServiceCall call, $2.GetJWTByAccessTokenRequest request);
}
