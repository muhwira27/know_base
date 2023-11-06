import 'dart:math';

class Question {
  String question;
  List<String> answerOptions;
  String correctAnswer;

  Question({
    required this.question,
    required this.answerOptions,
    required this.correctAnswer,
  });
}

var generalKnowledge1Questions = [
  Question(
    question: "Siapakah presiden pertama Amerika Serikat?",
    answerOptions: [
      "George Washington",
      "Thomas Jefferson",
      "Abraham Lincoln",
      "Benjamin Franklin",
    ]..shuffle(Random()),
    correctAnswer: "George Washington",
  ),
  Question(
    question: "Apa ibukota Prancis?",
    answerOptions: [
      "Paris",
      "Roma",
      "Berlin",
      "Madrid",
    ]..shuffle(Random()),
    correctAnswer: "Paris",
  ),
  Question(
    question: "Siapakah penemu teori relativitas?",
    answerOptions: [
      "Albert Einstein",
      "Stephen Hawking",
      "Isaac Newton",
      "Galileo Galilei",
    ]..shuffle(Random()),
    correctAnswer: "Albert Einstein",
  ),
  Question(
    question: "Siapakah penulis drama 'Romeo and Juliet'?",
    answerOptions: [
      "William Shakespeare",
      "Charles Dickens",
      "Leo Tolstoy",
      "Jane Austen",
    ]..shuffle(Random()),
    correctAnswer: "William Shakespeare",
  ),
  Question(
    question: "Apa singkatan dari UNESCO?",
    answerOptions: [
      "United Nations Educational, Scientific and Cultural Organization",
      "United Nations Security Council",
      "Universal Scientific and Cultural Organization",
      "United States Educational Society",
    ]..shuffle(Random()),
    correctAnswer:
        "United Nations Educational, Scientific and Cultural Organization",
  ),
  Question(
    question: "Berapa jumlah provinsi di Indonesia?",
    answerOptions: [
      "34",
      "31",
      "33",
      "32",
    ]..shuffle(Random()),
    correctAnswer: "34",
  ),
  Question(
    question: "Di negara manakah Taj Mahal terletak?",
    answerOptions: [
      "India",
      "Mesir",
      "Turki",
      "China",
    ]..shuffle(Random()),
    correctAnswer: "India",
  ),
  Question(
    question: "Apa nama sungai terpanjang di dunia?",
    answerOptions: [
      "Sungai Nil",
      "Sungai Amazon",
      "Sungai Mississippi",
      "Sungai Yangtze",
    ]..shuffle(Random()),
    correctAnswer: "Sungai Nil",
  ),
  Question(
    question: "Apa mata uang resmi India?",
    answerOptions: [
      "Rupee",
      "Rupiah",
      "Taka",
      "Baht",
    ]..shuffle(Random()),
    correctAnswer: "Rupee",
  ),
  Question(
    question: "Apakah lambang kimia untuk air?",
    answerOptions: [
      "H2O",
      "CO2",
      "NaCl",
      "O2",
    ]..shuffle(Random()),
    correctAnswer: "H2O",
  ),
];

