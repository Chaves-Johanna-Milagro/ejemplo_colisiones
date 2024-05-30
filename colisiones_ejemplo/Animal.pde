class Animal {
private PVector posicion;
private ColliderCircular collider;

public Animal(){
}
public Animal(PVector posicion){
this.posicion=posicion;
this.collider = new ColliderCircular(new PVector(200,200),20.0);
}

public void display(){
  fill(255,0,0);
  circle(this.posicion.x,this.posicion.y,20);
}




public PVector getPosicion(){
return posicion;
}
public  void setPosicion(PVector posicion){
this.posicion=posicion;
}
}
