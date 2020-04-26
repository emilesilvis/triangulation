int numColumns = 4;
int numRows = 4;
int[][] grid = new int[numColumns][numRows];

void setup() {
  size(500, 500);
  float cellWidth = width/numColumns;
  float cellHeight = height/numRows;

  //// draw a ellipse center of each cell
  //for (int i = 0; i < numColumns; i++) {
  //  for (int j = 0; j < numRows; j++) {
  //    ellipse(i * cellWidth + cellWidth/2, j * cellHeight + cellWidth/2, 10, 10);      
  //  }
  //}

  //subdivide each square in 9 lines
  stroke(66, 135, 245);
  for (int i = 0; i < numColumns; i++) {
    line(i * cellWidth + (cellWidth * 1/3), 0, i * cellWidth + (cellWidth * 1/3), height);
    line(i * cellWidth + (cellWidth * 2/3), 0, i * cellWidth + (cellWidth * 2/3), height);
    for (int j = 0; j < numRows; j++) {
      line(0, j * cellHeight + (cellHeight * 1/3), width, j * cellHeight + (cellHeight * 1/3));
      line(0, j * cellHeight + (cellHeight * 2/3), width, j * cellHeight + (cellHeight * 2/3));
    }
  }

  //put an ellipse at the 'triangle points'
  for (int i = 0; i < numColumns; i++) {
    for (int j = 0; j < numRows; j++) {
      float pointOneX = i * cellWidth + (cellWidth * 1/3) + ((cellWidth * 1/3)/2);
      float pointOneY = j * cellHeight + (cellHeight * 1/3) - ((cellWidth * 1/3)/2);
      ellipse(pointOneX, pointOneY, 10, 10);
      float pointTwoX = i * cellWidth + ((cellWidth * 1/3)/2); 
      float pointTwoY = j * cellHeight + (cellHeight * 2/3) + ((cellWidth * 1/3)/2);
      ellipse(pointTwoX, pointTwoY, 10, 10);
      float pointThreeX = i * cellWidth + (cellWidth * 2/3) + ((cellWidth * 1/3)/2);
      float pointThreeY = j * cellHeight + (cellHeight * 2/3) + ((cellWidth * 1/3)/2);
      ellipse(pointThreeX, pointThreeY, 10, 10);
    }
  }  

  //// draw lines between points 
  //  for (int i = 0; i < numColumns; i++) {
  //  for (int j = 0; j < numRows; j++) {
  //    float pointOneX = i * cellWidth + (cellWidth * 1/3) + ((cellWidth * 1/3)/2);
  //    float pointOneY = j * cellHeight + (cellHeight * 1/3) - ((cellWidth * 1/3)/2);
  //    float pointTwoX = i * cellWidth + ((cellWidth * 1/3)/2); 
  //    float pointTwoY = j * cellHeight + (cellHeight * 2/3) + ((cellWidth * 1/3)/2);
  //    float pointThreeX = i * cellWidth + (cellWidth * 2/3) + ((cellWidth * 1/3)/2);
  //    float pointThreeY = j * cellHeight + (cellHeight * 2/3) + ((cellWidth * 1/3)/2);
  //    line(pointOneX, pointOneY, pointTwoX, pointTwoY);
  //    line(pointTwoX, pointTwoY, pointThreeX, pointThreeY);
  //    line(pointThreeX, pointThreeY, pointOneX, pointOneY);
  //  }
  //}

  // draw RANDOM lines between points 
  for (int i = 0; i < numColumns; i++) {
    for (int j = 0; j < numRows; j++) {
      float xOffset = random(cellHeight * 1/3/2);
      float yOffset = random(cellWidth * 1/3/2);
      float pointOneX = i * cellWidth + (cellWidth * 1/3) + ((cellWidth * 1/3)/2) + xOffset;
      float pointOneY = j * cellHeight + (cellHeight * 1/3) - ((cellWidth * 1/3)/2) + yOffset;
      float xOffset2 = random(cellHeight * 1/3/2);
      float yOffset2 = random(cellWidth * 1/3/2);
      float pointTwoX = i * cellWidth + ((cellWidth * 1/3)/2) + xOffset2; 
      float pointTwoY = j * cellHeight + (cellHeight * 2/3) + ((cellWidth * 1/3)/2) + yOffset2;
      float xOffset3 = random(cellHeight * 1/3/2);
      float yOffset3 = random(cellWidth * 1/3/2);
      float pointThreeX = i * cellWidth + (cellWidth * 2/3) + ((cellWidth * 1/3)/2) + xOffset3;
      float pointThreeY = j * cellHeight + (cellHeight * 2/3) + ((cellWidth * 1/3)/2) + yOffset3;
      line(pointOneX, pointOneY, pointTwoX, pointTwoY);
      line(pointTwoX, pointTwoY, pointThreeX, pointThreeY);
      line(pointThreeX, pointThreeY, pointOneX, pointOneY);
    }
  }

  // visiluase cell coordinates
  strokeWeight(2);
  stroke(0);
  fill(0);
  for (int i = 0; i < numColumns; i++) {
    line((i + 1) * cellWidth, 0, (i + 1) * cellWidth, height);
    for (int j = 0; j < numRows; j++) {
      line(0, (j + 1) * cellHeight, width, (j + 1) * cellHeight);
      text((i + 1) + ":" + (j + 1), i * cellWidth, j * cellHeight + 10);
    }
  }

  noLoop();
}
