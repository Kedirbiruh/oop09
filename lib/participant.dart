class Participant {
  final String firstName;
  final String lastName;
  final int age;
  final String? addresse;
  final int? phoneNumber;
  final String? email;

  Participant(
    this.firstName,
    this.lastName,
    this.age, {
    this.addresse,
    this.phoneNumber,
    this.email,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Participant &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.age == age &&
        other.addresse == addresse &&
        other.phoneNumber == phoneNumber &&
        other.email == email;
  }

  @override
  int get hashCode =>
      Object.hash(firstName, lastName, age, addresse, phoneNumber, email);

   Participant copyWith({String? addresse, int? phon})
}

