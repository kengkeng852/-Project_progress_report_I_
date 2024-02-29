class Profile {
  String fullName;
  String email;
  String password;

  Profile({this.fullName = '', this.email = '', this.password = ''});

  @override
  String toString() {
    return 'Profile{fullName: $fullName, email: $email, password: $password}';
  }
}
