class ColliderCircular{
private PVector posCentro;
private float radio;

public ColliderCircular(PVector posCentro, float radio){
this.posCentro=posCentro;
this.radio=radio;
}
public boolean validarColicion(ColliderCircular otroCollider){
  boolean isCollide=false;
  
  float distancia = this.posCentro.dist(otroCollider.getPosCentro());
    println(distancia);
    if(distancia <(this.radio + otroCollider.getRadio())){
      isCollide = true;
    }
    return isCollide;
}
public PVector getPosCentro(){
return this.posCentro;}


public void setPosCentro(PVector posCentro){
this.posCentro=posCentro;}


public float getRadio(){
return this.radio;}
}
