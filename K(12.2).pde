import org.openkinect.processing.*;
Kinect2 Kinect2;
Void setup(){
 Size(512,424,P3D);
 Kinect2=new Kinect2(this);
 Kinect2.initDepth();
 Kinect2.initDevice();
}
Void draw(){
 background(0);
 pImage img= Kinect2.getDepthImag();
 image(img,0,0);
 int skip=20
 for( x=0; x< img.width; x+= skip){
  for( y=0; y< img.height; y+=skip){
    int indext= x+y*img.width;
    float b=brightness(img.pixels[index]);
    fill(255);
    float z=map(b,0,250,250,-250);
    pushMatrix():
    translate(x,y,z);
    rect(x,y,skip/2,skip/2);
    popMatrix();
 
   }

  }

 }

