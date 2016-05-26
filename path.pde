class Path {
  public int size;
  private Node parent;
  private Node child;
  
  Path(int s, Node p, Node c) {
    parent = p;
    child = c;
    size = s;
  }
  
  void changeSize(int s) {
    size = s;
  }
  
  public void draw() {
    pushMatrix();
    parent.draw();
    child.draw();
    noStroke();
    fill(100, 150, 200, 85);
    translate(parent.position.x, parent.position.y);
    PVector v = new PVector(child.position.x-parent.position.x, child.position.y-parent.position.y);
    double length = sqrt(pow(v.x,2) + pow(v.y,2));
    int inv = -1;
    if(v.x < 0)
      inv = -inv;
    double cos_sita = v.y / length;
    float sita = acos((float)cos_sita);
    println(cos_sita);
    rotate(inv*sita);
    triangle(-size/2/120.0, 0, size/2/120.0, 0, 0, (float)length);
    popMatrix();
  }
}