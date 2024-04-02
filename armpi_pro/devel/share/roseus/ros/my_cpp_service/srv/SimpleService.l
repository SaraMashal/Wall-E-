;; Auto-generated. Do not edit!


(when (boundp 'my_cpp_service::SimpleService)
  (if (not (find-package "MY_CPP_SERVICE"))
    (make-package "MY_CPP_SERVICE"))
  (shadow 'SimpleService (find-package "MY_CPP_SERVICE")))
(unless (find-package "MY_CPP_SERVICE::SIMPLESERVICE")
  (make-package "MY_CPP_SERVICE::SIMPLESERVICE"))
(unless (find-package "MY_CPP_SERVICE::SIMPLESERVICEREQUEST")
  (make-package "MY_CPP_SERVICE::SIMPLESERVICEREQUEST"))
(unless (find-package "MY_CPP_SERVICE::SIMPLESERVICERESPONSE")
  (make-package "MY_CPP_SERVICE::SIMPLESERVICERESPONSE"))

(in-package "ROS")





(defclass my_cpp_service::SimpleServiceRequest
  :super ros::object
  :slots (_message ))

(defmethod my_cpp_service::SimpleServiceRequest
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass my_cpp_service::SimpleServiceResponse
  :super ros::object
  :slots (_result ))

(defmethod my_cpp_service::SimpleServiceResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass my_cpp_service::SimpleService
  :super ros::object
  :slots ())

(setf (get my_cpp_service::SimpleService :md5sum-) "fa085dd523f7935c5f5364b0b8e8e1ef")
(setf (get my_cpp_service::SimpleService :datatype-) "my_cpp_service/SimpleService")
(setf (get my_cpp_service::SimpleService :request) my_cpp_service::SimpleServiceRequest)
(setf (get my_cpp_service::SimpleService :response) my_cpp_service::SimpleServiceResponse)

(defmethod my_cpp_service::SimpleServiceRequest
  (:response () (instance my_cpp_service::SimpleServiceResponse :init)))

(setf (get my_cpp_service::SimpleServiceRequest :md5sum-) "fa085dd523f7935c5f5364b0b8e8e1ef")
(setf (get my_cpp_service::SimpleServiceRequest :datatype-) "my_cpp_service/SimpleServiceRequest")
(setf (get my_cpp_service::SimpleServiceRequest :definition-)
      "string message
---
string result

")

(setf (get my_cpp_service::SimpleServiceResponse :md5sum-) "fa085dd523f7935c5f5364b0b8e8e1ef")
(setf (get my_cpp_service::SimpleServiceResponse :datatype-) "my_cpp_service/SimpleServiceResponse")
(setf (get my_cpp_service::SimpleServiceResponse :definition-)
      "string message
---
string result

")



(provide :my_cpp_service/SimpleService "fa085dd523f7935c5f5364b0b8e8e1ef")


