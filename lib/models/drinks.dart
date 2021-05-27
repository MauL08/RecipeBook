class DrinkData {
  String image;
  String name;
  List ingredients;
  List howTo;

  DrinkData({
    required this.image,
    required this.name,
    required this.ingredients,
    required this.howTo,
  });
}

var DrinkDataList = [
  DrinkData(
    image: 'images/drink/wedang_jahe.jpg',
    name: "Wedang Jahe",
    ingredients: [
      "Jahe Potong secukupnya",
      "Gula Merah secukupnya",
      "Air secukupnya"
    ],
    howTo: [
      "1. Bakar jahe yang telah dibersihkan di atas arang atau kalau tidak ada bisa dibakar di atas kompor dengan api kecil.",
      "2. Pastikan jahe dibolak-balik hingga seluruh permukaan jahe terbakar dan mengeluarkan aroma khas.",
      "3. Sediakan gelas berukuran sedang, masukkan gula merah yang sudah dilelehkan sebanyak 2 sendok makan.",
      "4. Gepuk jahe yang sudah dibakar, kemudian masukkan ke dalam gelas.",
      "5. Tambahkan air panas, aduk hingga tercampur rata.",
      "6. Wedang Jahe bakar siap dihidangkan.",
    ],
  )
];
