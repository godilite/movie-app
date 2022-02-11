import 'package:flutter/material.dart';

class ExpansionStreamBuilder<T1, T2, T3, T4> extends StatelessWidget {
  const ExpansionStreamBuilder({
    Key? key,
    required this.stream1,
    required this.stream2,
    required this.stream3,
    required this.stream4,
    required this.builder,
  }) : super(key: key);

  final Stream<T1> stream1;
  final Stream<T2> stream2;
  final Stream<T3> stream3;
  final Stream<T4> stream4;
  final Widget Function(
    BuildContext,
    AsyncSnapshot<T1>,
    AsyncSnapshot<T2>,
    AsyncSnapshot<T3>,
    AsyncSnapshot<T4>,
  ) builder;

  @override
  Widget build(BuildContext context) => StreamBuilder<T1>(
        stream: stream1,
        builder: (_, snapshot1) {
          return StreamBuilder<T2>(
            stream: stream2,
            builder: (_, snapshot2) {
              return StreamBuilder<T3>(
                stream: stream3,
                builder: (_, snapshot3) {
                  return StreamBuilder<T4>(
                    stream: stream4,
                    builder: (context, snapshot4) {
                      return builder(
                          context, snapshot1, snapshot2, snapshot3, snapshot4);
                    },
                  );
                },
              );
            },
          );
        },
      );
}
