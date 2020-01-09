# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Driver module between Aldebaran\'s NAOqiOS and ROS. It publishes all sensor[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/${PN}-release/archive/release/kinetic/${PN}/0.5.11-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/image_transport
	ros-kinetic/kdl_parser
	ros-kinetic/naoqi_bridge_msgs
	ros-kinetic/naoqi_libqi
	ros-kinetic/naoqi_libqicore
	ros-kinetic/orocos_kdl
	ros-kinetic/robot_state_publisher
	ros-kinetic/rosbag_storage
	ros-kinetic/rosconsole
	ros-kinetic/tf2_ros
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/diagnostic_msgs
	ros-kinetic/diagnostic_updater
	ros-kinetic/geometry_msgs
	ros-kinetic/rosgraph_msgs
	ros-kinetic/sensor_msgs
	ros-kinetic/tf2_geometry_msgs
	ros-kinetic/tf2_msgs
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
