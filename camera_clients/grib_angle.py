import socket
import struct
import cv2
import numpy as np
import time
from ultralytics import YOLO
from scipy.spatial import ConvexHull
def send_message(message_name, data):
    client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    client_socket.connect(('100.67.82.57', 9000))

    # Send the message name
    client_socket.send(message_name.encode())

    # Add a small delay to ensure that the server receives the message name first
    time.sleep(0.5)

    # Send the actual data
    client_socket.send(str(data).encode())

    client_socket.close()
def get_rotation(mask_points):
    hull = ConvexHull(mask_points)

    longest_edge_index = np.argmax([np.linalg.norm(hull.points[edge[0]] - hull.points[edge[1]]) for edge in hull.simplices])
    longest_edge = hull.points[hull.simplices[longest_edge_index]]

    gradient = (longest_edge[1][1] - longest_edge[0][1]) / (longest_edge[1][0] - longest_edge[0][0])

    # Calculate the angle in radians
    angle_rad = np.arctan2(longest_edge[1][1] - longest_edge[0][1], longest_edge[1][0] - longest_edge[0][0])

    # Convert angle to degrees
    angle_deg = np.degrees(angle_rad)
    normalized_angle = angle_deg * -1

    # Define the range of the angles
    min_angle = 150
    max_angle = 900
    mid_angle = 525

    if normalized_angle > 0:
        return normalized_angle * 2.08 + min_angle
    elif normalized_angle < 0:
        return normalized_angle * 2.08 + mid_angle
    else:
        return mid_angle
# Set up the socket connection
client_socket = socket.socket()
client_socket.connect(('100.67.82.57', 12345))  # Replace 'raspberrypi.local' with the actual hostname or IP of your Raspberry Pi
try:
    while True:
        try:
            
            #ret,image=cap.read()
            
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
            
            
            
            # Receive the size of the incoming frame
           
            # Convert to grayscale
            gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

            # Apply Canny edge detection
            edges = cv2.Canny(gray, 100, 200) 

            # Find non-zero points (edge points)
            cords = np.column_stack(np.where(edges > 0)) 
            # Get the height and width of the image
            height, width, _ = image.shape
            print("height width = ",height,width)
            # Calculate the coordinates for the square
            square_size = 50  # Adjust the size as needed
            top_left_x = int((width - square_size) / 1.85)
            top_left_y =int ((height - square_size) / 1.6) 
            bottom_right_x = top_left_x + square_size
            bottom_right_y = top_left_y + square_size
            top_left_x2 = int((480))
            top_left_y2 =int ((150)) 
            bottom_right_x2 = top_left_x2 + square_size
            bottom_right_y2 = top_left_y2 + square_size
            print(bottom_right_y2,bottom_right_y)
            
            top_left_x3= int((320))
            top_left_y3=int ((120))
            bottom_right_x3 = top_left_x3+ square_size
            bottom_right_y3 = top_left_y3 + square_size
            # Draw the square on the image
            color = (0, 255, 0)  # Green color, you can change it as needed
            thickness = 2  # Adjust the thickness as needed
            # cv2.rectangle(image, (top_left_x, top_left_y), (bottom_right_x, bottom_right_y), color, thickness)
            # cv2.rectangle(image, (top_left_x2, top_left_y2), (bottom_right_x2, bottom_right_y2), color, thickness)
            # cv2.rectangle(image, (top_left_x3, top_left_y3), (bottom_right_x3, bottom_right_y3), color, thickness)

            
            # rotation = get_rotation(cords)
            # print(rotation)
            
            # #send_message("rotation",rotation)
            # # Draw edges on original image  
            # for pt in cords:
            #     cv2.circle(image, (pt[1], pt[0]), 1, (0,0,255), -1)

            #Display result   
            cv2.imshow('Edges', image)

            if cv2.waitKey(1) & 0xFF == ord('q'):
                break
        except Exception as e:
            print("error",e)
            continue

finally:
    client_socket.close()
    cv2.destroyAllWindows()
