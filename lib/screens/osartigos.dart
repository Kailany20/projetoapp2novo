class Articles {
  String titulo;
  String texto;
  bool isFavorite;

  Articles({
    required this.titulo,
    required this.texto,
    this.isFavorite = true,
  });
}
