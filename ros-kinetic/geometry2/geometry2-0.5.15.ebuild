# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A metapackage to bring in the default packages second generation Transform Libra'"
HOMEPAGE="http://www.ros.org/wiki/geometry2"
SRC_URI="https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/geometry2/0.5.15-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/tf2
	ros-kinetic/tf2_bullet
	ros-kinetic/tf2_eigen
	ros-kinetic/tf2_geometry_msgs
	ros-kinetic/tf2_kdl
	ros-kinetic/tf2_msgs
	ros-kinetic/tf2_py
	ros-kinetic/tf2_ros
	ros-kinetic/tf2_sensor_msgs
	ros-kinetic/tf2_tools
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

