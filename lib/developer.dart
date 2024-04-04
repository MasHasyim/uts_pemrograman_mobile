class Author {
  String imageUrl;
  String name;
  String ttl;
  String address;
  String phone;
  String email;
  String github;
  List<String> educations;
  List<String> achievements;

  Author(this.imageUrl, this.name, this.ttl, this.address, this.phone,
      this.email, this.github, this.educations, this.achievements);

  static List<Author> data = [
    Author(
      'assets/Hasyim.jpeg',
      'Muhammad Fikri Haashim',
      'Gresik, 06-06-2003',
      'Kec. Kebomas, Gresik, Jawa Timur',
      '085257859533',
      '22082010011@student.upnjatim.ac.id',
      'https://github.com/aryaak',
      [
        'SMP PROGRESIF BUMI SHALAWAT',
        'SMA PROGRESIF BUMI SHALAWAT',
        'UPN "Veteran" Jawa Timur',
      ],
      ['JUARA I FUTSAL COMPETITION, KAB.GRESIK',
      'JUARA IV FUTSAL COMPETITION, KAB.SIDOARJO'],
    ),
    
  ];
}
