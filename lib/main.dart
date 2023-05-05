import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yesnochat_app/features/features.dart';
import 'package:yesnochat_app/utils/utils.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
        title: 'Yes | No App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 6).theme(),
        home: const ChatPage(),
      ),
    );
  }
}
