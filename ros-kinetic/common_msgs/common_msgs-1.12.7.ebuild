# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="common_msgs contains messages that are widely used by other ROS packages.\
[...]"
HOMEPAGE="http://wiki.ros.org/common_msgs"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/1.12.7-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib_msgs
	ros-kinetic/diagnostic_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/sensor_msgs
	ros-kinetic/shape_msgs
	ros-kinetic/stereo_msgs
	ros-kinetic/trajectory_msgs
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
