//tableau contenat les etoiles
star[] stars= new star[200];
//les points initiaux du carre qui forme le blackhole
int x1=0, y1=0,x2=700,y2=0,x3=700, y3=700,x4=0,y4=700; 
int cmp=0;
int r=137, g=0, b=135;
void setup()
{
  size (700,700);
  //background(0);
  
  for(int i=0;i<stars.length;i++){
    stars[i]= new star();}
}

int tour=0;
int colour=(int)random(255);
void draw()
{
   //dessiner un rectangle pour effacer les traces
   fill(255,20);
   rect(0, 0, width, height);
   
   
  if(tour==0){
    //dessiner le carre qui forme le blackhole
    noFill();
    strokeWeight(1);
    stroke(15,120,0,150);
    quad(x1,y1,x2,y2,x3,y3,x4,y4);
    //a chaque iteration du draw on  change la position de nos points
    x1+=5;y1=0;
    x2=700;y2+=5;
    x3-=5;y3=700;            
    x4=0;y4-=5;
    //Si les point depasse la limite on revien a nos point initiaux
   if(x1>700){tour=2;}
    }
    if(tour==2){
      //initialiser les point avec les parametres de debut
           x1=0;y1=0;
           x2=700;y2=0;
           x3=700;y3=700;
           x4=0;y4=700;
           cmp=0;
           tour=0;}
           
           //dessiner les eoiles
          translate(width/2,height/2);
          for(int i=0;i<stars.length;i++){
            
              stars[i].update();
              stars[i].show();
               }
               if (keyPressed == true && key=='s') {
    saveFrame("yourName.jpg");}
}