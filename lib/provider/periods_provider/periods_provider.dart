import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'periods_state.dart';

final periodsProvider = StateNotifierProvider<PeriodsProvider, PeriodsState>(
    (ref) => PeriodsProvider());

class PeriodsProvider extends StateNotifier<PeriodsState> {
  PeriodsProvider() : super(PeriodsInitial());
  String? imageUrl;
  String? name;
  String? description;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<void> addHistoricalPeriods() async {
    if (formKey.currentState!.validate() && imageUrl != null) {
      formKey.currentState!.save();

      log(imageUrl!);
      log(name!);
      log(description!);
      await firestore.collection("HistoricalPeriods").add(
        {
          "image_url": imageUrl,
          "name": name,
          "description": description,
        },
      );
    }
  }
}
