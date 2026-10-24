// Study Habits:

// Size of Circle = Duration of Revision
// Color of Circle = Distraction Type
// Vertical Position of Circle = Time of Day
// Circle Outline = Location
// Number in Circle = Focus Level/////Akram


String[] study_habits;
String subject;
String time_of_day;
color colour;
float duration;
float circleSize = duration * 15;


void setup()
{
  size(1000, 800);
  
  study_habits = loadStrings("Study Habits.txt");
  
  println(study_habits);
}

void draw()
{
  background(255);

  fill(100, 150, 255);
  ellipse(200, 300, 80, 80);
  
  if (subject.equals("Maths for Computing"))
  {
    
  }
}
