String[] study_habits;
StudySession[] sessions = new StudySession[100];

int sessionCount = 0;

void setup()
{
  size(1100, 725);

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
    sessions[sessionCount].x = timePosition(time);

    // Session Number
    sessions[sessionCount].y = 120 + (number-1) * 5.1;
    sessionCount = sessionCount + 1;
  }

  println("Total Sessions Loaded: ", sessionCount);
}



void draw()
{
  background(240, 240, 240);

  // Main Title

  fill(0);
  textAlign(CENTER);
  textSize(30);

  text("INSIDE MY STUDY HABITS", width/2, 40);

  fill(100);
  textSize(15);

  text("100 STUDY SESSIONS   |   EXPLORING MY STUDY HABITS", width/2, 70);

  // Colums

  noStroke();

  fill(245, 235, 220);
  rect(100, 95, 300, 550);

  fill(235, 240, 245);
  rect(400, 95, 300, 550);

  fill(240, 232, 245);
  rect(700, 95, 300, 550);

  // Time of Day Labels

  fill(0);
  textSize(15);

  text("MORNING", 250, 110);
  text("AFTERNOON", 550, 110);
  text("EVENING", 850, 110);

  // Session Number Labels

  textAlign(RIGHT);
  textSize(10);
  fill(0);

  for (int i = 0; i < sessionCount; i++)
  {
    if ((i + 1) % 10 == 0 || i == 0)
    {
      text("SESSION: " + sessions[i].sessionNumber, 80, sessions[i].y + 15);
    }
  }

  // Horizontal Lines every 10 Sessions
  stroke(100);
  strokeWeight(1);

  for (int i = 0; i < 10; i++)
  {
    float guideY = 120 + i * 52;

    line(100, guideY, 1000, guideY);
  }

  // Display all the objects in the array

  // Display all the information when hovering over a circle


  // Display the Key
  drawKey();
}

// Time of Day Position

float timePosition(String time)
{
  if (time.equals("MORNING"))
  {
    return 250;
  } else if (time.equals("AFTERNOON"))
  {
    return 550;
  } else if (time.equals("EVENING"))
  {
    return 850;
  } else if (time.equals("MORNING AND AFTERNOON"))
  {
    return 400;
  } else if (time.equals("MORNING AND EVENING"))
  {
    return 500;
  } else if (time.equals("AFTERNOON AND EVENING"))
  {
    return 700;
  } else
  {
    return 550;
  }
}


// Key(Legend)

void drawKey()
{
  fill(0);
  textAlign(LEFT);
  textSize(12);

  text("HOW TO UNDERSTAND THE DATA: ", 30, 675);

  textSize(10);
  fill(80);

  text("Circle size = Duration of Revision", 30, 690);
  text("Circle number = Focus level / 5", 30, 705);
  text("Fill colour = Distraction Type", 200, 690);
  text("Outline colour = Study Location", 200, 705);
  text("Vertical = Session Number", 370, 690);
  text("Horizontal = Time of Day", 370, 705);
}
