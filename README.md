```bash
const aboutMe = {
  intro: "Hello, I am Yassine Mazhare, a passionate developer focused on creating innovative solutions.",
  values: "I believe in the power of collaboration and continuous learning.",
  vision: "My goal is to build software that makes people's lives easier and more efficient.",
  hobby: "In my free time, I enjoy reading about technology and working on personal projects."
};
function displayInfo(infoObject) {
  for (const key in infoObject) {
    if (infoObject.hasOwnProperty(key)) {
      console.log(`${key}: ${infoObject[key]}`);
    }
  }
}

displayInfo(aboutMe);
```
