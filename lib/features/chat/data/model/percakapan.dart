class Percakapan {
  String sender;
  String text;

  Percakapan({required this.sender, required this.text});
}

List<Percakapan> percakapanList = [
  Percakapan(sender: 'user', text: 'Halo, apa kabar?'),
  Percakapan(
      sender: 'sistem',
      text: 'Halo, saya baik-baik saja. Bagaimana dengan Anda?'),
  Percakapan(
      sender: 'user', text: 'Saya baik juga, terima kasih sudah bertanya.'),
  Percakapan(sender: 'sistem', text: 'Sama-sama. Ada yang bisa saya bantu?'),
  Percakapan(sender: 'user', text: 'Saya ingin tahu tentang cuaca hari ini.'),
  Percakapan(
      sender: 'sistem',
      text:
          'Maaf, saya tidak bisa memberikan informasi cuaca secara real-time.')
];
