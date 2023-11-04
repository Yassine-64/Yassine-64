String[][] strs = new String[7][2];
PFont font;
int i = 0;
boolean delete = false;
int s = 0;
int offset = 50;
int mainFontSize = 60;
int secondaryFontSize = 40;

void setup() {
  size(1366, 768);
  font = createFont("HelveticaNeue-48.vlw", 48);
  textFont(font);
  frameRate(30);
  textAlign(CENTER);
  textSize(40);
  background(0); // Black background
  fill(255); // White text

  strs[0][0] = "Hello!";
  strs[0][1] = "I'm Yassine, a future Full Stack Developer.";

  strs[1][0] = "Passionate about coding and problem-solving.";
  strs[1][1] = "Learning new languages and exploring code.";

  strs[2][0] = "Let's create something amazing together.";
  strs[2][1] = "Join me on my coding journey.";

  strs[3][0] = "Here to connect, collaborate, and code.";
  strs[3][1] = "Reach out at yassinemazhare@gmail.com.";

  strs[4][0] = "Stay curious, keep coding!";
  strs[4][1] = "The adventure is just beginning.";

  strs[5][0] = "Crafting solutions, one line of code at a time.";
  strs[5][1] = "Explore my GitHub repositories.";

  strs[6][0] = "Innovation, creativity, and endless possibilities.";
  strs[6][1] = "Turning ideas into reality.";
}

void draw() {
  background(0);

  if (s < strs.length) {
    if ((strs[s][0].length() >= i || strs[s][1].length() >= i) && !delete) {
      if (strs[s][0].length() >= i) {
        textSize(mainFontSize);
        text(strs[s][0].substring(0, i), width/2, height/2 - offset);
      } else {
        textSize(mainFontSize);
        text(strs[s][0], width/2, height/2 - offset);
      }
      if (strs[s][1].length() >= i) {
        textSize(secondaryFontSize);
        text(strs[s][1].substring(0, i), width/2, height/2 + offset);
      } else {
        textSize(secondaryFontSize);
        text(strs[s][1], width/2, height/2 + offset);
      }
      i++;
    } else {
      if (!delete) {
        delay(1500);
      }
      delete = true;
    }

    if (delete) {
      if (i > 0) {
        if (i < strs[s][0].length()) {
          textSize(mainFontSize);
          text(strs[s][0].substring(0, i - 1), width/2, height/2 - offset);
        } else {
          textSize(mainFontSize);
          text(strs[s][0], width/2, height/2 - offset);
        }
        if (i < strs[s][1].length()) {
          textSize(secondaryFontSize);
          text(strs[s][1].substring(0, i - 1), width/2, height/2 + offset);
        } else {
          textSize(secondaryFontSize);
          text(strs[s][1], width/2, height/2 + offset);
        }
        i--;
      } else {
        delete = false;
        s++;
      }
    }
  }
}
