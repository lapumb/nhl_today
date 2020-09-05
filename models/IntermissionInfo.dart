class IntermissionInfo {
  int intermissionTimeRemaining;
  int intermissionTimeElapsed;
  bool inIntermission;

  IntermissionInfo(
      {this.intermissionTimeRemaining,
      this.intermissionTimeElapsed,
      this.inIntermission});

  IntermissionInfo.fromJson(Map<String, dynamic> json) {
    intermissionTimeRemaining = json['intermissionTimeRemaining'];
    intermissionTimeElapsed = json['intermissionTimeElapsed'];
    inIntermission = json['inIntermission'];
  }
}