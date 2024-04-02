import socket
import struct
import cv2
import numpy as np
import torch
import math
import time
def send_message(message_name, data):
    client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    client_socket.connect(('192.168.137.248', 9000))

    # Send the message name
    client_socket.send(message_name.encode())

    # Add a small delay to ensure that the server receives the message name first
    time.sleep(0.5)

    # Send the actual data
    client_socket.send(str(data).encode())

    client_socket.close()
def distance(p1,p2):
    x1,y1=p1
    x2,y2=p2
    
    return math.sqrt(((x1-x2)**2)+((y1-y2)**2))
# Model
model = torch.hub.load('ultralytics/yolov5', 'custom', path='weights2/best.pt')  # local custom model


# Set up the socket connection
client_socket = socket.socket()
client_socket.connect(('192.168.137.248', 12345))  # Replace 'raspberrypi.local' with the actual hostname or IP of your Raspberry Pi
frame_counter = 0
frame_skip = 5  # Process every 5th frame
try:
    while True:
        # Receive the size of the incoming frame
        buffer_size = client_socket.recv(struct.calcsize('<L'))

        # Unpack the size from the received data
        size = struct.unpack('<L', buffer_size)[0]

        # Receive the actual frame data
        buffer = b''
        while len(buffer) < size:
            data = client_socket.recv(size - len(buffer))
            if not data:
                break
            buffer += data

        # Convert the frame data to a NumPy array
        image_array = np.frombuffer(buffer, dtype=np.uint8)

        # Decode the image
        image = cv2.imdecode(image_array, 1)
        frame_counter += 1
        width,height,_ = image.shape
        # if frame_counter % frame_skip == 0:
        results = model(image)
        center_1 = int(width/2.3)
        center_2 = int(height / 3.7)
        cv2.circle(image, (center_2, center_1), 5, (255, 0, 0), -1)
        
        min_distance=float("inf")
        
        trash=-1
        counter=0
        # Draw bounding boxes on the image
        for pred in results.xyxy[0]:
            counter+=1
            label2=-1
            label = int(pred[5])  # The class label is at index 5
            if label==0:
                label2=label
                label="trash"
                
            elif label==1:
                label2=label
                label="obstcale"
            conf = pred[4].item()  # The confidence score is at index 4
            box = pred[0:4].cpu().numpy()  # Bounding box coordinates are at indices 0 to 3
            if conf > 0.25:  # You can adjust the confidence threshold
                
                cv2.rectangle(image, (int(box[0]), int(box[1])), (int(box[2]), int(box[3])), (0, 255, 0), 2)
                cv2.putText(image, f' {label} ({conf:.2f})', (int(box[0]), int(box[1] - 10)),
                            cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)
                
                # Calculate center coordinates
                center_x = int((box[0] + box[2]) / 2)
                center_y = int((box[1] + box[3]) / 2)
                # Draw circle at center
                cv2.circle(image, (center_x, center_y), 5, (255, 0, 0), -1)
                distance1=distance((center_x,center_y),(center_1,center_2))
                if distance1<min_distance:
                    min_distance=distance1
                    trash=label2
        if counter:
            a=5
            ##send message to the pi 
            send_message("type",trash)     
        # Display the image
        cv2.imshow('Video Feed', image)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

finally:
    client_socket.close()
    cv2.destroyAllWindows()
