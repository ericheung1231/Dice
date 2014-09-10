Die bob,joe,billy,blah;
void setup()
{
	size(400,400);
	background(100,100,100);
	noLoop();
	joe = new Die(160,170);
	bob = new Die(80,170);
	// billy = new Die((int)(Math.random()*400),(int)(Math.random()*400));
	// blah = new Dice(mouseX,mouseY);

}
void draw()
{
	joe.roll();
	joe.show();
	bob.roll();
	bob.show();
	// billy.roll();
	// billy.show();
	// blah.roll();
	// blah.show();
	// noStroke();
	// fill(100);
	// rect(270,100,100,300);
	textAlign(CENTER,CENTER);
	textSize(40);
	fill(255);
	text(joe.dots+bob.dots, 310,195);
	text("=",260,195);
}
void mousePressed()
{
	background(100,100,100);
	redraw();
}
class Die //models one single dice cube
{
	int dots, myX, myY;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		dots=(int)(Math.random()*6)+1;
	}
	void show()
	{
		fill(255,255,255);
		rect(myX,myY,60,60,7);
		fill(0);
		// textAlign(CENTER,CENTER);
		// textSize(20);
		// text(dots,myX+30,myY+30);
		if (dots == 1)
		{
			ellipse(myX+30,myY+30,10,10);
		}
		if (dots == 2)
		{
			ellipse(myX+20,myY+40,10,10);
			ellipse(myX+40,myY+20,10,10);
		}
		if (dots == 3)
		{
			ellipse(myX+15,myY+45,10,10);
			ellipse(myX+45,myY+15,10,10);
			ellipse(myX+30,myY+30,10,10);
		}
		if (dots == 4)
		{
			ellipse(myX+18,myY+42,10,10);
			ellipse(myX+42,myY+18,10,10);
			ellipse(myX+18,myY+18,10,10);
			ellipse(myX+42,myY+42,10,10);
		}
		if (dots == 5)
		{
			ellipse(myX+15,myY+45,10,10);
			ellipse(myX+45,myY+15,10,10);
			ellipse(myX+30,myY+30,10,10);
			ellipse(myX+45,myY+45,10,10);
			ellipse(myX+15,myY+15,10,10);

		}
		if (dots==6)
		{
			ellipse(myX+15,myY+45,10,10);
			ellipse(myX+45,myY+15,10,10);
			ellipse(myX+15,myY+30,10,10);
			ellipse(myX+45,myY+30,10,10);
			ellipse(myX+45,myY+45,10,10);
			ellipse(myX+15,myY+15,10,10);
		}
	}
}
