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
import 'user.pb.dart' as $1;

export 'user.pb.dart';

@$pb.GrpcServiceName('user.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$0.Empty, $1.User>(
      '/user.UserService/GetUser',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.User.fromBuffer(value));
  static final _$createUser = $grpc.ClientMethod<$1.CreateUserRequest, $1.User>(
      '/user.UserService/CreateUser',
      ($1.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.User.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$1.UpdateUserRequest, $1.User>(
      '/user.UserService/UpdateUser',
      ($1.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.User.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$1.DeleteUserRequest, $0.Empty>(
      '/user.UserService/DeleteUser',
      ($1.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getUserByKakaoAccessToken = $grpc.ClientMethod<$1.GetUserByKakaoAccessTokenRequest, $1.User>(
      '/user.UserService/GetUserByKakaoAccessToken',
      ($1.GetUserByKakaoAccessTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.User.fromBuffer(value));
  static final _$getJWTByAccessToken = $grpc.ClientMethod<$1.GetJWTByAccessTokenRequest, $1.JWT>(
      '/user.UserService/GetJWTByAccessToken',
      ($1.GetJWTByAccessTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.JWT.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.User> getUser($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.User> createUser($1.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.User> updateUser($1.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteUser($1.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.User> getUserByKakaoAccessToken($1.GetUserByKakaoAccessTokenRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserByKakaoAccessToken, request, options: options);
  }

  $grpc.ResponseFuture<$1.JWT> getJWTByAccessToken($1.GetJWTByAccessTokenRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getJWTByAccessToken, request, options: options);
  }
}

@$pb.GrpcServiceName('user.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.User>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreateUserRequest, $1.User>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreateUserRequest.fromBuffer(value),
        ($1.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateUserRequest, $1.User>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateUserRequest.fromBuffer(value),
        ($1.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteUserRequest, $0.Empty>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteUserRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetUserByKakaoAccessTokenRequest, $1.User>(
        'GetUserByKakaoAccessToken',
        getUserByKakaoAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetUserByKakaoAccessTokenRequest.fromBuffer(value),
        ($1.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetJWTByAccessTokenRequest, $1.JWT>(
        'GetJWTByAccessToken',
        getJWTByAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetJWTByAccessTokenRequest.fromBuffer(value),
        ($1.JWT value) => value.writeToBuffer()));
  }

  $async.Future<$1.User> getUser_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getUser(call, await request);
  }

  $async.Future<$1.User> createUser_Pre($grpc.ServiceCall call, $async.Future<$1.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$1.User> updateUser_Pre($grpc.ServiceCall call, $async.Future<$1.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$0.Empty> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$1.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$1.User> getUserByKakaoAccessToken_Pre($grpc.ServiceCall call, $async.Future<$1.GetUserByKakaoAccessTokenRequest> request) async {
    return getUserByKakaoAccessToken(call, await request);
  }

  $async.Future<$1.JWT> getJWTByAccessToken_Pre($grpc.ServiceCall call, $async.Future<$1.GetJWTByAccessTokenRequest> request) async {
    return getJWTByAccessToken(call, await request);
  }

  $async.Future<$1.User> getUser($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.User> createUser($grpc.ServiceCall call, $1.CreateUserRequest request);
  $async.Future<$1.User> updateUser($grpc.ServiceCall call, $1.UpdateUserRequest request);
  $async.Future<$0.Empty> deleteUser($grpc.ServiceCall call, $1.DeleteUserRequest request);
  $async.Future<$1.User> getUserByKakaoAccessToken($grpc.ServiceCall call, $1.GetUserByKakaoAccessTokenRequest request);
  $async.Future<$1.JWT> getJWTByAccessToken($grpc.ServiceCall call, $1.GetJWTByAccessTokenRequest request);
}
