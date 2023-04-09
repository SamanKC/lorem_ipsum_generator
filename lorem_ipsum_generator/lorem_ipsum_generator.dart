import 'dart:io';

import 'package:lorem_ipsum_generator/lorem_ipsum_generator.dart';

void main() {
  var noOfWords = stdin.readLineSync();
  final text = LoremIpsumGenerator.generate(
      paragraphs: int.parse(noOfWords.toString()), wordsPerParagraph: 12);
  print(text);
}
