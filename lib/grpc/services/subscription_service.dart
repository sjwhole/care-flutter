import 'package:care/grpc/generated/google/protobuf/empty.pb.dart';
import 'package:care/grpc/generated/google/protobuf/timestamp.pb.dart';
import 'package:care/providers/jwt_provider.dart';
import 'package:grpc/grpc.dart';

import '../channel.dart';
import '../generated/subscription.pbgrpc.dart';
import '../interceptors/jwt_interceptor.dart';

class SubscriptionService {
  SubscriptionService(this.jwtProvider);

  final JwtProvider jwtProvider;
  late SubscriptionServiceClient stub = SubscriptionServiceClient(channel,
      interceptors: [JwtInterceptor(jwtProvider)]);

  Future<SubscriptionList> getSubscriptions() async {
    try {
      var response = await stub.getSubscriptions(Empty());
      print('Greeter client received: ${response.subscriptions}');
      return response;
    } on GrpcError catch (e) {
      print('Caught error: $e');
      return SubscriptionList();
    }
  }

  Future<Subscription> createSubscription(DateTime expiresAt) async {
    try {
      var response = await stub.createSubscription(SubscriptionCreateRequest()
        ..expiresAt = Timestamp.fromDateTime(expiresAt.toLocal()));
      print('Greeter client received: ${response.id}');
      return response;
    } on GrpcError catch (e) {
      print('Caught error: $e');
      return Subscription();
    }
  }
}
