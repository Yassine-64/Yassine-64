// IMPORTANT: This code is licensed under the MIT License.
// Please see the LICENSE.txt file for details.
// If you use or modify this code, remember to include the
// copyright notice and license information in your project.
// Thank you for respecting the open-source community!
                            // Yassine Mazhare
// *************************************************************
String[][] strs = new String[5][2];
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
  background(255);
  fill(0);

strs[0][0] = "Greetings!";
strs[0][1] = "I'm Yassine Mazhare, a future Mobile App developer.";

strs[1][0] = "On a journey of continuous learning,";
strs[1][1] = "I'm delving into new frameworks and technologies.";

strs[2][0] = "Explore my GitHub repositories, ";
strs[2][1] = "where you can discover more about my coding projects.";

strs[3][0] = "Feel free to connect with me.";
strs[3][1] = "Let's explore the possibilities of coding together.";

strs[4][0] = "Stay curious, keep coding!";
strs[4][1] = "The adventure has just begun!";

  

}

void draw() {
  background(255);

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
        delay(2500);
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
