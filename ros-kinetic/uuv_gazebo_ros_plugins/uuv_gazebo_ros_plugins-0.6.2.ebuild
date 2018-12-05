# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="UUV Simulator\'s extended ROS plugins for generation of the necessary\
	[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/${PN}/0.6.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf2
	ros-kinetic/tf2_ros
	ros-kinetic/uuv_gazebo_plugins
	ros-kinetic/uuv_gazebo_ros_plugins_msgs
	ros-kinetic/visualization_msgs
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rosunit )
	test? ( ros-kinetic/xacro )
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
