part of 'get_image_provider.dart';

abstract class GetImageState {
  const GetImageState();
}

class GetImageInitial extends GetImageState {}

class GetImageLoading extends GetImageState {}

class GetImageSuccess extends GetImageState {}

class GetImageError extends GetImageState {
  final String message;
  const GetImageError(this.message);
}
