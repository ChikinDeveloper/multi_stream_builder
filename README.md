Flutter widget to replace multiple nester StreamBuilder/ValueListenableBuilder, allowing to combine both

## Getting started

```yaml
dependencies:
    multi_stream_builder: ^0.0.1
```

## Usage

```dart
Widget build(BuildContext context) {
  return MultiStreamBuilder(
    streams: [stream1, stream2],
    valuesListenable: [valueListenable1, valueListenable2],
    builder: (context, dataList) {
      final stream1Value = dataList[0];
      final stream2Value = dataList[1];
      final valueListenable1Value = dataList[2];
      final valueListenable2Value = dataList[3];
      return Text('$stream1Value, $stream2Value, $valueListenable1Value, $valueListenable2Value');
    },
  );
}
```