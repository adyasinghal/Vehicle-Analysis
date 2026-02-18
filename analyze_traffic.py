import cv2
from ultralytics import YOLO

# Load the model
model = YOLO('yolov8n.pt') 

# dashcam video
video_path = "traffic_videos/vid1.mp4" 
cap = cv2.VideoCapture(video_path)

while cap.isOpened():
    success, frame = cap.read()
    if not success:
        break

    # Universal Detection
    # all 80 categories it was trained on (pedestrians, dogs, stop signs, etc.)
    results = model.predict(frame, conf=0.4)

    # Check results and display
    if len(results[0].boxes) > 0:
        # results[0].plot() automatically draws boxes and labels for EVERY detected object
        annotated_frame = results[0].plot()
        cv2.imshow("Step 1: Universal Detection", annotated_frame)
    else:
        cv2.imshow("Step 1: Universal Detection", frame)

    if cv2.waitKey(1) & 0xFF == ord("q"):
        break

cap.release()
cv2.destroyAllWindows()