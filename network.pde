import java.util.Map;

class Network {
  ArrayList<Path> paths;
  Table table;
  
  private void analizeTable() {
    HashMap<String, Node> nodes = new HashMap<String, Node>();
    for (TableRow row : table.rows()) {
      String left = row.getString(0);
      if(nodes.get(left) == null)
        nodes.put(left, new Node(left, 2, 1));
      else
        nodes.get(left).folows++;
      String right = row.getString(1);
      if(nodes.get(right) == null)
        nodes.put(right, new Node(right, 1, 2));
      else
        nodes.get(right).folowers++;
      int weight = row.getInt(2);
      paths.add(new Path(weight, nodes.get(left), nodes.get(right)));
    }
  }
  
  Network(Table t) {
    table = t;
    paths = new ArrayList<Path>();
    analizeTable();
  }
  
  public void draw() {
    for (Path p : paths)
      p.draw();
  }
}