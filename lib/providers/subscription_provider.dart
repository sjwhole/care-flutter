import 'package:care/grpc/generated/subscription.pbgrpc.dart';
import 'package:care/grpc/services/subscription_service.dart';
import 'package:flutter/material.dart';

import 'jwt_provider.dart';

class SubscriptionProvider extends ChangeNotifier {
  final JwtProvider jwtProvider;

  SubscriptionList _subscriptionList = SubscriptionList(subscriptions: []);
  late SubscriptionService _subscriptionService; // Marked as late

  SubscriptionList get subscriptionList => _subscriptionList;

  SubscriptionService get subscriptionService => _subscriptionService;

  SubscriptionProvider(this.jwtProvider) {
    jwtProvider.addListener(_handleJwtChange);
    _subscriptionService =
        SubscriptionService(jwtProvider); // Initialize with the JWT
  }

  set subscriptionList(SubscriptionList newSubscriptionList) {
    _subscriptionList = newSubscriptionList;
    notifyListeners();
  }

  void _handleJwtChange() {
    // React to JWT changes, e.g., fetch user info if JWT is updated
    if (jwtProvider.jwt != null) {
      _subscriptionService.getSubscriptions().then((subscriptions) {
        _subscriptionList = subscriptions;
        notifyListeners();
      });
    }
  }
}
