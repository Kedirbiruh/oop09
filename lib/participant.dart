class Participant {
  final String firstName;
  final String lastName;
  final int age;
  final String? address;
  final String? phoneNumber;
  final String? email;

  Participant({
    required this.firstName,
    required this.lastName,
    required this.age, 
    this.address,
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
        other.address == address &&
        other.phoneNumber == phoneNumber &&
        other.email == email;
  }

  @override
  int get hashCode =>
      Object.hash(address, phoneNumber, email);

  Participant copyWith(
    {Function()? firstName, 
    Function()? lastName, 
    Function()? age, 
    Function()? address, 
    Function()? phoneNumber, 
    Function()? email,
    }) {

    return Participant(
    
      firstName: firstName!= null? firstName(): this.firstName,
      lastName: lastName!= null? lastName(): this.lastName,
      age: age!= null? age(): this.age,
      address: address!= null? address(): this.address,
      phoneNumber: phoneNumber!= null? phoneNumber(): this.phoneNumber,
      email: email!= null? email(): this.email,
      );
  }

  @override
  String toString() {
    return 'Participant(firstName: $firstName, lastName: $lastName, age: $age, address: $address, phoneNumber: $phoneNumber, email: $email)';
  }
}
