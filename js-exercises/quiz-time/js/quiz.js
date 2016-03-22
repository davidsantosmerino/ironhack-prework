var user = {}
var responses = []

function tryAgain(){
  alert("Try again with a valid response!");
}

function question1() {
  user.name = prompt('What is your name?')
}

function question2() {
  var response = prompt("Is Messi the best history player? You have type Yes or No");
  if(response === 'Yes')
    responses.push(true);
  else if(response === 'No')
    responses.push(false);
  else {
    tryAgain();
    question2();
  }

}

function question3() {
  var response = prompt("Which one is not a JS framework or lib? Angular, React, Meteor, Vue, Ember or RoR");
  switch(response){
    case 'Angular', 'React', 'Meteor', 'Vue', 'Ember':
      responses.push(false);
    break;
    case 'RoR':
      responses.push(true);
    break;
    default:
      tryAgain();
      question3();
    break;
  }
}

function evaluate(responsesArray) {
  var correct = 0;
  var incorrect = 0;
  for (var i = 0, length = responsesArray.length; i < length; i++) {
    if(responsesArray[i])
      correct++;
    else
      incorrect++;
  }

  user.correct = correct;
  user.incorrect = incorrect;

  showResults();
}

function showResults() {
  alert(user.name + ", correct: " + user.correct + ", incorrect: " + user.incorrect);
}

function doQuiz(){
  question1();
  question2();
  question3();
  evaluate(responses);
}

doQuiz();
