import 'package:flutter/material.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:seren/models/chat_message.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = [];
  List<Messages> chats = [];
  bool _isLoading = false;
  final _textController = TextEditingController();
  var _enteredMessage = '';
  final _openAI = OpenAI.instance.build(
    token: dotenv.env['OPENAI_API_KEY'],
    baseOption: HttpSetup(
      receiveTimeout: const Duration(seconds: 30),
    ),
  );
  Future<void> _handleInitialMessage(String character) async {
    setState(() {
      _isLoading = true;
    });
    setState(() {
      chats.add(
        Messages(role: Role.system, content: character),
      );
    });

    final request = ChatCompleteText(
      messages: [Messages(role: Role.system, content: character)],
      maxToken: 200,
      model: GptTurboChatModel(),
    );

    final response = await _openAI.onChatCompletion(request: request);

    ChatMessage message = ChatMessage(
      text: response!.choices.first.message!.content.trim().replaceAll('"', ''),
      isSentByMe: false,
      timestamp: DateTime.now(),
    );
    setState(() {
      chats.add(
        Messages(
          role: Role.assistant,
          content: response.choices.first.message!.content
              .trim()
              .replaceAll('"', ''),
        ),
      );
    });

    setState(() {
      _messages.insert(0, message);
      _isLoading = false;
    });
  }

  Future<void> _handleSubmit(String text) async {
    setState(() {
      _isLoading = true;
    });
    _textController.clear();
    ChatMessage prompt = ChatMessage(
      text: text,
      isSentByMe: true,
      timestamp: DateTime.now(),
    );

    setState(() {
      _messages.insert(0, prompt);
      chats.add(Messages(role: Role.user, content: text));
    });
    final request = ChatCompleteText(
      messages: chats,
      maxToken: 200,
      model: GptTurboChatModel(),
    );
    final response = await _openAI.onChatCompletion(request: request);

    ChatMessage message = ChatMessage(
      text: response!.choices.first.message!.content.trim(),
      isSentByMe: false,
      timestamp: DateTime.now(),
    );
    setState(() {
      chats.add(
        Messages(
          role: Role.assistant,
          content: response.choices.first.message!.content
              .trim()
              .replaceAll('"', ''),
        ),
      );
    });

    setState(() {
      _messages.insert(0, message);
      _isLoading = false;
    });
  }

  @override
  void initState() {
    _handleInitialMessage(
      'You\'re a professional and caring mental health therapist, focused on promoting a peaceful mind through cognitive behavioral therapy. Your name is Seren. Begin with: \'I\'m here to listen. What\'s on your mind today?. Always Respond empathetically, aiming for 0-100 words, seeking understanding. Provide a cognitive behavioral therapy session in response to the client\'s thoughts. Keep responses as short as possible.',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        actions: const [],
        title: const Text("SEREN.AI"),
      ),
      backgroundColor: const Color.fromARGB(255, 78, 89, 102),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (ctx, i) => Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 8,
                ),
                decoration: BoxDecoration(
                  color: _messages[i].isSentByMe
                      ? const Color.fromARGB(255, 228, 246, 236)
                      : const Color.fromARGB(255, 130, 149, 158),
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(12),
                    topRight: const Radius.circular(12),
                    bottomLeft: _messages[i].isSentByMe
                        ? const Radius.circular(0)
                        : const Radius.circular(12),
                    bottomRight: _messages[i].isSentByMe
                        ? const Radius.circular(0)
                        : const Radius.circular(12),
                  ),
                ),
                padding: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width - 180,
                child: Column(
                  crossAxisAlignment: _messages[i].isSentByMe
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    Text(
                      _messages[i].isSentByMe ? "Me" : "Seren",
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      _messages[i].text,
                      style: GoogleFonts.lato(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      _messages[i].timestamp.toString(),
                      style: GoogleFonts.lato(fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 12,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                      controller: _textController,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type a message',
                        enabled: !_isLoading,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _enteredMessage = value;
                        });
                      }),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _enteredMessage.trim().isEmpty
                      ? null
                      : () => _handleSubmit(
                            _enteredMessage,
                          ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
