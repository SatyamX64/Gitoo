class API {
  static final authToken = '0f8c0c139014ce9df8a298f6321f48975cad9deb';
  static final host = 'api.github.com';
  Map<String, String> headers = {'Authorization': 'Token $authToken'};
  Uri userURI() => Uri(
        scheme: 'https',
        host: host,
        path: '/users',
      );
}
