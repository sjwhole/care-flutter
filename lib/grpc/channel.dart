import 'package:grpc/grpc.dart';

final channel = ClientChannel(
  // '192.168.30.9',
  // port: 50051,
  "api.hyohang.com",
  port: 443,
  options: const ChannelOptions(
    credentials: ChannelCredentials.secure(),
  ),
);
