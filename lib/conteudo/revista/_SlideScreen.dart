import 'package:flutter/material.dart';
import 'slides.dart';

class SlideScreen extends StatefulWidget {
  @override
  _SlideScreenState createState() => _SlideScreenState();
}

class _SlideScreenState extends State<SlideScreen> {
  int _currentIndex = 0;

  final List<Widget> slides = [
    Slide1(),
    Slide2(),
    Slide3(),
    Slide4(),
    Slide5(),
    Slide6(),
    Slide7(),
    Slide8(),
    Slide9(),
    Slide10(),
    Slide11(),
    Slide12(),
    Slide13(),
    Slide14(),
    Slide15(),
    Slide16(),
    SlideRef()
  ];

  bool get isEmpty => _currentIndex == 0;
  bool get isFull => _currentIndex == slides.length - 1;

  void _nextSlide() {
    if (!isFull) {
      setState(() {
        _currentIndex++;
      });
    }
  }

  void _previousSlide() {
    if (!isEmpty) {
      setState(() {
        _currentIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: slides[_currentIndex],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: isEmpty ? null : _previousSlide,
                  child: Text('<<'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (states) {
                        return isEmpty ? null : Colors.blue;
                      },
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    isFull ? Navigator.pop(context) : null;
                  },
                  child: Text(isFull
                      ? 'Voltar'
                      : '${_currentIndex + 1}/${slides.length}'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (states) {
                        return isFull ? Colors.blue : null;
                      },
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: isFull ? null : _nextSlide,
                  child: Text('>>'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (states) {
                        return isFull ? null : Colors.blue;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