var webProgrammingQuestions = [
  Question(
    question: "Apa yang dimaksud dengan HTML?",
    answerOptions: [
      "Hypertext Markup Language",
      "Hyperlink and Text Markup Language",
      "Highly Technical Markup Language",
      "Hypertext and Text Markup Language",
    ]..shuffle(Random()),
    correctAnswer: "Hypertext Markup Language",
  ),
  Question(
    question: "Apa singkatan CSS?",
    answerOptions: [
      "Cascading Style Sheet",
      "Creative Style System",
      "Computer Style Sheet",
      "Coded Style System",
    ]..shuffle(Random()),
    correctAnswer: "Cascading Style Sheet",
  ),
  Question(
    question: "Apa itu HTTP?",
    answerOptions: [
      "Hypertext Transfer Protocol",
      "Hyper Transfer Text Protocol",
      "Highly Technical Transfer Protocol",
      "Hypertext Text Protocol",
    ]..shuffle(Random()),
    correctAnswer: "Hypertext Transfer Protocol",
  ),
  Question(
    question: "Apa yang dimaksud dengan JavaScript?",
    answerOptions: [
      "A programming language",
      "A web browser",
      "A document markup language",
      "A web server",
    ]..shuffle(Random()),
    correctAnswer: "A programming language",
  ),
  Question(
    question: "Apa yang dimaksud dengan URL?",
    answerOptions: [
      "Uniform Resource Locator",
      "Universal Resource Locator",
      "Unified Resource Locator",
      "Unique Resource Locator",
    ]..shuffle(Random()),
    correctAnswer: "Uniform Resource Locator",
  ),
  Question(
    question: "Apa perbedaan antara GET dan POST dalam HTTP?",
    answerOptions: [
      "GET mengirim data sebagai query string dalam URL, POST mengirim data dalam body request.",
      "GET mengirim data dalam body request, POST mengirim data sebagai query string dalam URL.",
      "Tidak ada perbedaan antara GET dan POST.",
      "GET hanya digunakan untuk membaca data, sementara POST digunakan untuk menulis data.",
    ]..shuffle(Random()),
    correctAnswer:
        "GET mengirim data sebagai query string dalam URL, POST mengirim data dalam body request.",
  ),
  Question(
    question: "Apa itu responsive web design?",
    answerOptions: [
      "Mendesain situs web yang dapat menyesuaikan tampilannya dengan perangkat yang digunakan oleh pengguna.",
      "Mendesain situs web yang hanya dapat diakses melalui ponsel pintar.",
      "Mendesain situs web yang tidak dapat diakses melalui desktop.",
      "Mendesain situs web yang hanya dapat diakses melalui komputer desktop.",
    ]..shuffle(Random()),
    correctAnswer:
        "Mendesain situs web yang dapat menyesuaikan tampilannya dengan perangkat yang digunakan oleh pengguna.",
  ),
  Question(
    question: "Apa yang dimaksud dengan SEO (Search Engine Optimization)?",
    answerOptions: [
      "Proses mengoptimalkan situs web agar muncul lebih tinggi dalam hasil pencarian mesin pencari.",
      "Membayar mesin pencari untuk memasukkan situs web dalam hasil pencarian.",
      "Proses menghalangi situs web dari muncul dalam hasil pencarian mesin pencari.",
      "Mengganti kata kunci di situs web dengan kata kunci populer.",
    ]..shuffle(Random()),
    correctAnswer:
        "Proses mengoptimalkan situs web agar muncul lebih tinggi dalam hasil pencarian mesin pencari.",
  ),
  Question(
    question: "Apa perbedaan antara frontend dan backend development?",
    answerOptions: [
      "Frontend development berkaitan dengan tampilan dan antarmuka pengguna, sedangkan backend development berkaitan dengan server dan database.",
      "Frontend development berkaitan dengan server dan database, sedangkan backend development berkaitan dengan tampilan dan antarmuka pengguna.",
      "Frontend development tidak memiliki peran dalam pengembangan web.",
      "Backend development berkaitan dengan tampilan dan antarmuka pengguna, sedangkan frontend development berkaitan dengan server dan database.",
    ]..shuffle(Random()),
    correctAnswer:
        "Frontend development berkaitan dengan tampilan dan antarmuka pengguna, sedangkan backend development berkaitan dengan server dan database.",
  ),
  Question(
    question: "Apa itu RESTful API dalam pemrograman web?",
    answerOptions: [
      "Sebuah arsitektur yang menggunakan protokol HTTP untuk komunikasi antara client dan server.",
      "Sebuah bahasa pemrograman populer untuk pengembangan web.",
      "Sebuah alat untuk mengelola database dalam pemrograman web.",
      "Sebuah protokol untuk pengiriman email dalam pemrograman web.",
    ]..shuffle(Random()),
    correctAnswer:
        "Sebuah arsitektur yang menggunakan protokol HTTP untuk komunikasi antara client dan server.",
  ),
];

