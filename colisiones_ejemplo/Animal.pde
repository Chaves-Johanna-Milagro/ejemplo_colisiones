class Animal {
private PVector posicion;
private ColliderCircular collider;

public Animal(){
}
public Animal(PVector posicion){
this.posicion=posicion;
this.collider = new ColliderCircular(this.posicion,20.0);
}

public void display(){
  fill(255,0,0);
  circle(this.posicion.x,this.posicion.y,20);
}


public ColliderCircular getCollider(){
return this.collider;}

public PVector getPosicion(){
return posicion;}
public  void setPosicion(PVector posicion){
this.posicion=posicion;
}
}
