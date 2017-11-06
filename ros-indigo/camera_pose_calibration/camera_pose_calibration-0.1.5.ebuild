# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Camera pose calibration using the OpenCV asymmetric circles pattern"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/delftrobotics/camera_pose_calibration-release/archive/release/indigo/camera_pose_calibration/0.1.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/cv_bridge
	ros-indigo/eigen_conversions
	ros-indigo/image_transport
	ros-indigo/message_generation
	ros-indigo/message_runtime
	ros-indigo/nodelet
	ros-indigo/pcl_ros
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/tf_conversions
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

