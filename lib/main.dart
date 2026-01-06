import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:posts_app/posts/presentation/view/posts_view.dart';

void main() {
  runApp(const PostsApp());
}

class PostsApp extends StatelessWidget {
  const PostsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.cairoTextTheme()),
      home: Scaffold(body: const PostsView()),
    );
  }
}
