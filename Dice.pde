void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
    int [] dieTotals = {0,0,0,0,0,0};
    fill(255);
    rect(0,400,500,100);
    total = 0;
    for(int i = 0; i<=500;i+=20){
      for(int j = 0; j<400;j+=20){
         Die dice2 = new Die(i,j);
         dice2.roll();
         dice2.show();
         dieTotals[dice2.pips - 1] += 1;
      }
    }
    textSize(15);
    strokeWeight(3);
    line(300,400,300,500);
    fill(22,27,219);
    text("1: " + dieTotals[0],263,412);
    rect(300,400,dieTotals[0],10);
    fill(22,122,219);
    text("2: " + dieTotals[1],263,423);
    rect(300,415,dieTotals[1],10);
    fill(0,255,142);
    text("3: " + dieTotals[2],263,436);
    rect(300,430,dieTotals[2],10);
    fill(185,185,34);
    text("4: " +  dieTotals[3],263,452);
    rect(300,445,dieTotals[3],10);
    fill(255,183,0);
    text("5: " + dieTotals[4],263,468);
    rect(300,460,dieTotals[4],10);
    fill(255,0,153);
    text("6: " + dieTotals[5],263,484);
    rect(300,475,dieTotals[5],10);
    textSize(40);
    fill(0);
    text("Total: " + total,7.5,465);
    strokeWeight(1);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
  {
      //member variable declarations here
      int myX = 0;
      int myY = 0;
      int pips = 0;
      Die(int x, int y) //constructor
      {
        this.myX = x;
        this.myY = y;
        this.pips = 0;
      }
      void roll()
      {
          pips = (int)(Math.random()*6)+1;
      }
      void show()
      {
        total = (total + pips);
        fill(255);
        rect(myX,myY,20,20,5);
        fill(0);
        if(pips == 1){
          ellipse(myX+10,myY+10,3,3);
        }
        else if(pips == 2){
          ellipse(myX+13,myY+7,3,3);   
          ellipse(myX+7,myY+13,3,3);
        }
        else if(pips == 3){
          ellipse(myX+15,myY+5,3,3);         
          ellipse(myX+10,myY+10,3,3); 
        }
        else if(pips == 4){
          ellipse(myX+14,myY+5,3,3);
          ellipse(myX+6,myY+5,3,3); 
          ellipse(myX+6,myY+15,3,3); 
          ellipse(myX+14,myY+15,3,3);
        }
        else if(pips == 5){
          ellipse(myX+14,myY+5,3,3);
          ellipse(myX+6,myY+5,3,3); 
          ellipse(myX+6,myY+15,3,3); 
          ellipse(myX+14,myY+15,3,3); 
          ellipse(myX+10,myY+10,3,3);
        }
        else if(pips == 6){
          ellipse(myX+14,myY+5,3,3);
          ellipse(myX+6,myY+5,3,3); 
          ellipse(myX+6,myY+15,3,3); 
          ellipse(myX+14,myY+15,3,3);
          ellipse(myX+14,myY+10,3,3); 
          ellipse(myX+6,myY+10,3,3); 
        }
      }
  }
