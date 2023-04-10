# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The depthai_examples package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/luxonis/depthai-ros-release/archive/release/noetic/${PN}/2.6.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/camera_info_manager
	ros-noetic/cv_bridge
	ros-noetic/depth_image_proc
	ros-noetic/depthai
	ros-noetic/depthai_bridge
	ros-noetic/depthai_ros_msgs
	ros-noetic/foxglove_msgs
	ros-noetic/image_transport
	ros-noetic/message_filters
	ros-noetic/nodelet
	ros-noetic/robot_state_publisher
	ros-noetic/ros_environment
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/stereo_msgs
	ros-noetic/vision_msgs
	ros-noetic/xacro
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
