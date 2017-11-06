// calss qui nous permet de cree nos etoiles
class star{
 float x;
 float y;
 float z;

  star(){
  //donner une position random entre la -largeur et la hauteur
    x= random(-width,height);
    y= random(-width,height);
    z= random(width);
}

void update(){   
  //a chaque iteration du draw on fait changer la position de nos etoile 
  //si la postion et inferieur a 1 on renesialize la position  
  z-=3;
  if(z<1){
    x= random(-width,height);
    y= random(-width,height);
    z=width;
  }
}

void show(){
noStroke();
//on definit la taille et la position des etoiles par rapport a la varible Z
//
float sx=map(x/z,0,1,0,width);
float sy=map(y/z,0,1,0,height);
float r= map(z,0,700,20,0);
rotate(sx);
fill(sy,sx,sy);
if(sx<200 && sy<200 &&  sx>-200 && sy>-200){
ellipse(sx,sy,r,r);
stroke(sy,sx,sy,100);
//strokeWeight(r/2);
line(sx,sy,sy,sx);}
}
}