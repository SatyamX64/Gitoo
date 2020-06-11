class API {
  static final authToken = 'befd0ae5a9eeb9fad4da5813648d4842d1f568df';
  static final host = 'api.github.com';
  Map<String, String> headers = {'Authorization': 'Token $authToken'};
  Uri userURI() => Uri(
        scheme: 'https',
        host: host,
        path: '/users',
      );
}
