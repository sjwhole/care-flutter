//
//  Generated code. Do not modify.
//  source: subscription.proto
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
import 'subscription.pb.dart' as $1;

export 'subscription.pb.dart';

@$pb.GrpcServiceName('subscription.SubscriptionService')
class SubscriptionServiceClient extends $grpc.Client {
  static final _$getSubscriptions = $grpc.ClientMethod<$0.Empty, $1.SubscriptionList>(
      '/subscription.SubscriptionService/GetSubscriptions',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SubscriptionList.fromBuffer(value));
  static final _$createSubscription = $grpc.ClientMethod<$1.SubscriptionCreateRequest, $1.Subscription>(
      '/subscription.SubscriptionService/CreateSubscription',
      ($1.SubscriptionCreateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Subscription.fromBuffer(value));

  SubscriptionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.SubscriptionList> getSubscriptions($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSubscriptions, request, options: options);
  }

  $grpc.ResponseFuture<$1.Subscription> createSubscription($1.SubscriptionCreateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSubscription, request, options: options);
  }
}

@$pb.GrpcServiceName('subscription.SubscriptionService')
abstract class SubscriptionServiceBase extends $grpc.Service {
  $core.String get $name => 'subscription.SubscriptionService';

  SubscriptionServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.SubscriptionList>(
        'GetSubscriptions',
        getSubscriptions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.SubscriptionList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SubscriptionCreateRequest, $1.Subscription>(
        'CreateSubscription',
        createSubscription_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SubscriptionCreateRequest.fromBuffer(value),
        ($1.Subscription value) => value.writeToBuffer()));
  }

  $async.Future<$1.SubscriptionList> getSubscriptions_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getSubscriptions(call, await request);
  }

  $async.Future<$1.Subscription> createSubscription_Pre($grpc.ServiceCall call, $async.Future<$1.SubscriptionCreateRequest> request) async {
    return createSubscription(call, await request);
  }

  $async.Future<$1.SubscriptionList> getSubscriptions($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.Subscription> createSubscription($grpc.ServiceCall call, $1.SubscriptionCreateRequest request);
}
