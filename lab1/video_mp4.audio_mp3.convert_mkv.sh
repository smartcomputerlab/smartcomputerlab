gst-launch-1.0 -v filesrc location="../samples/tom.mp4" ! qtdemux name=demux  demux.audio_0 ! queue ! decodebin ! audioconvert ! audioresample ! lamemp3enc ! matroskamux name=bar  demux.video_0 ! queue ! decodebin ! videoconvert ! progressreport ! openh264enc bitrate=1000000 ! h264parse ! bar. bar. ! filesink location="../samples/tom.mkv" 