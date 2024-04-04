class Prodi {
  String imageUrl;
  String name;
  String profile;
  String vision;
  List<String> missions;
  String acreditation;
  String leader;
  List<String> lectures;
  String website;
  String email;
  List<String> achievements;

  Prodi(
      this.imageUrl,
      this.name,
      this.profile,
      this.vision,
      this.missions,
      this.acreditation,
      this.leader,
      this.lectures,
      this.website,
      this.email,
      this.achievements);

  static List<Prodi> data = [
    Prodi(
        'assets/Ekonomi Pembangunan.jpeg',
        'S-1 Ekonomi Pembangunan',
        'Program Studi Ekonomi Pembangunan Fakultas Ekonomi dan Bisnis UPNV Jawa Timur didirikan pada tahun 1974 dengan ijin pendirian dari Departemen Pertahanan Keamanan (Dephankam) dengan status “Negeri Kedinasan”.',
        'Menjadi Program Studi Ekonomi Pembangunan yang unggul dalam penerapan dan pengembangan IPTEK di bidang Ekonomi Pembangunan yang memiliki kareakter bela negara.',
        [
          'Menyelenggarakan dan mengembangkan pendidikan di bidang Ekonomi Pembangunan berkarakter bela negara.',
          'Meningkatkan budaya riset dalam pengembangan bidang IPTEK yang berdaya guna untuk kesejahteraan masyarakat.',
          'Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal.',
          'Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran.',
          'Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial.',
          'Meningkatkan kerja sama institusional dengan stakeholders baik dalam dan luar negeri.',
        ],
        'A',
        'Prof.T.Bassaruddin',
        [
          'Prof. Dr. Syamsul Huda, S.E., M.T.',
          'Dr. Ignatia Martha, S.E., M.E.',
          'Dr. Muchtolifah, S.E., M.P.',
          'Dr. Ririt Iriani, S.E., M.E.',
          'Drs. Ec. Arief Bachtiar, M.Si.'
        ],
        'https://ekbang.upnjatim.ac.id',
        'Progdi.ep@gmail.com',
        [
          'POJOK STATISTIK UPNVJT MENJADI POJOK STATISTIK TERBAIK SE INDONESIA. REKTOR KOORPRODI EKONOMI PEMBANGUNAN DAN PIC POJOK STATISTIK MENERIMA PENGHARGAAN BERGENGSI ITU DI HOTEL RITZ CARLTON 4 DESEMBER 2023',
          'Juara 1 & 3 Lomba Essay Milenial yang diadakan IDEI Insan Doktor Ekonomi Indonesia Oleh Mahasiswa Prodi Ekonomi Pembanguna FEB UPN "Veteran" Jatim',
          '"Best Speaker Business Plan Competition" Selamat dan Sukses Kepada Nadia Afny Zuraida (Ekonomi Pembangunan, 2020)  dan Azzahra Zulfalinda (Ekonomi Pembangunan, 2020)  Atas Prestasinya '
        ]),
    Prodi(
        'assets/Akuntansi.png',
        'S-1 Akuntansi',
        'Berdasarkan Surat Keputusan Menteri Urusan Veteran dan Demobilisasi Nomor ; 133/kpts/1966 tentang Pengintegrasian Akademi Administrasi Perusahaan “Veteran” Surabaya pada Perguruan Tinggi Pembangunan Nasional “Veteran” Yogyakarta, berdirilah Program Studi Akuntansi. Program Studi Akuntansi didirikan pada tanggal 1 April 1966 dengan status kedinasan.',
        'Menjadi Jurusan Akuntansi world class Unggul Berkarakter Bela Negara di tahun 2039',
        [
          'Menyelenggarakan dan mengembangkan pendidikan bidang akuntansi yang berkarakter bela negara guna membentuk pelajar berjiwa Pancasila yang kompeten di tingkat internasional.',
          'Meningkatkan kemampuan riset dan iptek di bidang akuntansi yang berdayaguna untuk meningkatkan transparansi dan akuntabilitas dalam bermasyarakat dan bernegara.',
          'Menyelenggarakan pengabdian kepada masyarakat berbasis riset bidang akuntansi dan kearifan lokal.',
          'Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan keuangan yang WBK (wilayah bebas korupsi) dan WBBM (wilayah bebas bersih melayani) di Jurusan akuntansi.',
          'Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial di bidang akuntansi.',
          'Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di Jurusan akuntansi.',
          'Meningkatkan kerjasama institusional dengan stakeholder baik dalam dan luar negeri di bidang akuntansi.'
        ],
        'A',
        'Dr. Dra. Ec. Endah Susilowati, M.Si, CfRA',
        [
          'Prof. Dr. Sri Trisnaningsih, M.Si, CFrA',
          'Prof. Dr. Indrawati Yuhertiana, MM., Ak. CMA',
          'Dra. Ec. Anik Yuliati, M.Aks.',
          'Drs. Ec. Muslimin, M.Si',
          'Drs. Ec. Saiful Anwar, M.Si.',
        ],
        'https://akuntansi.upnjatim.ac.id/',
        'akuntansi@upnjatim.ac.id',
        [
          'Juara I National Accounting Essay Competition 2022 Komunitas Jago Akuntansi Indonesia (KJAI)',
          'Juara I Kompetisi Akuntansi Sebelas Maret(KAS 2022)',
          'Juara III National Public Essay Competition Reviresco Reformation XXIX',
          'Juara III Esport PUBGM Brawijaya Tournament 2022'
              'Medali Emas Bidang Ekonomi dalam OSAN (Olimpiade Sains Akbar Nasional) 2022',
          'Juara II Business Plan Competition IMAKO EXPO 2022'
        ]),
    Prodi(
        'assets/Manajemen.png',
        'S-1 Manajemen',
        'Program Studi S1 Manajemen didirikan pada bulan Maret 1966 di bawah Fakultas Ekonomi (kemudian dikenal sebagai Fakultas Ekonomi dan Bisnis). Dalam tahun-tahun pendiriannya, telah menjadi salah satu puncak dan dicari program studi di UPNVJT, menarik sejumlah besar siswa setiap tahun (sekitar 300-350 siswa per tahun akademik).',
        'Menjadi salah satu program studi yang unggul dalam pengembangan Ilmu Manajemen yang berkarakter bela negara pada tahun 2024',
        [
          'Menyelenggarakan pendidikan bidang manejemen yang berkarakter bela negara',
          'Meningkatkan pengembangan ilmu manajemen melalui kegiatan penelitian',
          'Melaksanakan pengabdian kepada masyarakat melalui karya inovatif berbasis iptek dan kearifan lokal',
          'Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntanbilitas pengelolaan anggaran',
          'Mengembangkan kualitas sumber manusia unggul dalam sikap dan tata nilai, unjuk rasa, penguasaan pengetahuan dan manajerial',
          'Meningkatkan sistem pengelolaan sarana dan prasarana terpadu',
          'Membangun jejaring dengan institusi baik nasional dan internasional melalui Implementasi kerjasama.',
        ],
        'A',
        'Dr. Drs. Ec. Muhadjir Anwar, M.M.',
        [
          'Dr.Ir.Ramdan Hidayat, MS',
          'Dr. Dra. Ika Korika Swasti, M.Pd',
          'Dra.Ec. Nurjanti Takarini, M.Si',
          'Prof. Dr. Ir. Akhmad Fauzi, MMT, CHRA',
          'Prof. Dr. Yuniningsih, SE, M.Si'
        ],
        'https://manajemen.upnjatim.ac.id/',
        'feb@upnjatim.ac.id',
        [
          'Juara 1 National Economic Business Plan Competition Festival 2022',
          'Juara 3 LENS (Lomba Esai Nasional) Chemistry Friendship Competition V 2022',
          '1st Best Research Paper Seminar Nasional Manajemen 2022 dengan Judul Paper “Kualitas Layanan Publik Stasiun Kota Surabaya selama COVID-19: Analisa Big Data”'
        ]),
  ];
}
