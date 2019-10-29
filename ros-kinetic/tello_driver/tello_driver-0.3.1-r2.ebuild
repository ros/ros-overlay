# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="&gt;This package provides a ROS interface for the TelloPy library.\
  Devel[...]"
HOMEPAGE="http://www.ros.org/wiki/tello_driver"
SRC_URI="https://github.com/appie-17/${PN}-release/archive/release/kinetic/${PN}/0.3.1-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/camera_info_manager_py
	ros-kinetic/codec_image_transport
	ros-kinetic/cv_bridge
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/image_transport
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
