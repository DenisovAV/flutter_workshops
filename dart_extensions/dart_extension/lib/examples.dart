extension on String {
  selfPrint() => print(this);

  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  String operator &(String other) => '$this $other';

  int operator ^(String other) => this.length + other.length;
}

extension<T extends num> on T {
  T increase() => this + 1;
}

extension<T extends num> on List<T> {
  T get sum {
    num _zero = 0;
    return this.fold(_zero, (a, b) => a + b);
  }
}

extension<R, F, S> on R Function(F, S) {
  R Function(S) simplify(F first) {
    return (S second) => this(first, second);
  }
}

class Examples {
  bool login(String email, String password) {
    // functionality
    return true;
  }

  void main() {
    print('First String' & 'Second String');
    ('First String' & 'Second String').selfPrint();
    ('First String' ^ 'Second String').increase().toString().selfPrint();

    final intList = [1, 2, 3, 4, 5, 6];
    final doubleList = [1.0, 2.2, 3.3, 4.4, 5.5, 6.6];

    print('${intList.sum} ${doubleList.sum}');

    var passwords = ['password1', 'password1'];
    var email = 'email@email.com';
    //passwords.forEach((pass)=>login(email, pass));
    // the next string is the same, but with extension using
    passwords.forEach(login.simplify(email));
  }
}