var geographyQuestions = [
  Question(
    question: "Apa ibu kota Amerika Serikat?",
    answerOptions: [
      "New York",
      "Los Angeles",
      "Washington, D.C.",
      "Chicago",
    ]..shuffle(Random()),
    correctAnswer: "Washington, D.C.",
  ),
  Question(
    question: "Dimanakah letak Gunung Everest, gunung tertinggi di dunia?",
    answerOptions: [
      "Amerika Utara",
      "Afrika",
      "Asia",
      "Eropa",
    ]..shuffle(Random()),
    correctAnswer: "Asia",
  ),
  Question(
    question: "Negara mana yang memiliki hutan hujan Amazon terbesar?",
    answerOptions: [
      "Brasil",
      "Kolombia",
      "Peru",
      "Venezuela",
    ]..shuffle(Random()),
    correctAnswer: "Brasil",
  ),
  Question(
    question: "Apa nama samudra terbesar di dunia?",
    answerOptions: [
      "Samudra Hindia",
      "Samudra Pasifik",
      "Samudra Atlantik",
      "Samudra Arktik",
    ]..shuffle(Random()),
    correctAnswer: "Samudra Pasifik",
  ),
  Question(
    question: "Negara mana yang memiliki terbanyak jumlah pulau di dunia?",
    answerOptions: [
      "Indonesia",
      "Filipina",
      "Kepulauan Solomon",
      "Kepulauan Maladewa",
    ]..shuffle(Random()),
    correctAnswer: "Indonesia",
  ),
  Question(
    question: "Apa nama gurun terbesar di dunia?",
    answerOptions: [
      "Gurun Sahara",
      "Gurun Gobi",
      "Gurun Kalahari",
      "Gurun Atacama",
    ]..shuffle(Random()),
    correctAnswer: "Gurun Sahara",
  ),
  Question(
    question:
        "Negara mana yang memiliki Great Barrier Reef, terumbu karang terbesar di dunia?",
    answerOptions: [
      "Australia",
      "Indonesia",
      "Maladewa",
      "Filipina",
    ]..shuffle(Random()),
    correctAnswer: "Australia",
  ),
  Question(
    question:
        "Apa nama gunung berapi yang terletak di perbatasan Amerika Serikat dan Kanada?",
    answerOptions: [
      "Mount St. Helens",
      "Mount Kilimanjaro",
      "Mount Everest",
      "Mount McKinley",
    ]..shuffle(Random()),
    correctAnswer: "Mount St. Helens",
  ),
  Question(
    question: "Dimanakah letak Tebing Grand Canyon yang terkenal?",
    answerOptions: [
      "Amerika Serikat",
      "Kanada",
      "Australia",
      "Meksiko",
    ]..shuffle(Random()),
    correctAnswer: "Amerika Serikat",
  ),
  Question(
    question:
        "Negara mana yang terkenal dengan berada di khatulistiwa dan memiliki hutan hujan yang luas?",
    answerOptions: [
      "Kolombia",
      "Kongo",
      "Ekuador",
      "Venezuela",
    ]..shuffle(Random()),
    correctAnswer: "Ekuador",
  ),
];

