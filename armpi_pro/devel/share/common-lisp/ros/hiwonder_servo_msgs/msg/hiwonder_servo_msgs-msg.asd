
(cl:in-package :asdf)

(defsystem "hiwonder_servo_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ActionGroupRunnerAction" :depends-on ("_package_ActionGroupRunnerAction"))
    (:file "_package_ActionGroupRunnerAction" :depends-on ("_package"))
    (:file "ActionGroupRunnerActionFeedback" :depends-on ("_package_ActionGroupRunnerActionFeedback"))
    (:file "_package_ActionGroupRunnerActionFeedback" :depends-on ("_package"))
    (:file "ActionGroupRunnerActionGoal" :depends-on ("_package_ActionGroupRunnerActionGoal"))
    (:file "_package_ActionGroupRunnerActionGoal" :depends-on ("_package"))
    (:file "ActionGroupRunnerActionResult" :depends-on ("_package_ActionGroupRunnerActionResult"))
    (:file "_package_ActionGroupRunnerActionResult" :depends-on ("_package"))
    (:file "ActionGroupRunnerFeedback" :depends-on ("_package_ActionGroupRunnerFeedback"))
    (:file "_package_ActionGroupRunnerFeedback" :depends-on ("_package"))
    (:file "ActionGroupRunnerGoal" :depends-on ("_package_ActionGroupRunnerGoal"))
    (:file "_package_ActionGroupRunnerGoal" :depends-on ("_package"))
    (:file "ActionGroupRunnerResult" :depends-on ("_package_ActionGroupRunnerResult"))
    (:file "_package_ActionGroupRunnerResult" :depends-on ("_package"))
    (:file "CommandDuration" :depends-on ("_package_CommandDuration"))
    (:file "_package_CommandDuration" :depends-on ("_package"))
    (:file "CommandDurationList" :depends-on ("_package_CommandDurationList"))
    (:file "_package_CommandDurationList" :depends-on ("_package"))
    (:file "JointState" :depends-on ("_package_JointState"))
    (:file "_package_JointState" :depends-on ("_package"))
    (:file "MultiRawIdPosDur" :depends-on ("_package_MultiRawIdPosDur"))
    (:file "_package_MultiRawIdPosDur" :depends-on ("_package"))
    (:file "RawIdPosDur" :depends-on ("_package_RawIdPosDur"))
    (:file "_package_RawIdPosDur" :depends-on ("_package"))
    (:file "ServoState" :depends-on ("_package_ServoState"))
    (:file "_package_ServoState" :depends-on ("_package"))
    (:file "ServoStateList" :depends-on ("_package_ServoStateList"))
    (:file "_package_ServoStateList" :depends-on ("_package"))
  ))