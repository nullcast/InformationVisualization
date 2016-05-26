class Node {
  String name;
  public PVector position;
  public int folows;
  public int folowers;
  
  Node(String n, int folows, int folowers) {
    position = new PVector(random(100,700),random(100,700));
    name = n;
    this.folows = folows;
    this.folowers = folowers;
  }
  
  public void draw() {
    pushMatrix();
    translate(position.x, position.y);
    stroke(105, 155, 55, 2);
    strokeWeight(folowers);
    float size = folowers+folows;
    fill(218, 165, 32, 2);
    ellipse(0, 0, size, size);
    fill(70, 130, 180, 70);
    textSize(log(size)*5);
    text(name, 0, 0, 1);
    popMatrix();
  }
}