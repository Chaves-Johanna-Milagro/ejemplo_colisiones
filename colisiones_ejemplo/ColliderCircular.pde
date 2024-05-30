class ColliderCircular{
private PVector posCentro;
private float radio;

public ColliderCircular(PVector posCentro, float radio){
this.posCentro=posCentro;
this.radio=radio;
}
public void validarColicion(ColliderCircular otroCollider){
  boolean isCollider=false;
  
  float distancia = this.posCentro.dist(otroCollider.getPosCentro());
    println(distancia);
    if(distancia <(this.radio + otroCollider.getRadio())){
      isCollider = true;
    }
    
}


public setPosCentro(PVector posCentro){
this.posCentro=posCentro;}

public PVector getPosCentro(){
return posCentro;}

public float getRadio(){
return posCentro;}

public setRadio(float radio){
this.radio=radio;}
}
}
