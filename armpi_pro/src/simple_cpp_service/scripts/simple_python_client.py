#!/usr/bin/env pytho

import rospy
from simple_cpp_service.srv import SimpleService
import sys
import cv2
import math
import rospy
import numpy as np
from threading import RLock, Timer, Thread
from std_srvs.srv import *
from std_msgs.msg import *
from chassis_control.msg import *
from sensor_msgs.msg import Image
from visual_processing.msg import Result
from visual_processing.srv import SetParam
from hiwonder_servo_msgs.msg import MultiRawIdPosDur

from armpi_pro import Misc
from armpi_pro import bus_servo_control
from kinematics import ik_transform
def cpp_service_client():

    # Wait for the service to become available
    rospy.wait_for_service('simple_service')

    try:
        # Create a proxy for the service
        cpp_service = rospy.ServiceProxy('simple_service', SimpleService)

        # Create a request
        request = SimpleService.Request()
        request.input_string = "Hello from Python"
        request.input_int = 42
        request.input_float = 3.14
        request.input_vector = [1.0, 2.0, 3.0]

        # Call the service
        response = cpp_service(request)

        # Process the response
        print("Received String:", response.output_string)
        print("Received Int:", response.output_int)
        print("Received Float:", response.output_float)
        print("Received Vector:", response.output_vector)

    except rospy.ServiceException as e:
        print("Service call failed:", str(e))

if __name__ == '__main__':


    # Initialize the ROS node
    cpp_service_client()

