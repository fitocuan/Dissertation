;; Auto-generated. Do not edit!


(when (boundp 'zed_wrapper::stop_3d_mapping)
  (if (not (find-package "ZED_WRAPPER"))
    (make-package "ZED_WRAPPER"))
  (shadow 'stop_3d_mapping (find-package "ZED_WRAPPER")))
(unless (find-package "ZED_WRAPPER::STOP_3D_MAPPING")
  (make-package "ZED_WRAPPER::STOP_3D_MAPPING"))
(unless (find-package "ZED_WRAPPER::STOP_3D_MAPPINGREQUEST")
  (make-package "ZED_WRAPPER::STOP_3D_MAPPINGREQUEST"))
(unless (find-package "ZED_WRAPPER::STOP_3D_MAPPINGRESPONSE")
  (make-package "ZED_WRAPPER::STOP_3D_MAPPINGRESPONSE"))

(in-package "ROS")





(defclass zed_wrapper::stop_3d_mappingRequest
  :super ros::object
  :slots ())

(defmethod zed_wrapper::stop_3d_mappingRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass zed_wrapper::stop_3d_mappingResponse
  :super ros::object
  :slots (_done ))

(defmethod zed_wrapper::stop_3d_mappingResponse
  (:init
   (&key
    ((:done __done) nil)
    )
   (send-super :init)
   (setq _done __done)
   self)
  (:done
   (&optional __done)
   (if __done (setq _done __done)) _done)
  (:serialization-length
   ()
   (+
    ;; bool _done
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _done
       (if _done (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _done
     (setq _done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass zed_wrapper::stop_3d_mapping
  :super ros::object
  :slots ())

(setf (get zed_wrapper::stop_3d_mapping :md5sum-) "89bb254424e4cffedbf494e7b0ddbfea")
(setf (get zed_wrapper::stop_3d_mapping :datatype-) "zed_wrapper/stop_3d_mapping")
(setf (get zed_wrapper::stop_3d_mapping :request) zed_wrapper::stop_3d_mappingRequest)
(setf (get zed_wrapper::stop_3d_mapping :response) zed_wrapper::stop_3d_mappingResponse)

(defmethod zed_wrapper::stop_3d_mappingRequest
  (:response () (instance zed_wrapper::stop_3d_mappingResponse :init)))

(setf (get zed_wrapper::stop_3d_mappingRequest :md5sum-) "89bb254424e4cffedbf494e7b0ddbfea")
(setf (get zed_wrapper::stop_3d_mappingRequest :datatype-) "zed_wrapper/stop_3d_mappingRequest")
(setf (get zed_wrapper::stop_3d_mappingRequest :definition-)
      "


---
bool done

")

(setf (get zed_wrapper::stop_3d_mappingResponse :md5sum-) "89bb254424e4cffedbf494e7b0ddbfea")
(setf (get zed_wrapper::stop_3d_mappingResponse :datatype-) "zed_wrapper/stop_3d_mappingResponse")
(setf (get zed_wrapper::stop_3d_mappingResponse :definition-)
      "


---
bool done

")



(provide :zed_wrapper/stop_3d_mapping "89bb254424e4cffedbf494e7b0ddbfea")

