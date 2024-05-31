class Snake{
private PVector posicion;
private ColliderCircular collider;
  
  public Snake(PVector posicion){
  this.posicion=posicion;
  this.collider = new ColliderCircular(this.posicion,20.0);
}
  public void display(){
    noStroke();
    fill(#30E32E);
    rect(this.posicion.x,this.posicion.y,50,20);
    rect(this.posicion.x+10,this.posicion.y-20,30,20);
  }
  public void comer(Animal animal){
    boolean isCollide = this.collider.validarColicion(animal.getCollider());
    println(isCollide);
    if(isCollide){
      println("animal comido");
    }else{
    println("no ha comido");
  }
  } 
  
  public void setPosicion(PVector posicion){
  this.posicion=posicion;
this.collider.setPosCentro(this.posicion);}
}
