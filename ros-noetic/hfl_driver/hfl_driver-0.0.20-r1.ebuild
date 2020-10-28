# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The hfl package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/flynneva/${PN}-release/archive/release/noetic/${PN}/0.0.20-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/angles
	ros-noetic/camera_info_manager
	ros-noetic/cv_bridge
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/image_geometry
	ros-noetic/image_transport
	ros-noetic/message_generation
	ros-noetic/message_runtime
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/tf2
	ros-noetic/tf2_geometry_msgs
	ros-noetic/udp_com
	ros-noetic/visualization_msgs
	test? ( ros-noetic/roslint )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
