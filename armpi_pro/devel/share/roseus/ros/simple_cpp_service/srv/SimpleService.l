;; Auto-generated. Do not edit!


(when (boundp 'simple_cpp_service::SimpleService)
  (if (not (find-package "SIMPLE_CPP_SERVICE"))
    (make-package "SIMPLE_CPP_SERVICE"))
  (shadow 'SimpleService (find-package "SIMPLE_CPP_SERVICE")))
(unless (find-package "SIMPLE_CPP_SERVICE::SIMPLESERVICE")
  (make-package "SIMPLE_CPP_SERVICE::SIMPLESERVICE"))
(unless (find-package "SIMPLE_CPP_SERVICE::SIMPLESERVICEREQUEST")
  (make-package "SIMPLE_CPP_SERVICE::SIMPLESERVICEREQUEST"))
(unless (find-package "SIMPLE_CPP_SERVICE::SIMPLESERVICERESPONSE")
  (make-package "SIMPLE_CPP_SERVICE::SIMPLESERVICERESPONSE"))

(in-package "ROS")





(defclass simple_cpp_service::SimpleServiceRequest
  :super ros::object
  :slots (_current_robot_angle _angle _clock _trash _distance ))

(defmethod simple_cpp_service::SimpleServiceRequest
  (:init
   (&key
    ((:current_robot_angle __current_robot_angle) 0.0)
    ((:angle __angle) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:clock __clock) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:trash __trash) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:distance __distance) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _current_robot_angle (float __current_robot_angle))
   (setq _angle __angle)
   (setq _clock __clock)
   (setq _trash __trash)
   (setq _distance __distance)
   self)
  (:current_robot_angle
   (&optional __current_robot_angle)
   (if __current_robot_angle (setq _current_robot_angle __current_robot_angle)) _current_robot_angle)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:clock
   (&optional __clock)
   (if __clock (setq _clock __clock)) _clock)
  (:trash
   (&optional __trash)
   (if __trash (setq _trash __trash)) _trash)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float64 _current_robot_angle
    8
    ;; float64[] _angle
    (* 8    (length _angle)) 4
    ;; float64[] _clock
    (* 8    (length _clock)) 4
    ;; float64[] _trash
    (* 8    (length _trash)) 4
    ;; float64[] _distance
    (* 8    (length _distance)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _current_robot_angle
       (sys::poke _current_robot_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _angle
     (write-long (length _angle) s)
     (dotimes (i (length _angle))
       (sys::poke (elt _angle i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _clock
     (write-long (length _clock) s)
     (dotimes (i (length _clock))
       (sys::poke (elt _clock i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _trash
     (write-long (length _trash) s)
     (dotimes (i (length _trash))
       (sys::poke (elt _trash i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _distance
     (write-long (length _distance) s)
     (dotimes (i (length _distance))
       (sys::poke (elt _distance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _current_robot_angle
     (setq _current_robot_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _angle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angle (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angle i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _clock
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _clock (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _clock i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _trash
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trash (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _trash i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _distance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _distance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass simple_cpp_service::SimpleServiceResponse
  :super ros::object
  :slots (_success _message _output ))

(defmethod simple_cpp_service::SimpleServiceResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:output __output) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _output __output)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; float64[] _output
    (* 8    (length _output)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; float64[] _output
     (write-long (length _output) s)
     (dotimes (i (length _output))
       (sys::poke (elt _output i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _output
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _output (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _output i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass simple_cpp_service::SimpleService
  :super ros::object
  :slots ())

(setf (get simple_cpp_service::SimpleService :md5sum-) "b403fad01eab98d2beac7b71c84eadf7")
(setf (get simple_cpp_service::SimpleService :datatype-) "simple_cpp_service/SimpleService")
(setf (get simple_cpp_service::SimpleService :request) simple_cpp_service::SimpleServiceRequest)
(setf (get simple_cpp_service::SimpleService :response) simple_cpp_service::SimpleServiceResponse)

(defmethod simple_cpp_service::SimpleServiceRequest
  (:response () (instance simple_cpp_service::SimpleServiceResponse :init)))

(setf (get simple_cpp_service::SimpleServiceRequest :md5sum-) "b403fad01eab98d2beac7b71c84eadf7")
(setf (get simple_cpp_service::SimpleServiceRequest :datatype-) "simple_cpp_service/SimpleServiceRequest")
(setf (get simple_cpp_service::SimpleServiceRequest :definition-)
      "float64 current_robot_angle
float64[] angle
float64[] clock
float64[] trash
float64[] distance
---
bool success
string message
float64[] output

")

(setf (get simple_cpp_service::SimpleServiceResponse :md5sum-) "b403fad01eab98d2beac7b71c84eadf7")
(setf (get simple_cpp_service::SimpleServiceResponse :datatype-) "simple_cpp_service/SimpleServiceResponse")
(setf (get simple_cpp_service::SimpleServiceResponse :definition-)
      "float64 current_robot_angle
float64[] angle
float64[] clock
float64[] trash
float64[] distance
---
bool success
string message
float64[] output

")



(provide :simple_cpp_service/SimpleService "b403fad01eab98d2beac7b71c84eadf7")


