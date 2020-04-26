int numColumns = 5; //<>// //<>//
int numRows = 5;
int[][] grid = new int[numColumns][numRows];

void setup() {
  size(1000, 1000);
  float cellWidth = width/numColumns;
  float cellHeight = height/numRows;

  //// draw a ellipse center of each cell
  //for (int i = 0; i < numColumns; i++) {
  //  for (int j = 0; j < numRows; j++) {
  //    ellipse(i * cellWidth + cellWidth/2, j * cellHeight + cellWidth/2, 10, 10);      
  //  }
  //}

  //subdivide each square in 9 lines
  //stroke(66, 135, 245);
  //for (int i = 0; i < numColumns; i++) {
  //  line(i * cellWidth + (cellWidth * 1/3), 0, i * cellWidth + (cellWidth * 1/3), height);
  //  line(i * cellWidth + (cellWidth * 2/3), 0, i * cellWidth + (cellWidth * 2/3), height);
  //  for (int j = 0; j < numRows; j++) {
  //    line(0, j * cellHeight + (cellHeight * 1/3), width, j * cellHeight + (cellHeight * 1/3));
  //    line(0, j * cellHeight + (cellHeight * 2/3), width, j * cellHeight + (cellHeight * 2/3));
  //  }
  //}

  ////put an ellipse at the 'triangle points'
  //for (int i = 0; i < numColumns; i++) {
  //  for (int j = 0; j < numRows; j++) {
  //    float pointOneX = i * cellWidth + (cellWidth * 1/3) + ((cellWidth * 1/3)/2);
  //    float pointOneY = j * cellHeight + (cellHeight * 1/3) - ((cellWidth * 1/3)/2);
  //    ellipse(pointOneX, pointOneY, 10, 10);
  //    float pointTwoX = i * cellWidth + ((cellWidth * 1/3)/2); 
  //    float pointTwoY = j * cellHeight + (cellHeight * 2/3) + ((cellWidth * 1/3)/2);
  //    ellipse(pointTwoX, pointTwoY, 10, 10);
  //    float pointThreeX = i * cellWidth + (cellWidth * 2/3) + ((cellWidth * 1/3)/2);
  //    float pointThreeY = j * cellHeight + (cellHeight * 2/3) + ((cellWidth * 1/3)/2);
  //    ellipse(pointThreeX, pointThreeY, 10, 10);
  //  }
  //}  

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

  //// draw random triangle 
  //for (int i = 0; i < numColumns; i++) {
  //  for (int j = 0; j < numRows; j++) {
  //    float xOffset = random(cellHeight * 1/3/2);
  //    float yOffset = random(cellWidth * 1/3/2);
  //    float pointOneX = i * cellWidth + (cellWidth * 1/3) + ((cellWidth * 1/3)/2) + xOffset;
  //    float pointOneY = j * cellHeight + (cellHeight * 1/3) - ((cellWidth * 1/3)/2) + yOffset;
  //    float xOffset2 = random(cellHeight * 1/3/2);
  //    float yOffset2 = random(cellWidth * 1/3/2);
  //    float pointTwoX = i * cellWidth + ((cellWidth * 1/3)/2) + xOffset2; 
  //    float pointTwoY = j * cellHeight + (cellHeight * 2/3) + ((cellWidth * 1/3)/2) + yOffset2;
  //    float xOffset3 = random(cellHeight * 1/3/2);
  //    float yOffset3 = random(cellWidth * 1/3/2);
  //    float pointThreeX = i * cellWidth + (cellWidth * 2/3) + ((cellWidth * 1/3)/2) + xOffset3;
  //    float pointThreeY = j * cellHeight + (cellHeight * 2/3) + ((cellWidth * 1/3)/2) + yOffset3;
  //    line(pointOneX, pointOneY, pointTwoX, pointTwoY);
  //    line(pointTwoX, pointTwoY, pointThreeX, pointThreeY);
  //    line(pointThreeX, pointThreeY, pointOneX, pointOneY);
  //  }
  //}

  // 'triangle dots' with random offsets
  //for (int i = 0; i < numColumns; i++) {
  //  for (int j = 0; j < numRows; j++) {
  //    float pointOneX = random(i * cellWidth + (cellWidth * 1/3), i * cellWidth + (cellWidth * 2/3));
  //    float pointOneY = random(j * cellHeight, j * cellHeight + (cellHeight * 1/3));
  //    ellipse(pointOneX, pointOneY, 10, 10);
  //    float pointTwoX = random(i * cellWidth, i * cellWidth + (cellWidth * 1/3)); 
  //    float pointTwoY = random(j * cellHeight + (cellHeight * 2/3), j * cellHeight + cellHeight);
  //    ellipse(pointTwoX, pointTwoY, 10, 10);
  //    float pointThreeX = random(i * cellWidth + (cellWidth * 2/3), i * cellWidth + cellWidth);
  //    float pointThreeY = random(j * cellHeight + (cellHeight * 2/3), j * cellHeight + cellHeight);
  //    ellipse(pointThreeX, pointThreeY, 10, 10);
  //  }
  //}

  //// lines from ramdom dots
  //for (int i = 0; i < numColumns; i++) {
  //  for (int j = 0; j < numRows; j++) {
  //    float lineOneAX = random(i * cellWidth + (cellWidth * 1/3), i * cellWidth + (cellWidth * 2/3));
  //    float lineOneAY = random(j * cellHeight, j * cellHeight + (cellHeight * 1/3));
  //    float lineOneBX = random(i * cellWidth, i * cellWidth + (cellWidth * 1/3)); 
  //    float lineOneBY = random(j * cellHeight + (cellHeight * 2/3), j * cellHeight + cellHeight);
  //    line(lineOneAX, lineOneAY, lineOneBX, lineOneBY);

  //    float lineTwoAX = random(i * cellWidth, i * cellWidth + (cellWidth * 1/3)); 
  //    float lineTwoAY = random(j * cellHeight + (cellHeight * 2/3), j * cellHeight + cellHeight);      
  //    float lineTwoBX = random(i * cellWidth + (cellWidth * 2/3), i * cellWidth + cellWidth);
  //    float lineTwoBY = random(j * cellHeight + (cellHeight * 2/3), j * cellHeight + cellHeight);
  //    line(lineTwoAX, lineTwoAY, lineTwoBX, lineTwoBY);

  //    float lineThreeAX = random(i * cellWidth + (cellWidth * 2/3), i * cellWidth + cellWidth);
  //    float lineThreeAY = random(j * cellHeight + (cellHeight * 2/3), j * cellHeight + cellHeight);
  //    float lineThreeBX = random(i * cellWidth + (cellWidth * 1/3), i * cellWidth + (cellWidth * 2/3));
  //    float lineThreeBY = random(j * cellHeight, j * cellHeight + (cellHeight * 1/3));
  //    line(lineThreeAX, lineThreeAY, lineThreeBX, lineThreeBY);
  //  }
  //}

  // //multiple from ramdom dots
  //for (int i = 0; i < numColumns; i++) {
  //  for (int j = 0; j < numRows; j++) {
  //    int cellSequenceNumber = j * numColumns + i + 1;
  //    int numLines = (numColumns * numRows) - (cellSequenceNumber) + 1;

  //    for(int k = 0; k < numLines; k++) {
  //      float lineOneAX = random(i * cellWidth + (cellWidth * 1/3), i * cellWidth + (cellWidth * 2/3));
  //      float lineOneAY = random(j * cellHeight, j * cellHeight + (cellHeight * 1/3));
  //      float lineOneBX = random(i * cellWidth, i * cellWidth + (cellWidth * 1/3)); 
  //      float lineOneBY = random(j * cellHeight + (cellHeight * 2/3), j * cellHeight + cellHeight);
  //      line(lineOneAX, lineOneAY, lineOneBX, lineOneBY);

  //      float lineTwoAX = random(i * cellWidth, i * cellWidth + (cellWidth * 1/3)); 
  //      float lineTwoAY = random(j * cellHeight + (cellHeight * 2/3), j * cellHeight + cellHeight);      
  //      float lineTwoBX = random(i * cellWidth + (cellWidth * 2/3), i * cellWidth + cellWidth);
  //      float lineTwoBY = random(j * cellHeight + (cellHeight * 2/3), j * cellHeight + cellHeight);
  //      line(lineTwoAX, lineTwoAY, lineTwoBX, lineTwoBY);

  //      float lineThreeAX = random(i * cellWidth + (cellWidth * 2/3), i * cellWidth + cellWidth);
  //      float lineThreeAY = random(j * cellHeight + (cellHeight * 2/3), j * cellHeight + cellHeight);
  //      float lineThreeBX = random(i * cellWidth + (cellWidth * 1/3), i * cellWidth + (cellWidth * 2/3));
  //      float lineThreeBY = random(j * cellHeight, j * cellHeight + (cellHeight * 1/3));
  //      line(lineThreeAX, lineThreeAY, lineThreeBX, lineThreeBY);  
  //    }
  //  }
  //}

  //// random offsets from triangle points
  //for (int i = 0; i < numColumns; i++) {
  //  for (int j = 0; j < numRows; j++) {
  //    float pointOneX = i * cellWidth + (cellWidth * 1/3) + ((cellWidth * 1/3)/2) + random(cellWidth * 1/3/2 * -1, cellWidth * 1/3/2);
  //    float pointOneY = j * cellHeight + (cellHeight * 1/3) - ((cellHeight * 1/3)/2) + random(cellHeight * 1/3/2 * -1, cellHeight * 1/3/2);
  //    ellipse(pointOneX, pointOneY, 10, 10);
  //    float pointTwoX = i * cellWidth + ((cellWidth * 1/3)/2) + random(cellWidth * 1/3/2 * -1, cellWidth * 1/3/2);
  //    float pointTwoY = j * cellHeight + (cellHeight * 2/3) + ((cellHeight * 1/3)/2) + random(cellHeight * 1/3/2 * -1, cellHeight * 1/3/2);
  //    ellipse(pointTwoX, pointTwoY, 10, 10);
  //    float pointThreeX = i * cellWidth + (cellWidth * 2/3) + ((cellWidth * 1/3)/2) + random(cellWidth * 1/3/2 * -1, cellWidth * 1/3/2);
  //    float pointThreeY = j * cellHeight + (cellHeight * 2/3) + ((cellHeight * 1/3)/2) + random(cellHeight * 1/3/2 * -1, cellHeight * 1/3/2);
  //    ellipse(pointThreeX, pointThreeY, 10, 10);
  //  }
  //}

  //multiple from ramdom dots with offset from point
  //for (int i = 0; i < numColumns; i++) {
  //  for (int j = 0; j < numRows; j++) {
  //    int cellSequenceNumber = j * numColumns + i + 1;
  //    int numLines = (numColumns * numRows) - (cellSequenceNumber) + 1;

  //    for(int k = 0; k < numLines; k++) {
  //      float lineOneAX = i * cellWidth + (cellWidth * 1/3) + ((cellWidth * 1/3)/2) + random(cellWidth * 1/3/2 * -1, cellWidth * 1/3/2);
  //      float lineOneAY = j * cellHeight + (cellHeight * 1/3) - ((cellHeight * 1/3)/2) + random(cellHeight * 1/3/2 * -1, cellHeight * 1/3/2);
  //      float lineOneBX = i * cellWidth + ((cellWidth * 1/3)/2) + random(cellWidth * 1/3/2 * -1, cellWidth * 1/3/2); 
  //      float lineOneBY = j * cellHeight + (cellHeight * 2/3) + ((cellHeight * 1/3)/2) + random(cellHeight * 1/3/2 * -1, cellHeight * 1/3/2);
  //      line(lineOneAX, lineOneAY, lineOneBX, lineOneBY);

  //      float lineTwoAX = i * cellWidth + ((cellWidth * 1/3)/2) + random(cellWidth * 1/3/2 * -1, cellWidth * 1/3/2); 
  //      float lineTwoAY = j * cellHeight + (cellHeight * 2/3) + ((cellHeight * 1/3)/2) + random(cellHeight * 1/3/2 * -1, cellHeight * 1/3/2);      
  //      float lineTwoBX = i * cellWidth + (cellWidth * 2/3) + ((cellWidth * 1/3)/2) + random(cellWidth * 1/3/2 * -1, cellWidth * 1/3/2);
  //      float lineTwoBY = j * cellHeight + (cellHeight * 2/3) + ((cellHeight * 1/3)/2) + random(cellHeight * 1/3/2 * -1, cellHeight * 1/3/2);
  //      line(lineTwoAX, lineTwoAY, lineTwoBX, lineTwoBY);

  //      float lineThreeAX = i * cellWidth + (cellWidth * 2/3) + ((cellWidth * 1/3)/2) + random(cellWidth * 1/3/2 * -1, cellWidth * 1/3/2);
  //      float lineThreeAY = j * cellHeight + (cellHeight * 2/3) + ((cellHeight * 1/3)/2) + random(cellHeight * 1/3/2 * -1, cellHeight * 1/3/2);
  //      float lineThreeBX = i * cellWidth + (cellWidth * 1/3) + ((cellWidth * 1/3)/2) + random(cellWidth * 1/3/2 * -1, cellWidth * 1/3/2);
  //      float lineThreeBY = j * cellHeight + (cellHeight * 1/3) - ((cellHeight * 1/3)/2) + random(cellHeight * 1/3/2 * -1, cellHeight * 1/3/2);
  //      line(lineThreeAX, lineThreeAY, lineThreeBX, lineThreeBY);  
  //    }
  //  }
  //}

  //multiple from ramdom dots with offset from point with narrowing window
  for (int i = 0; i < numColumns; i++) {
    for (int j = 0; j < numRows; j++) {
      int cellSequenceNumber = j * numColumns + i + 1;
      int numLines = (numColumns * numRows) - (cellSequenceNumber) + 1;
      float offsetWeight = float(numLines)/float(numColumns * numRows);

      for (int k = 0; k < numLines; k++) {
        float lineOneAX = i * cellWidth + (cellWidth * 1/3) + ((cellWidth * 1/3)/2) + random(cellWidth * 1/3/2 * -1, cellWidth * 1/3/2) * offsetWeight;
        float lineOneAY = j * cellHeight + (cellHeight * 1/3) - ((cellHeight * 1/3)/2) + random(cellHeight * 1/3/2 * -1, cellHeight * 1/3/2) * offsetWeight;
        float lineOneBX = i * cellWidth + ((cellWidth * 1/3)/2) + random(cellWidth * 1/3/2 * -1, cellWidth * 1/3/2) * offsetWeight; 
        float lineOneBY = j * cellHeight + (cellHeight * 2/3) + ((cellHeight * 1/3)/2) + random(cellHeight * 1/3/2 * -1, cellHeight * 1/3/2) * offsetWeight;
        line(lineOneAX, lineOneAY, lineOneBX, lineOneBY);

        float lineTwoAX = i * cellWidth + ((cellWidth * 1/3)/2) + random(cellWidth * 1/3/2 * -1, cellWidth * 1/3/2) * offsetWeight; 
        float lineTwoAY = j * cellHeight + (cellHeight * 2/3) + ((cellHeight * 1/3)/2) + random(cellHeight * 1/3/2 * -1, cellHeight * 1/3/2) * offsetWeight;      
        float lineTwoBX = i * cellWidth + (cellWidth * 2/3) + ((cellWidth * 1/3)/2) + random(cellWidth * 1/3/2 * -1, cellWidth * 1/3/2) * offsetWeight;
        float lineTwoBY = j * cellHeight + (cellHeight * 2/3) + ((cellHeight * 1/3)/2) + random(cellHeight * 1/3/2 * -1, cellHeight * 1/3/2) * offsetWeight;
        line(lineTwoAX, lineTwoAY, lineTwoBX, lineTwoBY);

        float lineThreeAX = i * cellWidth + (cellWidth * 2/3) + ((cellWidth * 1/3)/2) + random(cellWidth * 1/3/2 * -1, cellWidth * 1/3/2) * offsetWeight;
        float lineThreeAY = j * cellHeight + (cellHeight * 2/3) + ((cellHeight * 1/3)/2) + random(cellHeight * 1/3/2 * -1, cellHeight * 1/3/2) * offsetWeight;
        float lineThreeBX = i * cellWidth + (cellWidth * 1/3) + ((cellWidth * 1/3)/2) + random(cellWidth * 1/3/2 * -1, cellWidth * 1/3/2) * offsetWeight;
        float lineThreeBY = j * cellHeight + (cellHeight * 1/3) - ((cellHeight * 1/3)/2) + random(cellHeight * 1/3/2 * -1, cellHeight * 1/3/2) * offsetWeight;
        line(lineThreeAX, lineThreeAY, lineThreeBX, lineThreeBY);
      }
    }
  }

  // visiluase cell coordinates
  //strokeWeight(2);
  //stroke(0);
  //fill(0);
  //for (int i = 0; i < numColumns; i++) {
  //  line((i + 1) * cellWidth, 0, (i + 1) * cellWidth, height);
  //  for (int j = 0; j < numRows; j++) {
  //    line(0, (j + 1) * cellHeight, width, (j + 1) * cellHeight);
  //    text((i + 1) + ":" + (j + 1), i * cellWidth, j * cellHeight + 10);
  //    int cellSequenceNumber = j * numColumns + i + 1;
  //    int numLines = (numColumns * numRows) - (cellSequenceNumber) + 1;
  //    text("Sequence: " + cellSequenceNumber, i * cellWidth, j * cellHeight + 20);
  //    text("#lines:" + numLines, i * cellWidth, j * cellHeight + 30);
  //    //int cellSequenceNumber = j * numColumns + i + 1;
  //    float offsetWeight = float(numLines)/float(numColumns * numRows);
  //    text("Offset weight:" + offsetWeight, i * cellWidth, j * cellHeight + 40);
  //  }
  //}

  noLoop();
}
