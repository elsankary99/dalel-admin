import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel_admin/data/model/historical_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'add_history_book_state.dart';

final getHistoryBookProvider =
    FutureProvider.autoDispose<List<HistoricalModel>>((ref) async {
  final response =
      await FirebaseFirestore.instance.collection("BazarBooks").get();
  final data = response.docs;
  return data.map((e) => HistoricalModel.fromJson(e.id, e.data())).toList();
});
//!==============================================

final addHistoryBookProvider =
    StateNotifierProvider<AddHistoryBookProvider, AddHistoryBookState>(
        (ref) => AddHistoryBookProvider());

class AddHistoryBookProvider extends StateNotifier<AddHistoryBookState> {
  AddHistoryBookProvider() : super(AddHistoryBookInitial());

  String? imageUrl;
  String? name;
  String? description;
  String? price;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<void> addWar() async {
    try {
      state = AddHistoryBookLoading();
      if (formKey.currentState!.validate() && imageUrl != null) {
        formKey.currentState!.save();

        log("$imageUrl");
        log("$name ");
        log("$description");
        log("$price");
        await firestore.collection("BazarBooks").add(
          {
            "image_url": imageUrl,
            "name": name,
            "description": description,
            "price": description,
          },
        );
        state = AddHistoryBookSuccess();
      }
    } catch (e) {
      state = AddHistoryBookError(e.toString());
    }
  }
}
