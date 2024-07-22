import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Features/Splash/presentation/views/widgets/slidingtext.dart';
import 'package:bookly/Features/home/presentation/views/homeview.dart';
import 'package:bookly/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    InitSlidingAnimation();

    NavigateToHome();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SizedBox(
          height: 10,
        ),
        SlidingText(
            animationController: animationController,
            slidingAnimation: slidingAnimation)
      ],
    );
  }

  void NavigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(HomeView(),
          transition: Transition.fade, duration: KTransitionDuration);
    });
  }

  void InitSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 10), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
}
