import '../lib/participant.dart';

void main() {
final p1 = Participant(firstName: "Max", lastName: "Muster", age: 25, email: "max@test.com");

  print(p1); 
  // Participant(firstName: Max, lastName: Muster, age: 25, address: null, phoneNumber: null, email: max@test.com)

  // Normaler copyWith: Email ändern
  var p2 = p1.copyWith(email: () => "neueEmail@test.com");
  print(p2.email);

  var p3 = p1.copyWith(email: () => null);
  print(p3.email);
}
