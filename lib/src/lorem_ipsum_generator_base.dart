import 'dart:math';

class LoremIpsumGenerator {
  // The default Lorem Ipsum text to use.
  static const String _loremIpsumText =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

  //Generate Lorem Ipsum text.
  //`words` is the number of words to generate, or null if not specified.
  //`paragraphs` is the number of paragraphs to generate, or null if not specified.
  //`wordsPerParagraph` is the number of words per paragraph (when `paragraphs` is specified).
  //Returns the generated text.
  static String generate({
    int? words,
    int? paragraphs,
    int wordsPerParagraph = 50,
  }) {
    final random = Random();
    final wordList = _loremIpsumText.split(' ');
    final output = StringBuffer();

    if (words != null) {
      // Generate the specified number of words.
      for (int i = 0; i < words; i++) {
        final index = random.nextInt(wordList.length);
        output.write('${wordList[index]} ');
      }
    } else if (paragraphs != null) {
      // Generate the specified number of paragraphs.
      for (int i = 0; i < paragraphs; i++) {
        // Generate the specified number of words per paragraph.
        for (int j = 0; j < wordsPerParagraph; j++) {
          final index = random.nextInt(wordList.length);
          output.write('${wordList[index]} ');
        }
        output.write('\n'); // Add a newline between paragraphs.
      }
    }

    return output.toString().trim();
  }
}
