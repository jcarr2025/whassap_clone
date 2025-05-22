class ChatModel {
  final String? name;
  String? message;
  String? time;
  String? imageUrl;

  ChatModel({
    this.name,
    this.imageUrl,
    this.message,
    this.time,
  });
  List<ChatModel> messageData = [
    new ChatModel(
      name: 'John Doe',
      message: 'Hello, how are you?',
      time: '10:30 AM',
      imageUrl: 'https://example.com/image1.jpg',
    ),
    new ChatModel(
      name: 'Jane Smith',
      message: 'I am fine, thank you!',
      time: '10:31 AM',
      imageUrl: 'https://example.com/image2.jpg',
    ),
  ];
}