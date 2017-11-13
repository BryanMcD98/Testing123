class Player
{
  float speed;
  PVector pos;
  PVector forward;
  color c;
  float theta;
  float radius;
  float rotSpeed;
  
  Player(float x, float y, float theta, float c, float radius)
  {
    pos = new PVector(x, y);
    this.theta = theta;
    this.c = c;
    this.speed = 1;
    forward = new PVector(0, -1);
    rotSpeed = 1.0f;
  }
  
  void update()
  {
    if (if checkKey('a'))
    {
      theta -= rotSpeed;
      
    }
    
    if (if checkKey('d'))
    {
      
      theta += rotSpeed;
    }
    
    if (if checkKey('w'))
    {
      pos.y -= speed;
    }
    
    
    if (if checkKey('s'))
    {
      
      pos.y += speed;
    }
  }
  
  void render()
  {
    translate(pos.x, pos.y);
    rotate(theta);
    stroke(c);
    line(pos.x - radius, pos.y + radius, pos.x, pos.y - radius);
    line(pos.x, pos.y - radius, pos.x + radius, pos.y + radius);
    line(pos.x + radius, pos.y + radius, pos.x, pos.y);
    line(pos.x, pos.y, pos.x - radius, pos.y + radius);
  }
  
}