var algorithmsDataQuestions = [
  Question(
    question: "Apa itu algoritma?",
    answerOptions: [
      "Langkah-langkah yang terstruktur untuk menyelesaikan masalah.",
      "Bahasa pemrograman.",
      "Jenis data dalam pemrograman.",
      "Fungsi matematika.",
    ]..shuffle(Random()),
    correctAnswer:
        "Langkah-langkah yang terstruktur untuk menyelesaikan masalah.",
  ),
  Question(
    question: "Apa itu struktur data?",
    answerOptions: [
      "Cara data diatur dan disimpan dalam komputer.",
      "Sebuah jenis algoritma.",
      "Sebuah bahasa pemrograman.",
      "Sebuah jenis database.",
    ]..shuffle(Random()),
    correctAnswer: "Cara data diatur dan disimpan dalam komputer.",
  ),
  Question(
    question: "Apa perbedaan antara array dan linked list?",
    answerOptions: [
      "Array adalah struktur data statis, sedangkan linked list adalah struktur data dinamis.",
      "Array adalah struktur data dinamis, sedangkan linked list adalah struktur data statis.",
      "Array dan linked list adalah struktur data yang sama.",
      "Array adalah struktur data yang digunakan untuk menyimpan gambar, sedangkan linked list digunakan untuk teks.",
    ]..shuffle(Random()),
    correctAnswer:
        "Array adalah struktur data statis, sedangkan linked list adalah struktur data dinamis.",
  ),
  Question(
    question: "Apa itu Big O Notation?",
    answerOptions: [
      "Sebuah notasi matematis untuk menganalisis kinerja algoritma.",
      "Sebuah jenis bahasa pemrograman.",
      "Sebuah metode untuk menghitung jumlah data dalam struktur data.",
      "Sebuah alat untuk menggambar grafik data.",
    ]..shuffle(Random()),
    correctAnswer:
        "Sebuah notasi matematis untuk menganalisis kinerja algoritma.",
  ),
  Question(
    question: "Apa yang dimaksud dengan pencarian biner (binary search)?",
    answerOptions: [
      "Sebuah algoritma pencarian yang membagi data menjadi dua bagian dan mencari di salah satu bagian.",
      "Sebuah algoritma yang mencari data dengan menghitung berapa kali data muncul dalam struktur data.",
      "Sebuah jenis algoritma pengurutan data.",
      "Sebuah metode untuk menghitung jumlah data dalam array.",
    ]..shuffle(Random()),
    correctAnswer:
        "Sebuah algoritma pencarian yang membagi data menjadi dua bagian dan mencari di salah satu bagian.",
  ),
  Question(
    question: "Apa itu antrian (queue) dalam struktur data?",
    answerOptions: [
      "Sebuah struktur data yang mengikuti prinsip FIFO (First-In, First-Out).",
      "Sebuah struktur data yang mengikuti prinsip LIFO (Last-In, First-Out).",
      "Sebuah struktur data yang menyimpan data dalam urutan acak.",
      "Sebuah struktur data yang hanya digunakan dalam grafik komputer.",
    ]..shuffle(Random()),
    correctAnswer:
        "Sebuah struktur data yang mengikuti prinsip FIFO (First-In, First-Out).",
  ),
  Question(
    question: "Apa itu tumpukan (stack) dalam struktur data?",
    answerOptions: [
      "Sebuah struktur data yang mengikuti prinsip LIFO (Last-In, First-Out).",
      "Sebuah struktur data yang mengikuti prinsip FIFO (First-In, First-Out).",
      "Sebuah struktur data yang digunakan untuk menyimpan daftar nama pengguna dan kata sandi.",
      "Sebuah struktur data yang hanya digunakan dalam grafik komputer.",
    ]..shuffle(Random()),
    correctAnswer:
        "Sebuah struktur data yang mengikuti prinsip LIFO (Last-In, First-Out).",
  ),
  Question(
    question: "Apa itu pengurutan bubble (bubble sort)?",
    answerOptions: [
      "Sebuah algoritma pengurutan yang membandingkan dan menukar elemen-elemen berdekatan hingga data terurut.",
      "Sebuah algoritma yang mengurutkan data dengan menggelembungkan elemen-elemen ke atas.",
      "Sebuah metode pengurutan yang menggunakan konsep antrian.",
      "Sebuah algoritma pengurutan yang membandingkan elemen pertama dengan elemen terakhir.",
    ]..shuffle(Random()),
    correctAnswer:
        "Sebuah algoritma pengurutan yang membandingkan dan menukar elemen-elemen berdekatan hingga data terurut.",
  ),
  Question(
    question: "Apa itu pencarian linear (linear search)?",
    answerOptions: [
      "Sebuah algoritma pencarian yang memeriksa setiap elemen satu per satu hingga menemukan yang dicari.",
      "Sebuah algoritma pencarian yang menggunakan pembagian dan pengecekan setiap bagian data.",
      "Sebuah algoritma pencarian yang hanya digunakan dalam bahasa pemrograman Python.",
      "Sebuah algoritma pencarian yang hanya digunakan dalam database.",
    ]..shuffle(Random()),
    correctAnswer:
        "Sebuah algoritma pencarian yang memeriksa setiap elemen satu per satu hingga menemukan yang dicari.",
  ),
  Question(
    question: "Apa itu rekursi dalam pemrograman?",
    answerOptions: [
      "Sebuah konsep di mana sebuah fungsi memanggil dirinya sendiri.",
      "Sebuah jenis algoritma pencarian.",
      "Sebuah metode untuk mengurutkan data.",
      "Sebuah teknik dalam pengembangan situs web.",
    ]..shuffle(Random()),
    correctAnswer:
        "Sebuah konsep di mana sebuah fungsi memanggil dirinya sendiri.",
  ),
];

