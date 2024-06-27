// lib/chat_stream.dart
import 'dart:async';
import 'package:flutterstream/chat_message.dart.dart';

 
class ChatStream {
  final _controller = StreamController<List<ChatMessage>>.broadcast();
  List<ChatMessage> _messages = [];

  Stream<List<ChatMessage>> get stream => _controller.stream;

  void addMessage(ChatMessage message) {
    _messages.add(message);
    _controller.sink.add(_messages);
  }

  void dispose() {
    _controller.close();
  }
}
