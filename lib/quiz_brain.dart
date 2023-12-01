import 'dart:ffi';
import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        questionText:
            'The pointer is the unique identity of given object allowing its unambiguous identification.',
        questionAnswer: true),
    Question(
        questionText: 'Nowadays, the pointer is a physical address in RAM.',
        questionAnswer: false),
    Question(
        questionText:
            'An object is an entity of the material world that we can isolate from the environment.',
        questionAnswer: true),
    Question(
        questionText:
            'You can create many constructors and destructors for one class.',
        questionAnswer: false),
    Question(
        questionText: 'In C++ constructor return value.',
        questionAnswer: false),
    Question(
        questionText:
            'Typical task of constructor are to initialize fields with their initial values, allocate memory used by an object or obtain key data from an external source.',
        questionAnswer: true),
    Question(
        questionText:
            'A destructor is a special method invoked when destroying an object of the class containing it. A destructors consist of the name of the class to be destroyed by a tilde character.',
        questionAnswer: true),
    Question(
        questionText: 'Encapsulation is not the same as hermetization.',
        questionAnswer: false),
    Question(
        questionText:
            'Encapsulation is hiding the visibility of fields of a given class for other classes, which thus protects the data stored in these fields against unauthorized, or at least unjustified, access.',
        questionAnswer: true),
    Question(
        questionText: 'Extends is inheriting in dart.', questionAnswer: true),
    Question(
        questionText:
            'To create your own version of inherited method you have to override this method.',
        questionAnswer: true),
	Question(questionText: 'A final variable can be set only once, a const variable is a compile-time constan.', questionAnswer: true),
	Question(questionText: 'We can set another variable to a constan value.', questionAnswer: false),
	Question(questionText: 'Enumeration is the action of establishing the number of something.', questionAnswer: true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void restart() {
    _questionNumber = 0;
  }
}
