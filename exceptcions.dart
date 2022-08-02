import 'dart:io';

import 'mixins.dart';

void main(List<String> args) async {
  var x = PilotedCraft();
  if (x.astronauts == 0) {
    throw StateError('No astronauts.');
  }

  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  try {
    for (final object in flybyObjects) {
      var description = await File('$object.txt').readAsString();
      print(description);
    }
  } on IOException catch (e) {
    print('Could not describe object: $e');
  } finally {
    flybyObjects.clear();
  }
}
