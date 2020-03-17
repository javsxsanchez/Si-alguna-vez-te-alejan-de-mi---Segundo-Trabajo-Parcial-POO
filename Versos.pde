//STRING DE DATOS


class Verso{
  Body b;
  float w;
  float h;
  String frase;
  boolean buleano;
  int cual;
  
  Verso(float x_, float y_, float w_, float h_, int c_){
    w = w_;
    h = h_;
    cual = c_;
    BodyDef bd = new BodyDef();
    Vec2 posicionInicial = new Vec2(x_, y_);
    Vec2 posicionEnMundo = mundo.coordPixelsToWorld(posicionInicial);
    bd.position.set(posicionEnMundo);
    


    bd.type = BodyType.DYNAMIC;

    
    
    b = mundo.createBody(bd);
   
    
    b.setLinearVelocity(new Vec2(0,0));
    b.setAngularVelocity(0);
    b.setUserData(this);
    b.setGravityScale(0.0);
        b.setActive(true);



    
    PolygonShape ps = new PolygonShape();
    float ancho = mundo.scalarPixelsToWorld(w_);
    float alto = mundo.scalarPixelsToWorld(h_);
    
    ps.setAsBox(ancho/2, alto/2);
    
    FixtureDef fd = new FixtureDef(); //Define las caracterísitas del objeto 
    fd.shape = ps;
    fd.friction = 1;
    fd.restitution = 1;
    fd.density = 1;
    
    b.createFixture(fd);
    if(activo <= 9){
    bd.type = BodyType.STATIC;
    }
    

    
    
    
  }
  
  
  void display(){
    Vec2 posicion = mundo.getBodyPixelCoord(b);
    float angulo = b.getAngle();
    pushMatrix();
    translate(posicion.x, posicion.y);
    rotate(-angulo);
    rectMode(CENTER);
    noFill();
    noStroke();
    imageMode(CENTER);
    image(renglon[cual], 0, 0);
    rect(0,0,w,h);
    fill(255);
    
  
    
   
    popMatrix();


    }

    
    void cambiarEstado(){
    b.setActive(false);
    }
  
  
  

}
