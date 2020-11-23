class CombineState {
  bool loading;
  bool searching;

  String currentRoute;
  String currentBound;
  String currentServiceType;

  List timerList;

  CombineState({
    this.loading,
    this.searching,
    this.currentRoute,
    this.currentBound,
    this.currentServiceType,
    this.timerList,
  });
}
