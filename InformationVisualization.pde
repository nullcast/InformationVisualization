Network net;
//Path p;
void setup(){
  size(1000, 800, P2D);
  blendMode(ADD);
  net = new Network(loadTable("graph2-weight1.csv", "csv"));
  //p = new Path(200, new Node("aa", 100,100), new Node("aa", 100,100));
}

void draw(){
  background(0);
  net.draw();
  //p.draw();
}