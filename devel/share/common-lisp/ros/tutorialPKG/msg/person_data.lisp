; Auto-generated. Do not edit!


(cl:in-package tutorialPKG-msg)


;//! \htmlinclude person_data.msg.html

(cl:defclass <person_data> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform "")
   (sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass person_data (<person_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <person_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'person_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorialPKG-msg:<person_data> is deprecated: use tutorialPKG-msg:person_data instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <person_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorialPKG-msg:name-val is deprecated.  Use tutorialPKG-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <person_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorialPKG-msg:age-val is deprecated.  Use tutorialPKG-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <person_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorialPKG-msg:color-val is deprecated.  Use tutorialPKG-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <person_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorialPKG-msg:sum-val is deprecated.  Use tutorialPKG-msg:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <person_data>) ostream)
  "Serializes a message object of type '<person_data>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <person_data>) istream)
  "Deserializes a message object of type '<person_data>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<person_data>)))
  "Returns string type for a message object of type '<person_data>"
  "tutorialPKG/person_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'person_data)))
  "Returns string type for a message object of type 'person_data"
  "tutorialPKG/person_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<person_data>)))
  "Returns md5sum for a message object of type '<person_data>"
  "7fcf566617780e49c632c8f9e7564d0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'person_data)))
  "Returns md5sum for a message object of type 'person_data"
  "7fcf566617780e49c632c8f9e7564d0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<person_data>)))
  "Returns full string definition for message of type '<person_data>"
  (cl:format cl:nil "string name~%uint8 age~%string color~%int64 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'person_data)))
  "Returns full string definition for message of type 'person_data"
  (cl:format cl:nil "string name~%uint8 age~%string color~%int64 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <person_data>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
     4 (cl:length (cl:slot-value msg 'color))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <person_data>))
  "Converts a ROS message object to a list"
  (cl:list 'person_data
    (cl:cons ':name (name msg))
    (cl:cons ':age (age msg))
    (cl:cons ':color (color msg))
    (cl:cons ':sum (sum msg))
))
