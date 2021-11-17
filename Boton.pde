class Boton{
  int relleno = 255;
  int X, Y, tamX = 20, tamY = 20;
  String texto;
  Boolean visible = true;
  
  
  //Boton invisible
  Boton(int X, int Y, int tamX, int tamY, Boolean visible){
    this.X = X;
    this.Y = Y;
    
    this.tamX = tamX;   
    this.tamY = tamY;
    this.visible = visible;
  }
  
  
  //forma mas corta
  Boton(String texto ,int X, int Y){
    this.X = X;
    this.Y = Y;
    this.texto = texto;
  }
  
  //forma corta
  Boton(String texto ,int X, int Y, int tamX){
    this.X = X;
    this.Y = Y;
    this.texto = texto;
    this.tamX = tamX;   
    
  }
  
  
  //forma estandar
  Boton(String texto ,int X, int Y, int tamX, int tamY){
    this.X = X;
    this.Y = Y;
    this.texto = texto;
    this.tamX = tamX;   
    this.tamY = tamY;
  }
  
  //para elegir el color que se guardara en relleno
  Boton(String texto ,int X, int Y, int tamX, int tamY, int relleno){
    this.X = X;
    this.Y = Y;
    this.texto = texto;
    this.tamX = tamX;   
    this.tamY = tamY;
    this.relleno = relleno;
  }
  
  public Boolean inside(){
    if(mouseX > X && mouseX < X+tamX && mouseY > Y && mouseY < Y + tamY){
      return true;
    }else{
      return false;
    }
  }
  
  public Boolean izquierdo(){
    if(mousePressed == true && mouseButton == LEFT && this.inside()){
      return true;
    }else{
      return false;
    }
  }
  
  public void mostrar(){
    if(this.visible){
    fill(relleno);
    rect(X,Y,tamX,tamY);
    stroke(20);
    fill(0);
    text(texto,X,Y+10); 
    fill(255);
    }
  }
  
}
