import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:confetti/confetti.dart';
import 'package:fancy_snackbar/fancy_snackbar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    () => GeolocatorExample(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(seconds: 1),
                  );
                },
                child: const Text(
                  'GeolocatorExample',
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
                    () => SensorsExample(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(seconds: 1),
                  );
                },
                child: const Text(
                  'SensorsExample',
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
                    () => FlutterCompassExample(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(seconds: 1),
                  );
                },
                child: const Text(
                  'FlutterCompassExample',
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
                    () => PaintedCompassExample(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(seconds: 1),
                  );
                },
                child: const Text(
                  'PaintedCompassExample',
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
                    () => SmoothPageIndicatorExample(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(seconds: 1),
                  );
                },
                child: const Text(
                  'SmoothPageIndicatorExample',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SmoothPageIndicatorExample extends StatelessWidget {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Smooth Page Indicator Example")),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                Container(
                    color: Colors.red, child: Center(child: Text("Page 1"))),
                Container(
                    color: Colors.green, child: Center(child: Text("Page 2"))),
                Container(
                    color: Colors.blue, child: Center(child: Text("Page 3"))),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            // effect: SwapEffect(
            //   dotHeight: 12,
            //   dotWidth: 12,
            //   activeDotColor: Colors.blue,
            //   dotColor: Colors.grey,
            //   spacing: 16, // Spacing between dots
            // ),
            effect: const JumpingDotEffect(
              verticalOffset: 10,
              dotHeight: 12,
              dotWidth: 12,
              activeDotColor: Colors.blue,
              dotColor: Colors.grey,
            ),
            // effect: const WormEffect(
            //   dotHeight: 12,
            //   dotWidth: 12,
            //   activeDotColor: Colors.blue,
            //   dotColor: Colors.grey,
            // ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class PaintedCompassExample extends StatefulWidget {
  @override
  _PaintedCompassExampleState createState() => _PaintedCompassExampleState();
}

class _PaintedCompassExampleState extends State<PaintedCompassExample> {
  double? heading;

  StreamSubscription<CompassEvent>? abc;

  @override
  void initState() {
    super.initState();

    // Listen to compass heading updates
    abc = FlutterCompass.events?.listen((CompassEvent event) {
      setState(() {
        heading = event.heading ?? 0;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    abc?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Painted Compass Example")),
      body: Center(
        child: heading == null
            ? Text("Compass not available", style: TextStyle(fontSize: 20))
            : CustomPaint(
                size: Size(300, 300), // Size of the compass
                painter: CompassPainter(heading!),
              ),
      ),
    );
  }
}

class CompassPainter extends CustomPainter {
  final double heading;

  CompassPainter(this.heading);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint dialPaint = Paint()
      ..color = Colors.grey.shade800
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    final Paint needlePaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final Offset center = Offset(centerX, centerY);
    final double radius = min(centerX, centerY) - 20;

    // Draw compass circle
    canvas.drawCircle(center, radius, dialPaint);

    // Draw compass ticks
    final double tickLength = 10;
    final double longTickLength = 20;
    final Paint tickPaint = Paint()
      ..color = Colors.green
      ..strokeWidth = 2;

    for (int i = 0; i < 360; i += 10) {
      final double tickAngle = i * pi / 180;
      final double x1 = centerX + radius * cos(tickAngle);
      final double y1 = centerY + radius * sin(tickAngle);

      final double x2 = centerX +
          (radius - (i % 90 == 0 ? longTickLength : tickLength)) *
              cos(tickAngle);
      final double y2 = centerY +
          (radius - (i % 90 == 0 ? longTickLength : tickLength)) *
              sin(tickAngle);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), tickPaint);
    }

    // Draw compass needle
    final double needleAngle =
        -heading * pi / 180; // Convert degrees to radians
    final double needleLength = radius - 40;

    final Offset needleEnd = Offset(
      centerX + needleLength * sin(needleAngle),
      centerY - needleLength * cos(needleAngle),
    );

    canvas.drawLine(center, needleEnd, needlePaint);

    // Draw the center of the compass
    final Paint centerPaint = Paint()..color = Colors.black;
    canvas.drawCircle(center, 8, centerPaint);
  }

