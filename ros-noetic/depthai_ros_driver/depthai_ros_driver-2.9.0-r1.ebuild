# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Depthai ROS Monolithic node."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/luxonis/depthai-ros-release/archive/release/noetic/${PN}/2.9.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/camera_info_manager
	ros-noetic/cv_bridge
	ros-noetic/depthai
	ros-noetic/depthai_bridge
	ros-noetic/depthai_descriptions
	ros-noetic/depthai_examples
	ros-noetic/depthai_ros_msgs
	ros-noetic/diagnostic_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/dynamic_reconfigure
	ros-noetic/image_pipeline
	ros-noetic/image_transport
	ros-noetic/image_transport_plugins
	ros-noetic/message_filters
	ros-noetic/nodelet
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/vision_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
