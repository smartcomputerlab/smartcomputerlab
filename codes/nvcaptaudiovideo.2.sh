gst-launch-1.0 -v v4l2src device=/dev/video0 ! queue ! video/x-h264,width=1280,height=720,framerate=30/1 ! h264parse ! queue ! omxh264dec ! nveglglessink -e \
alsasrc device=hw:2 ! audio/x-raw,channels=2,rate=16000 ! audioconvert ! queue ! alsasink -e 
