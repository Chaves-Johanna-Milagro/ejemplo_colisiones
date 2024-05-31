private Snake snake;
private Animal animal;
//private ColliderCircular collider;
public void setup(){
  size(600,600);
  //collider=new ColliderCircular(new PVector(mouseX/2,mouseY/2),30.0);
    animal=new Animal(new PVector(200,200));
   snake=new Snake(new PVector(200,200));
}
public void draw(){
  background(0);
  snake.display();
  animal.display();
  snake.setPosicion(new PVector(mouseX,mouseY));
  snake.comer(animal);
}
