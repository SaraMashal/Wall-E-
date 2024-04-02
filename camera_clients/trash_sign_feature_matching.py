import socket
import struct
import cv2
import numpy as np
import time
def send_message(message_name, data):
    
    client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    client_socket.connect(('192.168.137.212', 9000))

    # Send the message name
    client_socket.send(message_name.encode())

    # Add a small delay to ensure that the server receives the message name first
    time.sleep(0.5)

    # Send the actual data
    client_socket.send(str(data).encode())
    print("sent")

    client_socket.close()
        
def display(img,cmap='gray'):
    print("hello")
    fig = plt.figure(figsize=(12,10))
    ax = fig.add_subplot(111)
    ax.imshow(img,cmap='gray')
def display_matches(reeses,cereals):
        sift = cv2.SIFT_create()
        # find the keypoints and descriptors with SIFT
        kp1, des1 = sift.detectAndCompute(reeses,None)
        kp2, des2 = sift.detectAndCompute(cereals,None)

        # BFMatcher with default params
        bf = cv2.BFMatcher()
        matches = bf.knnMatch(des1,des2, k=2)

        # Apply ratio test
        good = []
        for match1,match2 in matches:
            if match1.distance < 0.75*match2.distance:
                good.append([match1])

        # cv2.drawMatchesKnn expects list of lists as matches.
        sift_matches = cv2.drawMatchesKnn(reeses,kp1,cereals,kp2,good,None,flags=2)
        cv2.imshow("frame",sift_matches)
        return len(good)
        

          
bin_sign = cv2.imread('pictures/bin.png',0)
# Set up the socket connection
client_socket = socket.socket()
client_socket.connect(('192.168.137.212', 12345))  # Replace 'raspberrypi.local' with the actual hostname or IP of your Raspberry Pi
frame_counter = 0
frame_skip = 4  # Process every 5th frame
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

        if frame_counter % frame_skip == 0:
            mathches=display_matches(bin_sign,image)
            print(mathches)
            send_message("bin",mathches)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

finally:
    client_socket.close()
    cv2.destroyAllWindows()
