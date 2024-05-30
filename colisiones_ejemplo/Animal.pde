class Animal {
private PVector posicion;
public Animal(){
}
public Animal(PVector posicion){
this.posicion=posicion;
}

public void display(){
  fill(255,0,0);
  circle(this.posicion.x,this.posicion.y,20);
}
}
