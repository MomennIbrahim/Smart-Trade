import 'package:dio/dio.dart';

abstract class Failure{
  final String errMessage;
  const Failure(this.errMessage);
}

class ServerFailure extends Failure{
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException error){

    switch(error.type){
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout');
      case DioExceptionType.receiveTimeout:
      return ServerFailure('Receive timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(error.response!.statusCode!,error.response!.data);
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure('Something went wrong, Please try again later');
      case DioExceptionType.cancel:
        return ServerFailure('The request was canceled');
    }
  }

  factory ServerFailure.fromResponse(int statusCode , dynamic response){
    if(statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServerFailure(response.toString());
    }else if(statusCode == 422){
      if(response.toString() == '{email: [The email must be a valid email address.]}') {
        return ServerFailure(response['email'][0]);
      }else if(response.toString()=='{password: [The password must be at least 6 characters.]}'){
        return ServerFailure(response['password'][0]);
      }else if(response.toString() == '{email: [The email must be a valid email address.], password: [The password must be at least 6 characters.]}'){
        return ServerFailure('The Email and Password must be a valid');
      }else {
        return ServerFailure('Not Valid');
      }
    }else if(statusCode == 404){
      return ServerFailure('Your request not found, Please try later');
    }else if (statusCode >= 500) {
      return ServerFailure('Internal server error, Please try later');
    }else{
      return ServerFailure('Opps there was an error, Please try later');
    }
  }
}