var sportQuestions = [
  Question(
    question:
        "Apa olahraga yang menggunakan raket untuk memukul bola melintasi net?",
    answerOptions: ["Tenis", "Sepak Bola", "Basket", "Hoki"]..shuffle(Random()),
    correctAnswer: "Tenis",
  ),
  Question(
    question:
        "Di mana Olimpiade Musim Panas 2020 dijadwalkan diselenggarakan sebelum ditunda?",
    answerOptions: [
      "Tokyo, Jepang",
      "Paris, Prancis",
      "Los Angeles, Amerika Serikat",
      "Roma, Italia"
    ]..shuffle(Random()),
    correctAnswer: "Tokyo, Jepang",
  ),
  Question(
    question: "Apa tujuan utama dari olahraga golf?",
    answerOptions: [
      "Memasukkan bola ke dalam lubang dengan sedikit pukulan",
      "Mengumpulkan kartu kuning",
      "Melompat tinggi melewati palang",
      "Berlari secepat mungkin"
    ]..shuffle(Random()),
    correctAnswer: "Memasukkan bola ke dalam lubang dengan sedikit pukulan",
  ),
  Question(
    question:
        "Olahraga musim dingin yang menggunakan papan untuk meluncur di atas salju adalah?",
    answerOptions: ["Snowboarding", "Bermain Ski", "Curling", "Bobsled"]
      ..shuffle(Random()),
    correctAnswer: "Snowboarding",
  ),
  Question(
    question: "Apa nama turnamen bulu tangkis yang terkenal?",
    answerOptions: ["Olimpiade", "Grand Slam", "Thomas Cup", "Super Bowl"]
      ..shuffle(Random()),
    correctAnswer: "Thomas Cup",
  ),
  Question(
    question: "Siapa yang dikenal sebagai 'The Fastest Man on Earth'?",
    answerOptions: [
      "Usain Bolt",
      "Carl Lewis",
      "Michael Johnson",
      "Justin Gatlin"
    ]..shuffle(Random()),
    correctAnswer: "Usain Bolt",
  ),
  Question(
    question: "Apa istilah untuk berenang di air terbuka?",
    answerOptions: [
      "Marathon Swimming",
      "Indoor Swimming",
      "Synchronized Swimming",
      "Backstroke"
    ]..shuffle(Random()),
    correctAnswer: "Marathon Swimming",
  ),
  Question(
    question: "Apa olahraga yang melibatkan meninju lawan dalam ring?",
    answerOptions: ["Tinju", "Wrestling", "Karate", "Taekwondo"]
      ..shuffle(Random()),
    correctAnswer: "Tinju",
  ),
  Question(
    question: "Apa nama olahraga yang melibatkan menunggang kuda?",
    answerOptions: ["Equestrian", "Polo", "Lari Gasing", "Bungee Jumping"]
      ..shuffle(Random()),
    correctAnswer: "Equestrian",
  ),
  Question(
    question: "Apa nama olahraga yang menggunakan pedang untuk bertarung?",
    answerOptions: ["Fencing", "Archery", "Judo", "Cycling"]..shuffle(Random()),
    correctAnswer: "Fencing",
  ),
];

