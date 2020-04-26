float margin = 20; //<>// //<>//
int numColumns = 8;
int numRows = 8;
int[][] grid = new int[numColumns][numRows];

void setup() {
  size(1200, 1200);
  background(255);
  stroke(0);
  float cellWidth = width/numColumns - (margin * 2 / numColumns);
  float cellHeight = height/numRows - (margin * 2 / numRows);
  
  translate(margin, margin);

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
  save("out.png");
  noLoop();
}
