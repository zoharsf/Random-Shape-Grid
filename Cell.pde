class Cell {
  int x;
  int y;
  int w;
  int h;
  int shape;
  int rot;
  Color mainC;
  Color secondaryC;

  Cell(int x, int y, int w, int h, int shape, Color mainC, Color secondaryC, int rot) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.shape = shape;
    this.mainC = mainC;
    this.secondaryC = secondaryC;
    this.rot = rot;
  }

  void drawCell() {
    drawMain();
    drawSecondary();
  }

  void drawMain() {
    fill(mainC.c);
    rect(x*w, y*h, w, h);
  }

  void drawSecondary() {
    fill(secondaryC.c);

    switch(shape) {
    case 0:
      {
        drawQuarterCircle();
        break;
      }
    case 1:
      {
        drawHalfCircle();
        break;
      }
    case 2:
      {
        drawFullCircle();
        break;
      }
    case 3:
      {
        drawCenterTriangle();
        break;
      }
    case 4:
      {
        drawSlantedTriangle();
        break;
      }
    case 5:
      {
        drawHalfTriangle();
        break;
      }
    case 6:
      {
        drawQuarterTriangle();
        break;
      }
    default:
      //no circle
      break;
    }
  }

  void drawQuarterCircle() {
    switch(rot) {
    case 0:
      {
        arc(x*w, y*h, w, h, 0+radians(rot), HALF_PI+radians(rot));
        break;
      }
    case 90:
      {
        arc((x+1)*w, y*h, w, h, 0+radians(rot), HALF_PI+radians(rot));
        break;
      }
    case 180:
      {
        arc((x+1)*w, (y+1)*h, w, h, 0+radians(rot), HALF_PI+radians(rot));
        break;
      }
    case 270:
      {
        arc(x*w, (y+1)*h, w, h, 0+radians(rot), HALF_PI+radians(rot));
        break;
      }
    }
  }

  void drawHalfCircle() {
    switch(rot) {
    case 0:
      {
        arc(x*w+w/2, y*h, w, h, 0+radians(rot), PI+radians(rot));
        break;
      }
    case 90:
      {
        arc(x*w+w, y*h+h/2, w, h, 0+radians(rot), PI+radians(rot));
        break;
      }
    case 180:
      {
        arc(x*w+w/2, y*h+h, w, h, 0+radians(rot), PI+radians(rot));
        break;
      }
    case 270:
      {
        arc(x*w, y*h+h/2, w, h, 0+radians(rot), PI+radians(rot));
        break;
      }
    }
  }
  void drawFullCircle() {
    arc(x*w+w/2, y*h+h/2, w, h, 0, TWO_PI);
  }

  void drawCenterTriangle() {
    switch(rot) {
    case 0:
      {
        triangle(x*w+w/2, y*h, x*w+w, y*h+h, x*w, y*h+h);        
        break;
      }
    case 90:
      {
        triangle(x*w, y*h, x*w+w, y*h+h/2, x*w, y*h+h);        
        break;
      }
    case 180:
      {
        triangle(x*w, y*h, x*w+w, y*h, x*w+w/2, y*h+h);        
        break;
      }
    case 270:
      {
        triangle(x*w+w, y*h, x*w+w, y*h+h, x*w, y*h+h/2);        
        break;
      }
    }
  }

  void drawSlantedTriangle() {
    switch(rot) {
    case 0:
      {
        triangle(x*w, y*h, x*w+w, y*h+h, x*w, y*h+h);        
        break;
      }
    case 90:
      {
        triangle(x*w, y*h, x*w+w, y*h, x*w+w, y*h+h);        
        break;
      }
    case 180:
      {
        triangle(x*w+w, y*h, x*w+w, y*h+h, x*w, y*h+h);        
        break;
      }
    case 270:
      {
        triangle(x*w, y*h, x*w+w, y*h+h, x*w, y*h+h);        
        break;
      }
    }
  }
  void drawHalfTriangle() {
    switch(rot) {
    case 0:
      {
        triangle(x*w, y*h, x*w+w/2, y*h+h, x*w, y*h+h);        
        break;
      }
    case 90:
      {
        triangle(x*w, y*h, x*w+w, y*h, x*w, y*h+h/2);        
        break;
      }
    case 180:
      {
        triangle(x*w+w, y*h, x*w+w, y*h+h, x*w+w/2, y*h+h);        
        break;
      }
    case 270:
      {
        triangle(x*w+w, y*h+h, x*w, y*h+h, x*w, y*h+h/2);        
        break;
      }
    }
  }
  void drawQuarterTriangle() {
    switch(rot) {
    case 0:
      {
        triangle(x*w, y*h, x*w+w/2, y*h, x*w, y*h+h/2);        
        break;
      }
    case 90:
      {
        triangle(x*w+w/2, y*h, x*w+w, y*h, x*w+w, y*h+h/2);        
        break;
      }
    case 180:
      {
        triangle(x*w+w, y*h+h/2, x*w+w, y*h+h, x*w+w/2, y*h+h);        
        break;
      }
    case 270:
      {
        triangle(x*w, y*h+h/2, x*w+w/2, y*h+h, x*w, y*h+h);        
        break;
      }
    }
  }
}