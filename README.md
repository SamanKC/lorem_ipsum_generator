# Lorem Ipsum Generator

The lorem_ipsum package provides a simple API for generating random "lorem ipsum" text with a configurable number of words or paragraphs. It's an ideal choice for developers who need a quick and easy way to add realistic-looking filler text to their applications or designs.

## Installation

Add this to your pubspec.yaml file:

```dart
dependencies:
  lorem_ipsum_generator: ^0.0.1
```

Then run flutter packages get to install the package.

## Usage

Import the package:

```dart
import 'package:lorem_ipsum_generator/lorem_ipsum_generator.dart';
```

### Basic example for usage of the package

```dart
import 'package:lorem_ipsum/lorem_ipsum.dart';

void main() {
  // Generate 10 words of "lorem ipsum" text
  final text = LoremIpsumGenerator.generate(words: 10);

  print(text);
  // Output: "incididunt veniam, irure nostrud fugiat sed dolor ex dolore excepteur ullamco veniam,"
}
```

### Generating text with a specified number of words

```dart
String text = LoremIpsumGenerator.generate(words: 10);
print(text); // Output: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
```

### Generating text with a specified number of paragraphs

```dart
String text = LoremIpsumGenerator.generate(paragraphs: 3);
print(text);
/*
Output:
"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
*/
```

### Generating text with a specified number of words per paragraph

```dart
String text = LoremIpsumGenerator.generate(wordsPerParagraph: 20, paragraphs: 2);
print(text);
/*
Output:
"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.

Exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
*/
```
