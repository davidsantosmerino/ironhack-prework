var grid = {
  obstacles: [[2,2],[3,4]]
}

var myRover = {
  name: 'The Rover III',
  position: [0,0], 
  direction: 'N'
};

function goForward(rover) {
  var success = false;
  var posX = rover.position[0];
  var posY = rover.position[1];

  switch(rover.direction) {
    case 'N':
      if(posX < 9)
        posX++;
      else
        posX = 0;
      break;
    case 'E':
      if(posY < 9)
        posY++;
      else 
        posY = 0;
      break;
    case 'S':
      if(posX > 0 )
        posX--;
      else
        posX = 9;
      break;
    case 'W':
      if(posY > 0)
        posY--;
      else
        posY = 9;
      break;
  };

  if(!obstacleDetection (grid, [posX,posY])){
    rover.position[0] = posX;
    rover.position[1] = posY;
    success = true;  
    console.log(rover.name + " : [" + rover.position[0] + ", " + rover.position[1] + "]");
  }
  else
    console.log(rover.name + " : I've found an obstacle at [" + posX+ ", " + posY + "]");

  return success;
}

function obstacleDetection (grid, positionToCheck) {
  for(var i = 0, length = grid.obstacles.length; i < length; i++){
    if(positionToCheck[0] === grid.obstacles[i][0] && positionToCheck[1] === grid.obstacles[i][1]){
      return true;
    }
  }
}

function moveBySequence(rover, sequence){
  var sequenceArray = sequence.split('');
  for(var i=0, length = sequenceArray.length; i < length; i++){
    switch (sequenceArray[i]){
      case 'f':
        rover.direction = 'N';
      break;
      case 'b':
        rover.direction = 'S';
      break;
      case 'r':
        rover.direction = 'E';
      break;
      case 'l':
        rover.direction = 'W';
      break;
    }
    if(!goForward(rover))
      break;
  }
}
