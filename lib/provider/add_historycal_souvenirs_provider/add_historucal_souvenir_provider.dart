import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel_admin/data/model/historical_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'add_historucal_souvenir_state.dart';

final getHistoricalSouvenirProvider =
    FutureProvider.autoDispose<List<HistoricalModel>>((ref) async {
  final response =
      await FirebaseFirestore.instance.collection("BazarSouvenir").get();
  final data = response.docs;
  return data.map((e) => HistoricalModel.fromJson(e.id, e.data())).toList();
});
//!==============================================
final addHistoricalSouvenirProvider = StateNotifierProvider<
    AddHistoricalSouvenirProvider,
    AddHistoricalSouvenirState>((ref) => AddHistoricalSouvenirProvider());

class AddHistoricalSouvenirProvider
    extends StateNotifier<AddHistoricalSouvenirState> {
  AddHistoricalSouvenirProvider() : super(AddHistoricalSouvenirInitial());

  String? imageUrl;
  String? name;
  String? description;
  String? price;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<void> addWar() async {
    try {
      state = AddHistoricalSouvenirLoading();
      if (formKey.currentState!.validate() && imageUrl != null) {
        formKey.currentState!.save();

        log("$imageUrl");
        log("$name ");
        log("$description");
        log("$price");
        await firestore.collection("BazarSouvenir").add(
          {
            "image_url": imageUrl,
            "name": name,
            "description": description,
            "price": description,
          },
        );
        state = AddHistoricalSouvenirSuccess();
      }
    } catch (e) {
      state = AddHistoricalSouvenirError(e.toString());
    }
  }
}
