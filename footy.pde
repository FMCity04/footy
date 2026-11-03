Table table;

void setup() {
  size(800, 800);
  table = loadTable("footballers.csv", "header");
  noLoop();
}

void draw() {
  background(46, 125, 50);
  
  float x1 = 50;
  float y1 = 130;
  int count1 = 0;
  
  float x2 = 430;
  float y2 = 130;
  int count2 = 0;

  for (int i = 0; i < table.getRowCount(); i = i + 1) {
    TableRow row = table.getRow(i);
    int madeIt = row.getInt("made_it");

    stroke(0);
    fill(255);

    if (madeIt == 1) {
      ellipse(x1, y1, 30, 30);
      x1 = x1 + 52;
      count1 = count1 + 1;
      if (count1 == 7) {
        x1 = 50;
        y1 = y1 + 52;
        count1 = 0;
      }
    } else {
      ellipse(x2, y2, 30, 30);
      x2 = x2 + 52;
      count2 = count2 + 1;
      if (count2 == 7) {
        x2 = 430;
        y2 = y2 + 52;
        count2 = 0;
      }
    }
  }
  
  drawTitles();
}

void drawTitles() {
    fill(255);
    textSize(28);
    textAlign(CENTER, CENTER);
    text("Made it", 206, 60);
    text("Didn't make it", 586, 60);
}
