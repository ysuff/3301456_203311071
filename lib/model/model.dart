class Model {
  String? email;
  String? password;

  Model({
    String? email,
    String? password,

  }) {this.email=email;this.password=password;}

  Model.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}