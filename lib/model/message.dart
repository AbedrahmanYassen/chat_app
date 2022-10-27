class Message {
  late String sender;
  late String senderPhoneNumber;
  // Message({this.sender, this.content, this.time, this.senderPhoneNumber});

  late String content;
  late String time;
  Message(String content, String sender, String time) {
    this.content = content;
    this.time = time;
    this.sender = sender;
  }
  Message.fromJson(Map<String, dynamic> json) {
    if (json["msg"] != false) {
      this.sender = json!["sender"];
      this.content = json["msg"];
      this.time = json["time"];
    } else {
      this.sender = "me";
      this.content = "Msg";
      this.time = "whatever";
    }
  }
}
