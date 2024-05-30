class Snake extends GameObject{

  
  public Snake(){
  }
  public Snake(PVector posicion){
  this.posicion=posicion;
}
  public void display(){
    noStroke();
    fill(#30E32E);
    rect(this.posicion.x,this.posicion.y,50,20);
    rect(this.posicion.x+10,this.posicion.y-20,30,20);
  }
  public void comer(Animal a){
  }
}
