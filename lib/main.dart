import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:confetti/confetti.dart';
import 'package:fancy_snackbar/fancy_snackbar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(
                () => AnimatedTextKitExample(),
                transition: Transition.rightToLeft,
                duration: const Duration(seconds: 1),
              );
            },
            child: const Text(
              'AnimatedTextKitExample',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(
                () => FlutterToastExample(),
                transition: Transition.rightToLeft,
                duration: const Duration(seconds: 1),
              );
            },
            child: const Text(
              'FlutterToastExample',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(
                () => FancySnackbarExample(),
                transition: Transition.rightToLeft,
                duration: const Duration(seconds: 1),
              );
            },
            child: const Text(
              'FancySnackbarExample',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(
                () => ConfettiExample(),
                transition: Transition.rightToLeft,
                duration: const Duration(seconds: 1),
              );
            },
            child: const Text(
              'ConfettiExample',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(
                () => FlutterAnimateExample(),
                transition: Transition.rightToLeft,
                duration: const Duration(seconds: 1),
              );
            },
            child: const Text(
              'FlutterAnimateExample',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(
                () => ShimmerExample(),
                transition: Transition.rightToLeft,
                duration: const Duration(seconds: 1),
              );
            },
            child: const Text(
              'ShimmerExample',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(
                () => LiquidSwipeExample(),
                transition: Transition.rightToLeft,
                duration: const Duration(seconds: 1),
              );
            },
            child: const Text(
              'LiquidSwipeExample',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(
                () => GlassEffectExample(),
                transition: Transition.rightToLeft,
                duration: const Duration(seconds: 1),
              );
            },
            child: const Text(
              'GlassEffectExample',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedTextKitExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Text Kit Example")),
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(
              fontSize: 30, fontFamily: 'Horizon', color: Colors.black),
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText('Hello, World!',
                  speed: const Duration(milliseconds: 100), cursor: "_"),
              TypewriterAnimatedText('Welcome to Flutter'),
              FadeAnimatedText('Animated Text Kit is fun!'),
            ],
            onTap: () {
              print("Tap event triggered");
            },
          ),
        ),
      ),
    );
  }
}

class FlutterToastExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Toast Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: "Hello from FlutterToast!",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.TOP,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0,
            );
          },
          child: Text("Show Toast"),
        ),
      ),
    );
  }
}

class FancySnackbarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fancy Snackbar Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            FancySnackbar.show(
              context,
              "Hi, I'm happy to use the Fancy Snackbar!",
              logo: const Icon(Icons.done_all, color: Colors.white),
              seconds: 10,
            );
          },
          child: Text("Show Fancy Snackbar"),
        ),
      ),
    );
  }
}

class ConfettiExample extends StatefulWidget {
  @override
  _ConfettiExampleState createState() => _ConfettiExampleState();
}

class _ConfettiExampleState extends State<ConfettiExample> {
  late ConfettiController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController(duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confetti Example")),
      body: Stack(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                _controller.play();
              },
              child: Text("Celebrate!"),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ConfettiWidget(
              confettiController: _controller,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: false,
              colors: [Colors.red, Colors.blue, Colors.green, Colors.orange],
              child: Container(
                width: 50,
                height: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FlutterAnimateExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Animate Example")),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(50),
          ),
        )
            .animate(
              delay: Duration(seconds: 1),
              onPlay: (controller) => controller.repeat(),
            )
            .fadeIn(delay: Duration(seconds: 1)),
      ),
    );
  }
}

class ShimmerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 200,
                height: 20,
                color: Colors.white,
              ),
              SizedBox(height: 10),
              Container(
                width: 150,
                height: 20,
                color: Colors.white,
              ),
              SizedBox(height: 10),
              Container(
                width: 180,
                height: 20,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LiquidSwipeExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(color: Colors.red, child: Center(child: Text("Page 1"))),
      Container(color: Colors.green, child: Center(child: Text("Page 2"))),
      Container(color: Colors.blue, child: Center(child: Text("Page 3"))),
    ];

    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        fullTransitionValue: 600,
        waveType: WaveType.liquidReveal,
        slideIconWidget: Icon(Icons.arrow_back_ios),
        enableSideReveal: true,
      ),
    );
  }
}

class GlassEffectExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GlassmorphicContainer(
          width: 350,
          height: 200,
          borderRadius: 20,
          blur: 20,
          alignment: Alignment.center,
          border: 2,
          linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white.withOpacity(0.1),
              Colors.white.withOpacity(0.05),
            ],
          ),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white.withOpacity(0.5),
              Colors.white.withOpacity(0.1),
            ],
          ),
          child: Text(
            "Hello, Glassmorphism!",
            style: TextStyle(
                color: const Color.fromARGB(255, 129, 126, 126), fontSize: 24),
          ),
        ),
      ),
    );
  }
}
