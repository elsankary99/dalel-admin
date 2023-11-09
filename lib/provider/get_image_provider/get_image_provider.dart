import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

part 'get_image_state.dart';

final getImageProvider = StateNotifierProvider<GetImageProvider, GetImageState>(
    (ref) => GetImageProvider());

class GetImageProvider extends StateNotifier<GetImageState> {
  GetImageProvider() : super(GetImageInitial());
  final storage = FirebaseStorage.instance;

  final ImagePicker picker = ImagePicker();
  File? file;
  String? imagePath;
  String? imageUrl;
  Future<void> getImage(ImageSource source) async {
    try {
      final image = await picker.pickImage(source: source);
      if (image != null) {
        state = GetImageLoading();
        log("GetImageLoading");

        imagePath = image.path;
        file = File(image.path);
        await uploadImage();
        state = GetImageSuccess();
        log("GetImageSuccess");
      }
    } catch (e) {
      state = GetImageError(e.toString());
      log("GetImageError ${e.toString()}");
    }
  }

  uploadImage() async {
    final imageName = basename(imagePath!);
    final imagePlace = storage.ref("Images").child(imageName);
    await imagePlace.putFile(file!);
    final imageUrl = await imagePlace.getDownloadURL();
    log(imageUrl);
  }
}
