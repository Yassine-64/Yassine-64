```javascript
const aboutMe = {

 "intro": "Hi, I'm Yassine Mazhare  a developer passionate about building intelligent systems that blend full-stack engineering with AI.",
  "learning": "I'm currently diving deep into generative AI, Retrieval-Augmented Generation (RAG), and advanced Python workflows.",
  "values": "I believe in continuous learning, clean code, and the power of combining engineering and AI to solve real-world problems.",
  "vision": "I aim to build smart applications and tools that enhance human productivity and make AI more accessible.",
  "hobby": "I love experimenting with AI models, reading up on the latest in tech, and hacking on side projects that push the boundaries of what's possible."
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
