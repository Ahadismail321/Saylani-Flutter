import 'dart:io';

void main() {
  print('Welcome to the Human IQ Test!\n');
  print('Answer the following questions with either A, B, C, or D.');

  int score = 0;

  // Question 1
  print('\n1. What is the capital of Pakistan?');
  print('A. Islamabad');
  print('B. Lahore');
  print('C. Karachi');
  print('D. None of these');
  String answer1 = stdin.readLineSync()!.toUpperCase();
  if (answer1 == 'C') {
    score++;
  }

  // Question 2
  print('\n2. How many continents are there?');
  print('A. 5');
  print('B. 6');
  print('C. 7');
  print('D. 8');
  String answer2 = stdin.readLineSync()!.toUpperCase();
  if (answer2 == 'C') {
    score++;
  }

  // Question 3
  print('\n3. What is the largest planet in our solar system?');
  print('A. Venus');
  print('B. Jupiter');
  print('C. Earth');
  print('D. Mars');
  String answer3 = stdin.readLineSync()!.toUpperCase();
  if (answer3 == 'B') {
    score++;
  }

  // Question 4
  print('\n4. What is the independence day of Pakistan?');
  print('A. 25 August 1948');
  print('B. 15 August 1947');
  print('C. 14 August 1947');
  print('D. 12 August 1949');
  String answer4 = stdin.readLineSync()!.toUpperCase();
  if (answer4 == 'C') {
    score++;
  }

  // Question 5
  print('\n5. Who is the Founder of Pakistan?');
  print('A. Allama Iqbal');
  print('B. Quaid-e-Azam');
  print('C. Fatima Ali Jinnah');
  print('D. Sir Syed Ahmed Khan');
  String answer5 = stdin.readLineSync()!.toUpperCase();
  if (answer5 == 'B') {
    score++;
  }

  // Display score and IQ range
  print('\nYour score is: $score out of 5');
  double percentage = (score / 5) * 100;
  String iqRange = getIQRange(percentage);
  print('IQ Range: $iqRange');
}

String getIQRange(double percentage) {
  if (percentage >= 90) {
    return 'Superior (IQ 120-140)';
  } else if (percentage >= 80) {
    return 'Very High (IQ 110-119)';
  } else if (percentage >= 70) {
    return 'High (IQ 90-109)';
  } else if (percentage >= 60) {
    return 'Above Average (IQ 80-89)';
  } else if (percentage >= 50) {
    return 'Average (IQ 70-79)';
  } else if (percentage >= 40) {
    return 'Below Average (IQ 60-69)';
  } else if (percentage >= 30) {
    return 'Low (IQ 50-59)';
  } else {
    return 'Very Low (IQ below 50)';
  }
}