  @override
  bool shouldRepaint(covariant CompassPainter oldDelegate) {
    return oldDelegate.heading != heading;
  }
}

class FlutterCompassExample extends StatefulWidget {
  @override
  _FlutterCompassExampleState createState() => _FlutterCompassExampleState();
}

class _FlutterCompassExampleState extends State<FlutterCompassExample> {
  double heading = 0;
  StreamSubscription<CompassEvent>? abc;

  @override
  void initState() {
    super.initState();

    // Listen to compass heading updates
    abc = FlutterCompass.events?.listen((CompassEvent event) {
      setState(() {
        heading = event.heading ?? 0;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    abc?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Compass Example")),
      body: Center(
        child: heading == null
            ? Text("Compass not available")
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Heading: ${heading!.toStringAsFixed(1)}°",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: [
                      Center(
                        child: const Icon(
                          Icons.navigation,
                          size: 100,
                          color: Colors.blue,
                        ),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: ((heading) * (pi / 180)),
                          child: Text(
                            '-' * 20,
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
      ),
    );
  }
}

class SensorsExample extends StatefulWidget {
  @override
  _SensorsExampleState createState() => _SensorsExampleState();
}

class _SensorsExampleState extends State<SensorsExample> {
  double x = 0.0, y = 0.0, z = 0.0;
  double x2 = 0.0, y2 = 0.0, z2 = 0.0;
  double x3 = 0.0, y3 = 0.0, z3 = 0.0;

  late final StreamSubscription<AccelerometerEvent> _accelerometerSubscription;
  late final StreamSubscription<UserAccelerometerEvent>
      _userAccelerometerSubscription;
  late final StreamSubscription<GyroscopeEvent> _gyroscopeSubscription;

  @override
  void initState() {
    super.initState();

    _accelerometerSubscription = accelerometerEventStream().listen((event) {
      setState(() {
        x = event.x;
        y = event.y;
        z = event.z;
      });
    });

    _userAccelerometerSubscription =
        userAccelerometerEventStream().listen((event) {
      setState(() {
        x2 = event.x;
        y2 = event.y;
        z2 = event.z;
      });
    });

    _gyroscopeSubscription = gyroscopeEventStream().listen((event) {
      setState(() {
        x3 = event.x;
        y3 = event.y;
        z3 = event.z;
      });
    });
  }

  @override
  void dispose() {
    // Cancel the subscriptions to free resources
    _accelerometerSubscription.cancel();
    _userAccelerometerSubscription.cancel();
    _gyroscopeSubscription.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sensors Plus Example")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Accelerometer Data:", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("X: $x", style: TextStyle(fontSize: 16)),
            Text("Y: $y", style: TextStyle(fontSize: 16)),
            Text("Z: $z", style: TextStyle(fontSize: 16)),
            Text("User Accelerometer Data:", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("X: $x2", style: TextStyle(fontSize: 16)),
            Text("Y: $y2", style: TextStyle(fontSize: 16)),
            Text("Z: $z2", style: TextStyle(fontSize: 16)),
            Text("Gyro Data:", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("X: $x3", style: TextStyle(fontSize: 16)),
            Text("Y: $y3", style: TextStyle(fontSize: 16)),
            Text("Z: $z3", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

class GeolocatorExample extends StatelessWidget {
  Future<Position> _determinePosition() async {
    LocationPermission permission;

    // Check if location services are enabled
    if (!await Geolocator.isLocationServiceEnabled()) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied.');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // Get the current position
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Geolocator Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              Position position = await _determinePosition();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                      "Current Position: Lat: ${position.latitude}, Lon: ${position.longitude}"),
                ),
              );
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Error: $e")),
              );
            }
          },
          child: Text("Get Location"),
        ),
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
