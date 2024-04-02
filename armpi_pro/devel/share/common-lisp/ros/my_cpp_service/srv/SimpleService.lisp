; Auto-generated. Do not edit!


(cl:in-package my_cpp_service-srv)


;//! \htmlinclude SimpleService-request.msg.html

(cl:defclass <SimpleService-request> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SimpleService-request (<SimpleService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimpleService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimpleService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_cpp_service-srv:<SimpleService-request> is deprecated: use my_cpp_service-srv:SimpleService-request instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SimpleService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_cpp_service-srv:message-val is deprecated.  Use my_cpp_service-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimpleService-request>) ostream)
  "Serializes a message object of type '<SimpleService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimpleService-request>) istream)
  "Deserializes a message object of type '<SimpleService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimpleService-request>)))
  "Returns string type for a service object of type '<SimpleService-request>"
  "my_cpp_service/SimpleServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleService-request)))
  "Returns string type for a service object of type 'SimpleService-request"
  "my_cpp_service/SimpleServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimpleService-request>)))
  "Returns md5sum for a message object of type '<SimpleService-request>"
  "fa085dd523f7935c5f5364b0b8e8e1ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimpleService-request)))
  "Returns md5sum for a message object of type 'SimpleService-request"
  "fa085dd523f7935c5f5364b0b8e8e1ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimpleService-request>)))
  "Returns full string definition for message of type '<SimpleService-request>"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimpleService-request)))
  "Returns full string definition for message of type 'SimpleService-request"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimpleService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimpleService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SimpleService-request
    (cl:cons ':message (message msg))
))
;//! \htmlinclude SimpleService-response.msg.html

(cl:defclass <SimpleService-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass SimpleService-response (<SimpleService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimpleService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimpleService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_cpp_service-srv:<SimpleService-response> is deprecated: use my_cpp_service-srv:SimpleService-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SimpleService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_cpp_service-srv:result-val is deprecated.  Use my_cpp_service-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimpleService-response>) ostream)
  "Serializes a message object of type '<SimpleService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimpleService-response>) istream)
  "Deserializes a message object of type '<SimpleService-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimpleService-response>)))
  "Returns string type for a service object of type '<SimpleService-response>"
  "my_cpp_service/SimpleServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleService-response)))
  "Returns string type for a service object of type 'SimpleService-response"
  "my_cpp_service/SimpleServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimpleService-response>)))
  "Returns md5sum for a message object of type '<SimpleService-response>"
  "fa085dd523f7935c5f5364b0b8e8e1ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimpleService-response)))
  "Returns md5sum for a message object of type 'SimpleService-response"
  "fa085dd523f7935c5f5364b0b8e8e1ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimpleService-response>)))
  "Returns full string definition for message of type '<SimpleService-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimpleService-response)))
  "Returns full string definition for message of type 'SimpleService-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimpleService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimpleService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SimpleService-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SimpleService)))
  'SimpleService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SimpleService)))
  'SimpleService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleService)))
  "Returns string type for a service object of type '<SimpleService>"
  "my_cpp_service/SimpleService")