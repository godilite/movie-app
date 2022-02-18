class Ticker {
  const Ticker();
  Stream<bool> tick({required int ticks}) {
    return Stream.periodic(
        Duration(seconds: ticks), (computationCount) => true);
  }
}