var generalKnowledge2Questions = [
  Question(
    question: "Apa ibukota Kanada?",
    answerOptions: [
      "Ottawa",
      "Toronto",
      "Vancouver",
      "Montreal",
    ]..shuffle(Random()),
    correctAnswer: "Ottawa",
  ),
  Question(
    question: "Apa singkatan dari NASA?",
    answerOptions: [
      "National Aeronautics and Space Administration",
      "North American Space Association",
      "National Air and Space Association",
      "Nuclear Astrophysics and Space Agency",
    ]..shuffle(Random()),
    correctAnswer: "National Aeronautics and Space Administration",
  ),
  Question(
    question: "Siapa pelukis terkenal yang menciptakan 'Starry Night'?",
    answerOptions: [
      "Vincent van Gogh",
      "Leonardo da Vinci",
      "Pablo Picasso",
      "Michelangelo",
    ]..shuffle(Random()),
    correctAnswer: "Vincent van Gogh",
  ),
  Question(
    question: "Apa ibukota Argentina?",
    answerOptions: [
      "Buenos Aires",
      "Santiago",
      "Lima",
      "Brasilia",
    ]..shuffle(Random()),
    correctAnswer: "Buenos Aires",
  ),
  Question(
    question: "Apa mata uang resmi Cina?",
    answerOptions: [
      "Yuan",
      "Renminbi",
      "Yen",
      "Rupee",
    ]..shuffle(Random()),
    correctAnswer: "Yuan",
  ),
  Question(
    question: "Apa singkatan dari laser?",
    answerOptions: [
      "Light Amplification by Stimulated Emission of Radiation",
      "Luminous Acceleration for Spectral Emission and Reflection",
      "Laser has no abbreviation",
      "Luminous And Sensory Emission Resource",
    ]..shuffle(Random()),
    correctAnswer: "Light Amplification by Stimulated Emission of Radiation",
  ),
  Question(
    question: "Siapakah presiden pertama Indonesia?",
    answerOptions: [
      "Soekarno",
      "Soeharto",
      "Megawati Sukarnoputri",
      "Joko Widodo",
    ]..shuffle(Random()),
    correctAnswer: "Soekarno",
  ),
  Question(
    question: "Apa nama alat yang digunakan untuk mengukur suhu?",
    answerOptions: [
      "Termometer",
      "Kalkulator",
      "Mikroskop",
      "Spektrometer",
    ]..shuffle(Random()),
    correctAnswer: "Termometer",
  ),
  Question(
    question: "Apa singkatan dari UNICEF?",
    answerOptions: [
      "United Nations International Children's Emergency Fund",
      "United Nations Institute for Children's Education and Family",
      "Universal Network for International Child Education and Future",
      "United Nations Children and Family Entity",
    ]..shuffle(Random()),
    correctAnswer: "United Nations International Children's Emergency Fund",
  ),
  Question(
    question: "Apa nama sungai terpanjang di Amerika Selatan?",
    answerOptions: [
      "Amazon",
      "Nile",
      "Mississippi",
      "Yangtze",
    ]..shuffle(Random()),
    correctAnswer: "Amazon",
  ),
];

