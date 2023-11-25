class   LoginModel {
  late final String accessToken;
  late final String tokenType;

  LoginModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
  }
}
