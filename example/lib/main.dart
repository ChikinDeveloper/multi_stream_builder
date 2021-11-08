import 'package:flutter/cupertino.dart';
import 'package:multi_stream_builder/multi_stream_builder.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final stream1 = Stream.periodic(const Duration(seconds: 1), (count) => count);
  final stream2 =
      Stream.periodic(const Duration(seconds: 1), (count) => 2 * count);
  final valueListenable1 = ValueNotifier(7);
  final valueListenable2 = ValueNotifier(9);

  @override
  Widget build(BuildContext context) {
    return MultiStreamBuilder(
      streams: [stream1, stream2],
      valuesListenable: [valueListenable1, valueListenable2],
      builder: (context, dataList) {
        final stream1Value = dataList[0];
        final stream2Value = dataList[1];
        final valueListenable1Value = dataList[2];
        final valueListenable2Value = dataList[3];
        return Text(
            '$stream1Value, $stream2Value, $valueListenable1Value, $valueListenable2Value');
      },
    );
  }
}
