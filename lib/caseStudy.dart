import 'dart:convert';

import 'dart:io';

List generateArray() {
  final output = [];

  // Loop 1 to 100
  for (int i = 1; i <= 100; i++) {
    // divisible by both 3 and 5 replace to "BIGBANG"
    if (i % 3 == 0 && i % 5 == 0) {
      output.add("BIGBANG");
    }
    // divisible by 3 replace as "BIG"
    else if (i % 3 == 0) {
      output.add("BIG");
    }
    // divisible by 5 replace as"BANG"
    else if (i % 5 == 0) {
      output.add("BANG");
    }
    // add the number as a string
    else {
      output.add(i.toString());
    }
  }

  return output;
}

void main() {
  final output = generateArray();
  final jsonOutput = jsonEncode(output);

  print(jsonOutput); // Print output to console
  // Write output to file
  final file = File('output.json');
  file.writeAsString(jsonOutput);
}
