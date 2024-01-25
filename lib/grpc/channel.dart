import 'package:grpc/grpc.dart';

final channel = ClientChannel(
  '192.168.30.3',
  port: 50051,
  options: const ChannelOptions(

    credentials: ChannelCredentials.insecure(),
  ),
);
