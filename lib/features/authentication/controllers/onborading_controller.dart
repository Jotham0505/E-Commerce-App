import 'package:flutter/material.dart';
import 'package:get/get.dart';

class onBoardingController extends GetxController {
  static onBoardingController get instance => Get.find();


  //Variables 
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update Current indexx when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //jump to the specific dot selected page 
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }



  // update the current index and jump tot he next page 
  void nextPage(){
    if (currentPageIndex.value == 2) {
     // Get.to(LoginScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }



  // update current index and jump to the last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
} 
