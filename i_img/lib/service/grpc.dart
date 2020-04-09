import 'package:grpc/grpc.dart';

class GRPC {
  ClientChannel channel;

  GRPC() {
    this.channel = ClientChannel(
      '150.158.134.74',
      port: 80,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
  }

  get chan {
    return channel;
  }
}
