// ignore_for_file: prefer_const_constructors

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:receipt_saver/UI/home/components/home_componenet.dart';
import 'package:receipt_saver/UI/store/store_page.dart';

part 'home_page_state.dart';
part 'home_page_cubit.freezed.dart';

class HomePageCubit extends Cubit<HomePageState> {
  // final ReceiptRepository receiptRepository;
  HomePageCubit(
      //  this.receiptRepository,
      )
      : super(HomePageState.initial(body: HomeComponent(), index: 0)) {
    _init();
  }

  _init() {}

  onItemTapped(int index) {
    switch (index) {
      case 0:
        {
          emit(HomePageState.initial(body: HomeComponent(), index: index));
        }
        break;
      case 1:
        {
          emit(HomePageState.initial(body: StorePage(), index: index));
        }
        break;
    }
  }
}
