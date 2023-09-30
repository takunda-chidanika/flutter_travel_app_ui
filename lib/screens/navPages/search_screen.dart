import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: AppLargeText(
          text:"Search Screen",
        ),
      ),
    );
  }
}