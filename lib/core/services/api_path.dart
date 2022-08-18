class ApiPath {
  static String keycloakDomain = '';
  static String realms = '';
  static String clientId = '';
  static String clientSecret = '';
  static String bravoUrl = '';

  static final Uri oidcUrl = Uri.parse('$keycloakDomain/auth/realms/$realms/');
  static const String oidcClient = 'prevyo';
  static String oidcDiscoveryUri =
      '$keycloakDomain/auth/realms/$realms/.well-known/openid-configuration';
  static final List<String> oidcScopes = List<String>.of(['openid']);

  static const String webServiceUrl = 'http://localhost';
  static const String sourcePrefix = ':7777';
  static const String backendPrefix = ':9090';
  static const String cachedUserInfoKey = 'CACHED_USER_INFO';
  static const String cachedConfigurationKey = 'CACHED_CONFIGURATION';
  static const String cachedExpirationToken = 'CACHED_EXPIRATION_TOKEN';
  static const String cachedIdToken = 'CACHED_ID_TOKEN';
  static const String cachedAccessToken = 'CACHED_ACCESS_TOKEN';
  static const String cachedRefreshToken = 'CACHED_RENEW_TOKEN';

  static final Uri currentUri = Uri.base;
  static final Uri redirectUri = Uri(
    host: currentUri.host,
    scheme: currentUri.scheme,
    port: currentUri.port,
    path: '/callback.html',
  );
  static final Uri authUri = Uri(
    host: currentUri.host,
    scheme: currentUri.scheme,
    port: currentUri.port,
    path: '/admin',
  );
}

class GmailPath {
  static const String scope = 'https://mail.google.com';
  static const String accessType = 'offline';
  static const String responseType = 'code';
  static List<String> redirectUri = [];
  static String code = '';
  static String authUri = '';
  static String clientSecret = '';
  static String clientId = '';

  static String cachedGmailToken = 'GMAIL_TOKEN';
  static String cachedGmailcode = 'CODE';

  static String apiUrl = '$authUri'
      '?scope=$scope'
      '&access_type=$accessType'
      '&redirect_uri=${redirectUri[0].toString()}'
      '&response_type=$responseType'
      '&client_id=$clientId'
      '&prompt=consent';
}
