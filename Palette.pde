class Palette {
  ArrayList<Color> colors;

  Palette(Color c) {
    if (colors == null) {
      colors = new ArrayList();
      colors.add(0, c);
    } else {
      colors.add(colors.size(), c);
    }
  }

  Palette() {
    if (colors == null) {
      colors = new ArrayList();
    }
    this.populate((int)random(0, 4));
  }

  Color getRandom() {
    int loc = (int)random(0, colors.size());
    return colors.get(loc);
  }

  void populate(int num) {
    num=3;
    switch (num) {
    case 0: 
      populateDay();
      break;
    case 1: 
      populateDusk();
      break;
    case 2: 
      populateDusk();
      break;
    default: 
      populateAll();
      break;
    }
  }

  void add(int r, int g, int b) {
    colors.add(colors.size(), new Color(r, g, b));
  }

  void populateDay() {
    this.add(253, 222, 201);
    this.add(224, 163, 152);
    this.add(151, 108, 78);
    this.add(99, 152, 146);
    this.add(235, 148, 128);
    this.add(250, 197, 141);
    this.add(212, 94, 85);
    this.add(88, 95, 136);
    this.add(253, 253, 253);
    this.add(7, 7, 7);
  }
  void populateDusk() {
    this.add(245, 203, 204);
    this.add(189, 115, 128);
    this.add(133, 73, 81);
    this.add(99, 87, 97);
    this.add(173, 98, 102);
    this.add(204, 166, 143);
    this.add(123, 53, 79);
    this.add(43, 46, 65);
    this.add(253, 253, 253);
    this.add(7, 7, 7);
  }
  void populateNight() {
    this.add(231, 226, 230);
    this.add(193, 166, 167);
    this.add(77, 57, 68);
    this.add(112, 131, 164);
    this.add(179, 165, 182);
    this.add(200, 204, 231);
    this.add(59, 57, 95);
    this.add(29, 34, 66);
    this.add(253, 253, 253);
    this.add(7, 7, 7);
  }
  void populateAll() {
    this.add(250, 223, 204);
    this.add(223, 164, 151);
    this.add(156, 104, 83);
    this.add(104, 148, 149);
    this.add(234, 151, 121);
    this.add(246, 201, 147);
    this.add(214, 92, 91);
    this.add(88, 96, 135);
    this.add(243, 202, 200);
    this.add(185, 118, 127);
    this.add(129, 77, 81);
    this.add(99, 87, 101);
    this.add(176, 97, 103);
    this.add(207, 165, 143);
    this.add(123, 53, 81);
    this.add(45, 46, 67);
    this.add(232, 225, 233);
    this.add(192, 166, 169);
    this.add(77, 57, 68);
    this.add(112, 131, 164);
    this.add(177, 163, 178);
    this.add(203, 204, 231);
    this.add(58, 58, 94);
    this.add(28, 34, 66);
  }
}