
import 'package:flutter/cupertino.dart';

class Question{
  final String title;
  final List<Map> answers;

  Question({
      @required this.title,
      @required this.answers, });
}

class QuestionData{
  final _data=[
    Question(
      title: 'Кем хочешь стать ?',
      answers: [
        {'answers': 'Ведущим <<Орла и Орешки>> Хочу повидать мир!',},
        {'answers': 'Врачем! Спасать людей мое призвание',},
        {'answers': 'Парадистом, чтоб куражится над всеми','isCorrect': 1},
        {'answers': 'Мастером на все руки',},
      ]
    ),
    Question(
        title: 'Продолжи фразу: <<Сегодня я...>>',
        answers: [
          {'answers': '...люблю всех и вся. Пойду на подвига!',},
          {'answers': '...уже встал и то хорошо',},
          {'answers': '...пакую вещи и лечу на шабаш!', 'isCorrect': 1},
          {'answers': '...соберу большой рюкзак и в поход!',},
        ]
    ),
    Question(
        title: 'Кем хочешь стать ?',
        answers: [
          {'answers': 'Ведущим <<Орла и Орешки>> Хочу повидать мир!',},
          {'answers': 'Врачем! Спасать людей мое призвание',},
          {'answers': 'Парадистом, чтоб куражится над всеми', 'isCorrect': 1},
          {'answers': 'Мастером на все руки',},
        ]
    ),
    Question(
        title: 'Кем хочешь стать ?',
        answers: [
          {'answers': 'Ведущим <<Орла и Орешки>> Хочу повидать мир!',},
          {'answers': 'Врачем! Спасать людей мое призвание',},
          {'answers': 'Парадистом, чтоб куражится над всеми','isCorrect': 1},
          {'answers': 'Мастером на все руки',},
        ]
    ),
  ];

  List<Question> get questions => [..._data];
}