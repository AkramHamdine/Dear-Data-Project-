String[] study_habits;
StudySession[] sessions = new StudySession[100];

int sessionCount = 0;

void setup()
{
  size(1100, 1400);

  study_habits = loadStrings("Study Habits.txt");

  for (int i = 4; i < study_habits.length; i++)
  {
    String[] data = split(study_habits[i], ',');

    int number = int(trim(data[0]));
    String day = trim(data[1]);
    String location = trim(data[2]);
    String subject = trim(data[3]);
    float duration = float(trim(data[4]));
    String distraction = trim(data[5]);
    String time = trim(data[6]);
    int focus = int(trim(data[7]));

    sessions[sessionCount] = new StudySession(number, day, location, subject,
      duration, distraction, time, focus);

    // Time of Day

    // Session Number
  }
}

void draw()
{
  background(240, 240, 240);

  // Main Title

  fill(40, 45, 60);
  textAlign(CENTER);
  textSize(30);

  text("INSIDE MY STUDY HABITS", width/2, 40);

  fill(120);
  textSize(15);

  text("100 STUDY SESSIONS   |   EXPLORING MY STUDY HABITS", width/2, 70);

  // Background Colums

  noStroke();

  fill(245, 235, 220);
  rect(100, 95, 300, 1235);

  fill(235, 240, 245);
  rect(400, 95, 300, 1235);

  fill(240, 232, 245);
  rect(700, 95, 300, 1235);
  
  // Time of Day Labels
  
  fill(55);
  textSize(15);
  
  text("MORNING", 250, 105);
  text("AFTERNOON", 550, 105);
  text("EVENING", 850, 105);
  
  // Session Number Labels
  
  textAlign(RIGHT);
  textSize(20);
  fill(120);
  
  for (int i = 0; i < sessionCount; i++)
  {
    if ((i + 1) % 10 == 0 || i == 0)
    {
      text("SESSION: " + sessions[i].sessionNumber, 88, sessions[i].y + 3);
    }
  }
}
