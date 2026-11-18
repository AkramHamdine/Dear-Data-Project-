// Study Habits:

// Vertical Position of Circle = Session Number
// Horizontal Position of Circle = Time of Day
// Size of Circle = Duration of Revision
// Color of Circle = Distraction Type
// Circle Outline = Location
// Number in Circle = Focus Level
// Label = Subject


class StudySession
{ 
  int sessionNumber;
  String day;
  String location;
  String subject;
  float duration;
  String distraction;
  String time_of_day;
  int focus;
  
  
  float x, y;
  float circleSize;

  StudySession(int s, String d, String l, String sub, float dur, String dis, String time, int f)
  {
    sessionNumber = s;
    day = d;
    location = l;
    subject = sub;
    duration = dur;
    distraction = dis;
    time_of_day = time;
    focus = f;
  }

  void draw()
  {
    circleSize = 18 + duration * 5;
  }
}
