# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="a#text"
HOMEPAGE="http://www.ros.org/wiki/common_msgs"
SRC_URI="https://github.com/ros-gbp/common_msgs-release/archive/release/indigo/common_msgs/1.11.9-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib_msgs
	ros-indigo/diagnostic_msgs
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/sensor_msgs
	ros-indigo/shape_msgs
	ros-indigo/stereo_msgs
	ros-indigo/trajectory_msgs
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

