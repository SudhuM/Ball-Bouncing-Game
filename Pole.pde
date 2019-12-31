class pole{
 float x,y,w,h;
 float xspeed ;
  void poleCreate(){
    x = width/2;
    y = height;
    w = 85;
    h = 15;
    xspeed= 0;
  }
    void show(){
      rectMode(CENTER);
      fill(255);
      rect(x,y,w,h);
    }
   void update(){
     x +=xspeed;  
    constrain(x,w/2,width-w/2);  
 }
   void bounce(){
   if(b.xpos - b.size/2 >= p.x - p.w/2 && b.xpos + b.size/2 <= p.x + p.w/2 && b.ypos  + b.size/2 >= p.y - p.h/2){
           b.yvel *=-1; 
           Score++;
    }
   }
}