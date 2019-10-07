class Board {

  void updateSelectArea() {
    PImage gu = loadImage("gu.png");
    PImage choki = loadImage("choki.png");
    PImage pa = loadImage("pa.png");
    image(gu, 0, 0, 150, 150);
    image(choki, 150, 0, 150, 150);
    image(pa, 300, 0, 150, 150);
  }

  void updateCommentArea(String comment){
    fill(#FFFFFF);
    textSize(30);
    textAlign(CENTER);
    text(comment, 225, 190);
  }

  void updateResultArea(String result) {
    fill(#000000);
    rect(0,225,450,75);
    fill(#FFFFFF);
    textSize(45);
    textAlign(CENTER);
    text(result, 225, 260);
  }
}
class Game {
  String getJankenResult(String hand) {
    String cpuHand = this.desideCpuHand();

    if (hand.equals("Gu") && cpuHand.equals("Gu") 
      || hand.equals("Choki") && cpuHand.equals("Choki") 
      || hand.equals("Pa") && cpuHand.equals("Pa")) return "Draw";
    else if (hand.equals("Gu") && cpuHand.equals("Choki")
      || hand.equals("Choki") && cpuHand.equals("Pa")
      || hand.equals("Pa") && cpuHand.equals("Gu")) return "You Win!";
    else if (hand.equals("Gu") && cpuHand.equals("Pa")
      || hand.equals("Choki") && cpuHand.equals("Gu")
      || hand.equals("Pa") && cpuHand.equals("Choki")) return "CPU Win!";

    return null;
  }

  String desideCpuHand() {
    int cpuHandNum = (int)random(3);
    if (cpuHandNum == 0) return "Gu";
    else if (cpuHandNum == 1) return "Choki";
    else return "Pa";
  }
}
