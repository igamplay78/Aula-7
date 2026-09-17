class WikiModelo {
  final String urli;
  bool like = false;

  WikiModelo({required this.urli});

  bool get liked => like;

  void mudaLike() {
    like = !like;
  }
}
