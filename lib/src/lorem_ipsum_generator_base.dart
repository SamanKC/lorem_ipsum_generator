// Copyright 2023 Saman KC
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import 'dart:math';

class LoremIpsumGenerator {
  // The default Lorem Ipsum text to use.
  static const String _loremIpsumText =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

  // Generate Lorem Ipsum text.
  //
  // `words` is the number of words to generate, or null if not specified.
  //
  // `paragraphs` is the number of paragraphs to generate, or null if not specified.
  //
  // `wordsPerParagraph` is the number of words per paragraph (when `paragraphs` is specified).
  //
  // Returns the generated text.
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
