mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft with Piloted {
  // ยทยทยท
}

void main(List<String> args) {
  var x = PilotedCraft();

  x.describeCrew();
}
