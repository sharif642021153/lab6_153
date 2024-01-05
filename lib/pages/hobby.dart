class Hobby {
  final String name;
  bool value;

  Hobby({required this.name, required this.value});

  static List<Hobby> getHobby() {
    return [
      Hobby(name: "ดู TikTok", value: false),
      Hobby(name: "ดูหนัง", value: false),
      Hobby(name: "ตอบแชทสาว", value: false),
      Hobby(name: "เที่ยว", value: false),
    ];
  }
}
