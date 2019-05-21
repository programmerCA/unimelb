import org.openkinect.processing.*;
Kinect2 Kinect2;
Void setup(){
Size(512,424);
Kinect2=new Kinect2(this);
Kinect2.initDepth();
Kinect2.initDevice();
}
Void draw(){
background(0);
pImage img= Kinect2.getDepthImag();
image(img,0,0);

}

