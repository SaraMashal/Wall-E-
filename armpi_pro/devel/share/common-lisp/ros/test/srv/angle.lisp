; Auto-generated. Do not edit!


(cl:in-package test-srv)


;//! \htmlinclude angle-request.msg.html

(cl:defclass <angle-request> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass angle-request (<angle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <angle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'angle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test-srv:<angle-request> is deprecated: use test-srv:angle-request instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <angle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-srv:speed-val is deprecated.  Use test-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <angle-request>) ostream)
  "Serializes a message object of type '<angle-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <angle-request>) istream)
  "Deserializes a message object of type '<angle-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<angle-request>)))
  "Returns string type for a service object of type '<angle-request>"
  "test/angleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angle-request)))
  "Returns string type for a service object of type 'angle-request"
  "test/angleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<angle-request>)))
  "Returns md5sum for a message object of type '<angle-request>"
  "fd5d4dc86797e99445f7946d14193144")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'angle-request)))
  "Returns md5sum for a message object of type 'angle-request"
  "fd5d4dc86797e99445f7946d14193144")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<angle-request>)))
  "Returns full string definition for message of type '<angle-request>"
  (cl:format cl:nil "float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'angle-request)))
  "Returns full string definition for message of type 'angle-request"
  (cl:format cl:nil "float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <angle-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <angle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'angle-request
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude angle-response.msg.html

(cl:defclass <angle-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass angle-response (<angle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <angle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'angle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test-srv:<angle-response> is deprecated: use test-srv:angle-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <angle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-srv:response-val is deprecated.  Use test-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <angle-response>) ostream)
  "Serializes a message object of type '<angle-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <angle-response>) istream)
  "Deserializes a message object of type '<angle-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<angle-response>)))
  "Returns string type for a service object of type '<angle-response>"
  "test/angleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angle-response)))
  "Returns string type for a service object of type 'angle-response"
  "test/angleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<angle-response>)))
  "Returns md5sum for a message object of type '<angle-response>"
  "fd5d4dc86797e99445f7946d14193144")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'angle-response)))
  "Returns md5sum for a message object of type 'angle-response"
  "fd5d4dc86797e99445f7946d14193144")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<angle-response>)))
  "Returns full string definition for message of type '<angle-response>"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'angle-response)))
  "Returns full string definition for message of type 'angle-response"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <angle-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <angle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'angle-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'angle)))
  'angle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'angle)))
  'angle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angle)))
  "Returns string type for a service object of type '<angle>"
  "test/angle")