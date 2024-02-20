import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../providers/subscription_provider.dart';

class GetSubscriptionWidget extends StatefulWidget {
  const GetSubscriptionWidget({super.key});

  @override
  State<GetSubscriptionWidget> createState() => _GetSubscriptionWidgetState();
}

class _GetSubscriptionWidgetState extends State<GetSubscriptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: ElevatedButton(
          onPressed: () {
            SubscriptionProvider provider =
                Provider.of<SubscriptionProvider>(context, listen: false);

            provider.subscriptionService
                .getSubscriptions()
                .then((value) => setState(() {
                      provider.subscriptionList = value;
                    }));
          },
          child: Text('구독정보 불러오기'),
        )),
        Container(
          child: Column(
            children: Provider.of<SubscriptionProvider>(context)
                .subscriptionList
                .subscriptions
                .map((e) {
              final DateFormat formatter = DateFormat('yyyy-MM-dd');

              return Text(
                  "구독 만료일: ${formatter.format(e.expiresAt.toDateTime().toLocal())}");
            }).toList(),
          ),
        )
      ],
    );
  }
}

class CreateSubscriptionWidget extends StatelessWidget {
  final _durations = const [30, 60, 90];

  const CreateSubscriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: _durations.map((d) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            SubscriptionProvider subscriptionProvider =
                Provider.of<SubscriptionProvider>(context, listen: false);
            subscriptionProvider.subscriptionService
                .createSubscription(DateTime.now().add(Duration(days: d)))
                .then((value) => subscriptionProvider.subscriptionList =
                    subscriptionProvider.subscriptionList
                      ..subscriptions.add(value));
          },
          child: Text('$d일 구독'),
        ),
      );
    }).toList());
  }
}
