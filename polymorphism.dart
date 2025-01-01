//in this if we have to make objects of the same class we can do it
//objects behave differently for the same class
//example:

class AppState {
  void getState(String s) {
    print("App Sate : " + s.toString());
  }
}

class ErrorState extends AppState {}

class LoadedState extends AppState {}

void main() {
  AppState estate = ErrorState();
  AppState lstate = LoadedState();

  estate.getState("Error");
  lstate.getState("Loaded");
}
