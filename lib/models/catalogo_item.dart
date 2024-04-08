class CatalogoItem {
  final String nombre;
  final int precio;
  final String imagen;

  CatalogoItem({
    required this.nombre,
    required this.precio,
    required this.imagen,
  });

  factory CatalogoItem.fromJson(Map<String, dynamic> json) {
    return CatalogoItem(
      nombre: json['nombre'] ?? '',
      precio: json['precio'] ?? 0,
      imagen: json['imagen'] ?? '',
    );
  }
}
