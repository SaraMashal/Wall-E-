;; Auto-generated. Do not edit!


(when (boundp 'test::angle)
  (if (not (find-package "TEST"))
    (make-package "TEST"))
  (shadow 'angle (find-package "TEST")))
(unless (find-package "TEST::ANGLE")
  (make-package "TEST::ANGLE"))
(unless (find-package "TEST::ANGLEREQUEST")
  (make-package "TEST::ANGLEREQUEST"))
(unless (find-package "TEST::ANGLERESPONSE")
  (make-package "TEST::ANGLERESPONSE"))

(in-package "ROS")





(defclass test::angleRequest
  :super ros::object
  :slots (_speed ))

(defmethod test::angleRequest
  (:init
   (&key
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass test::angleResponse
  :super ros::object
  :slots (_response ))

(defmethod test::angleResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass test::angle
  :super ros::object
  :slots ())

(setf (get test::angle :md5sum-) "fd5d4dc86797e99445f7946d14193144")
(setf (get test::angle :datatype-) "test/angle")
(setf (get test::angle :request) test::angleRequest)
(setf (get test::angle :response) test::angleResponse)

(defmethod test::angleRequest
  (:response () (instance test::angleResponse :init)))

(setf (get test::angleRequest :md5sum-) "fd5d4dc86797e99445f7946d14193144")
(setf (get test::angleRequest :datatype-) "test/angleRequest")
(setf (get test::angleRequest :definition-)
      "float32 speed
---
string response

")

(setf (get test::angleResponse :md5sum-) "fd5d4dc86797e99445f7946d14193144")
(setf (get test::angleResponse :datatype-) "test/angleResponse")
(setf (get test::angleResponse :definition-)
      "float32 speed
---
string response

")



(provide :test/angle "fd5d4dc86797e99445f7946d14193144")


