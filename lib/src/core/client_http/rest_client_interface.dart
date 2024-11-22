import 'client_http.dart';
import 'rest_client_multipart.dart';

abstract interface class IRestClient {
  Future<RestClientResponse> post(RestClientRequest request);

  Future<RestClientResponse> get(RestClientRequest request);

  Future<RestClientResponse> put(RestClientRequest request);

  Future<RestClientResponse> delete(RestClientRequest request);

  Future<RestClientResponse> patch(RestClientRequest request);

  Future<RestClientResponse> upload(RestClientMultipart multipart);

  void addInterceptors(IClientInterceptor interceptor);

  void removeInterceptors(IClientInterceptor interceptor);
}
