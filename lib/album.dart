class Materials {
  double quantity;
  String measure;
  Materials(
    this.quantity,
    this.measure,
  );
}

class Album {
  String name;
  String artist;
  String image;
  int pack;
  List<Materials> materials;

  Album(
    this.name,
    this.artist,
    this.image,
    this.pack,
    this.materials,
  );

  static List<Album> samples = [
    Album(
      'Eleven',
      'IVE',
      'assets/ive1.png',
      1,
      [
        Materials(
          1,
          ' package',
        ),
        Materials(
          150,
          'gr',
        ),
      ],
    ),
    Album(
      'Love Dive',
      'IVE',
      'assets/ive2.jpg',
      1,
      [
        Materials(
          1,
          ' package',
        ),
        Materials(
          150,
          'gr',
        ),
      ],
    ),
    Album(
      'After Like',
      'IVE',
      'assets/ive3.png',
      1,
      [
        Materials(
          1,
          ' package',
        ),
        Materials(
          150,
          'gr',
        ),
      ],
    ),
    Album(
      'I have IVE',
      'IVE',
      'assets/ive4.png',
      1,
      [
        Materials(
          1,
          ' package',
        ),
        Materials(
          400,
          'gr',
        ),
      ],
    ),
    Album(
      'The First Step: Chapter One',
      'TREASURE',
      'assets/treasure1.png',
      1,
      [
        Materials(
          1,
          ' package',
        ),
        Materials(
          200,
          'gr',
        ),
      ],
    ),
    Album(
      'The First Step: Chapter Two',
      'TREASURE',
      'assets/treasure2.png',
      1,
      [
        Materials(
          1,
          ' package',
        ),
        Materials(
          200,
          'gr',
        ),
      ],
    ),
    Album(
      'The First Step: Chapter Three',
      'TREASURE',
      'assets/treasure3.jpg',
      1,
      [
        Materials(
          1,
          ' package',
        ),
        Materials(
          200,
          'gr',
        ),
      ],
    ),
    Album(
      'The First Step: Treasure Effect',
      'TREASURE',
      'assets/treasure4.jpg',
      1,
      [
        Materials(
          1,
          ' package',
        ),
        Materials(
          350,
          'gr',
        ),
      ],
    ),
    Album(
      'Attaca',
      'SEVENTEEN',
      'assets/seventeen4.jfif',
      1,
      [
        Materials(
          1,
          ' package',
        ),
        Materials(
          350,
          'gr',
        ),
      ],
    ),
    Album(
      'Semi;Colon',
      'SEVENTEEN',
      'assets/seventeen5.png',
      1,
      [
        Materials(
          1,
          ' package',
        ),
        Materials(
          400,
          'gr',
        ),
      ],
    ),
    Album(
      'Face The Sun',
      'SEVENTEEN',
      'assets/seventeen3.jfif',
      1,
      [
        Materials(
          1,
          ' package',
        ),
        Materials(
          400,
          'gr',
        ),
      ],
    ),
    Album(
      'Sector 17',
      'SEVENTEEN',
      'assets/seventeen2.jfif',
      1,
      [
        Materials(
          1,
          ' package',
        ),
        Materials(
          350,
          'gr',
        ),
      ],
    ),
    Album(
      'FML',
      'SEVENTEEN',
      'assets/seventeen1.jfif',
      1,
      [
        Materials(
          1,
          ' package',
        ),
        Materials(
          500,
          'gr',
        ),
      ],
    ),
  ];
}