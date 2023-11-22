ArrayList<Integer> fibonacci = new ArrayList<Integer>();
int a =1;
int x;
int y;
void setup() {
  size(986, 610);
  fibonacci.add(0);
  fibonacci.add(1);
  background(#8BD9FF);
  smooth();
  
  frameRate(6);
  x = width/2+220;
  y = height/2+136;
  rect(x, y, 1, 1);
}

void draw() {
  //Következő szám kiszámolása
  int lastNum = fibonacci.get(fibonacci.size()-1);
  int preLastNum = fibonacci.get(fibonacci.size()-2);
  int nextNum = lastNum+preLastNum;
  if (fibonacci.size() <= 15) {
    //rotate(radians(90));
    switch(a) {
  case 0:
    x+=lastNum;
    y-=preLastNum;//jobb
    rect(x, y, nextNum, nextNum);
    arc(x, y, nextNum*2, nextNum*2, radians(0), radians(90), PIE);
    break;
  case 1:
    x-=preLastNum;
    y-=nextNum;//fel
    rect(x, y, nextNum, nextNum);
    arc(x, y+nextNum, nextNum*2, nextNum*2, radians(-90), radians(0), PIE);
    break;
  case 2:
    x-=nextNum;//balra
    rect(x, y, nextNum, nextNum);
    arc(x+nextNum, y+nextNum, nextNum*2, nextNum*2, radians(-180), radians(-90), PIE);
    break;
  case 3:
    y+=lastNum;//le
    rect(x, y, nextNum, nextNum);
    arc(x+nextNum, y, nextNum*2, nextNum*2, radians(-270), radians(-180), PIE);
    break ;
  }
  a++;
  if (a == 4) {
    a = 0;
  }
    //translate(nextNum,0);
    fibonacci.add(nextNum);
  }
  else
  {
    fill(0);
    text(fibonacci.toString(),80,80);
  }
}
