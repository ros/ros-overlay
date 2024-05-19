# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The depthai_bridge package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/luxonis/depthai-ros-release/archive/release/noetic/${PN}/2.9.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/camera_info_manager
	ros-noetic/cv_bridge
	ros-noetic/depthai
	ros-noetic/depthai_ros_msgs
	ros-noetic/image_transport
	ros-noetic/robot_state_publisher
	ros-noetic/ros_environment
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/stereo_msgs
	ros-noetic/tf2
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	ros-noetic/urdf
	ros-noetic/vision_msgs
	dev-libs/boost
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
