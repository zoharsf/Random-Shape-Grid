Palette p = new Palette();
int w = 1200;
int h = 1200;
int cells = 8;
int wDim = w/cells;
int hDim = h/cells;
ArrayList<Cell> cellArray;
int frame = 0;

void setup() {
  size(1200, 1200);
  strokeWeight(0);
  cellArray = new ArrayList();
  populateArray();
}

void draw() {
  background(0);
  for (Cell cell : cellArray) {
    cell.drawCell();
  }
  mutateCell();
  delay(200);

  //saveFile();
  frame++;
}

void saveFile() {
  if (frame<30) {
    saveFrame("output/"+nf((int)frame, 2)+".png");
  }
}

void populateArray() {
  for (int i=0; i<cells; i++) {
    for (int j=0; j<cells; j++) {
      Color mainC = p.getRandom();
      Color secondaryC = mainC;
      while (secondaryC == mainC) {
        secondaryC = p.getRandom();
      }
      int r = ((int)(random(0, 4)))*90;
      int shape = (int)random(0, 7);
      cellArray.add(new Cell(i, j, wDim, hDim, shape, mainC, secondaryC, r));
    }
  }
}

void mutateCell() {
  int loc = (int)random(0, cellArray.size());
  Color mainC = p.getRandom();
  Color secondaryC = mainC;
  while (secondaryC == mainC) {
    secondaryC = p.getRandom();
  }
  Cell oldCell = cellArray.get(loc);
  Cell newCell = new Cell (oldCell.x, oldCell.y, oldCell.w, oldCell.h, (int)random(0, 7), mainC, secondaryC, ((int)(random(0, 4)))*90);
  cellArray.set(loc, newCell);
}