var basicEnglishQuestions = [
  Question(
    question: "What is the plural form of 'child'?",
    answerOptions: [
      "Children",
      "Childs",
      "Childes",
      "Child's",
    ]..shuffle(Random()),
    correctAnswer: "Children",
  ),
  Question(
    question: "What is the opposite of 'happy'?",
    answerOptions: [
      "Sad",
      "Angry",
      "Excited",
      "Joyful",
    ]..shuffle(Random()),
    correctAnswer: "Sad",
  ),
  Question(
    question: "Choose the correct sentence:'",
    answerOptions: [
      "She don't like pizza.",
      "She doesn't like pizza.",
    ]..shuffle(Random()),
    correctAnswer: "She doesn't like pizza.",
  ),
  Question(
    question: "What is the color of the sky on a clear day?",
    answerOptions: [
      "Blue",
      "Green",
      "Red",
      "Yellow",
    ]..shuffle(Random()),
    correctAnswer: "Blue",
  ),
  Question(
    question: "Which word is a homophone for 'flower'?",
    answerOptions: [
      "Flour",
      "Flew",
      "Flood",
      "Flewour",
    ]..shuffle(Random()),
    correctAnswer: "Flour",
  ),
  Question(
    question: "What is the opposite of 'always'?",
    answerOptions: [
      "Never",
      "Sometimes",
      "Often",
      "Forever",
    ]..shuffle(Random()),
    correctAnswer: "Never",
  ),
  Question(
    question: "What is the opposite of 'hot'?",
    answerOptions: [
      "Cold",
      "Warm",
      "Cool",
      "Freezing",
    ]..shuffle(Random()),
    correctAnswer: "Cold",
  ),
  Question(
    question:
        "Which of these words means 'the study of the earth's physical features'?",
    answerOptions: [
      "Geography",
      "Geometry",
      "Biology",
      "History",
    ]..shuffle(Random()),
    correctAnswer: "Geography",
  ),
  Question(
    question:
        "Which of these words means 'the study of the earth's physical features'?",
    answerOptions: [
      "Geography",
      "Geometry",
      "Biology",
      "History",
    ]..shuffle(Random()),
    correctAnswer: "Geography",
  ),
  Question(
    question: "What do you call the meal that you eat in the morning?",
    answerOptions: [
      "Breakfast",
      "Lunch",
      "Dinner",
      "Supper",
    ]..shuffle(Random()),
    correctAnswer: "Breakfast",
  ),
];

var englishGrammarQuestions = [
  Question(
    question: "Which of the following is a proper noun?",
    answerOptions: [
      "Paris",
      "City",
      "Car",
      "Happiness",
    ]..shuffle(Random()),
    correctAnswer: "Paris",
  ),
  Question(
    question: "What is the present perfect tense of the verb 'eat'?",
    answerOptions: [
      "I have eaten",
      "I ate",
      "I was eating",
      "I eat",
    ]..shuffle(Random()),
    correctAnswer: "I have eaten",
  ),
  Question(
    question:
        "Choose the correct sentence: 'He laid on the beach' or 'He lay on the beach.'",
    answerOptions: [
      "He laid on the beach.",
      "He lay on the beach.",
    ]..shuffle(Random()),
    correctAnswer: "He lay on the beach.",
  ),
  Question(
    question: "What is the comparative form of 'good'?",
    answerOptions: [
      "Better",
      "Gooder",
      "Best",
      "Goodest",
    ]..shuffle(Random()),
    correctAnswer: "Better",
  ),
  Question(
    question:
        "Identify the direct object in the sentence: 'She baked a delicious cake.'",
    answerOptions: [
      "Cake",
      "She",
      "Delicious",
      "Baked",
    ]..shuffle(Random()),
    correctAnswer: "Cake",
  ),
  Question(
    question: "Which of the following is an example of a conjunction?",
    answerOptions: [
      "And",
      "Run",
      "Happily",
      "Quickly",
    ]..shuffle(Random()),
    correctAnswer: "And",
  ),
  Question(
    question: "What is the past perfect tense of the verb 'write'?",
    answerOptions: [
      "I had written",
      "I wrote",
      "I was writing",
      "I write",
    ]..shuffle(Random()),
    correctAnswer: "I had written",
  ),
  Question(
    question:
        "Choose the correct sentence: 'I will have finished my work' or 'I will finished my work.'",
    answerOptions: [
      "I will have finished my work.",
      "I will finished my work.",
    ]..shuffle(Random()),
    correctAnswer: "I will have finished my work.",
  ),
  Question(
    question: "Which word is an adverb in the sentence: 'She spoke softly.'?",
    answerOptions: [
      "Softly",
      "She",
      "Spoke",
      "She",
    ]..shuffle(Random()),
    correctAnswer: "Softly",
  ),
  Question(
    question: "What is the correct plural form of 'child'?",
    answerOptions: [
      "Children",
      "Childs",
      "Childes",
      "Child's",
    ]..shuffle(Random()),
    correctAnswer: "Children",
  ),
];
