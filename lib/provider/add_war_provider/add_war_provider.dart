import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel_admin/core/constant/app_Strings.dart';
import 'package:dalel_admin/data/model/historical_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'add_war_state.dart';

final docIdProvider = StateProvider<String>((ref) => "");
final getWarProvider =
    FutureProvider.autoDispose<List<HistoricalModel>>((ref) async {
  final docId = ref.watch(docIdProvider);
  final response = await FirebaseFirestore.instance
      .collection(AppStrings.periodsCollection)
      .doc(docId)
      .collection(AppStrings.warCollection)
      .get();
  final data = response.docs;
  return data.map((e) => HistoricalModel.fromJson(e.id, e.data())).toList();
});
//!==============================================

final addWarProvider = StateNotifierProvider<AddWarProvider, AddWarState>(
    (ref) => AddWarProvider());

class AddWarProvider extends StateNotifier<AddWarState> {
  AddWarProvider() : super(AddWarInitial());
  String? imageUrl;
  String? name;
  String? description;
  String? docId;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<void> addWar() async {
    try {
      state = AddWarLoading();
      if (formKey.currentState!.validate() && imageUrl != null) {
        formKey.currentState!.save();

        log(imageUrl!);
        log(name!);
        log(description!);
        log(docId!);
        await firestore
            .collection(AppStrings.periodsCollection)
            .doc(docId)
            .collection(AppStrings.warCollection)
            .add(
          {
            "image_url": imageUrl,
            "name": name,
            "description": description,
          },
        );
        state = AddWarSuccess();
      }
    } catch (e) {
      state = AddWarError(e.toString());
    }
  }
}
