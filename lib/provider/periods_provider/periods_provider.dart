import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel_admin/data/model/historical_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'periods_state.dart';

final collectionProvider = StateProvider<String>((ref) => "");
final getPeriodsProvider = FutureProvider<List<HistoricalModel>>((ref) async {
  final collection = ref.watch(collectionProvider);
  final response =
      await FirebaseFirestore.instance.collection(collection).get();
  final data = response.docs;
  return data.map((e) => HistoricalModel.fromJson(e.id, e.data())).toList();
});
//!==============================================
final periodsProvider = StateNotifierProvider<PeriodsProvider, PeriodsState>(
    (ref) => PeriodsProvider());

class PeriodsProvider extends StateNotifier<PeriodsState> {
  PeriodsProvider() : super(PeriodsInitial());
  String? imageUrl;
  String? name;
  String? description;
  String? collection;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<void> addHistoricalPeriods() async {
    try {
      state = AddPeriodsLoading();
      if (formKey.currentState!.validate() && imageUrl != null) {
        formKey.currentState!.save();
        log("$imageUrl");
        log("$name ");
        log("$description");
        log("$collection");
        await firestore.collection(collection!).add(
          {
            "image_url": imageUrl,
            "name": name,
            "description": description,
          },
        );
        state = AddPeriodsSuccess();
      }
    } catch (e) {
      state = AddPeriodsError(e.toString());
    }
  }
}
