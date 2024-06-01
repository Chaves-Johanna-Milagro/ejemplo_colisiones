class Snake{
//private Animal animal;
private PVector posicion;
private ColliderCircular collider;

  public Snake(PVector posicion){
  this.posicion=posicion;
  this.collider = new ColliderCircular(this.posicion,20.0);
}
  public void display(){
    noStroke();
    fill(#21E82F);
    square(this.posicion.x,this.posicion.y,20);//boca
    rect(this.posicion.x-10,this.posicion.y+20,40,25);//cara
    fill(#E82121);
    rect(this.posicion.x+8,this.posicion.y-15,5,15);//lengua
    fill(0);
    rect(this.posicion.x+5,this.posicion.y+5,3,1);//nariz
    rect(this.posicion.x+12,this.posicion.y+5,3,1);//nariz
    square(this.posicion.x-10,this.posicion.y+30,10);//ojo izquierdo
    square(this.posicion.x+20,this.posicion.y+30,10);//ojo derecho
  }
  public void comer(Animal animal){
    ArrayList<Animal> a;
    a=new ArrayList<Animal>();
    boolean isCollide = this.collider.validarColicion(animal.getCollider());
    println(isCollide);
    if(isCollide){
      println("animal comido");
      a.add(new Animal(new PVector(this.posicion.x,this.posicion.y)));
      println(a.size());
   //   a=new Animal(PVector (random(600,600),random(600,600)));
   animal=new Animal(new PVector(random(600),random(600)));
    }else{
    println("no ha comido");
    
  }
  } 
  
  public void setPosicion(PVector posicion){
  this.posicion=posicion;
this.collider.setPosCentro(this.posicion);}
}
