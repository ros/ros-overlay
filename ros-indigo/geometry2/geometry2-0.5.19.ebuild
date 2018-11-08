# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A metapackage to bring in the default packages second generation Transform [...]"
HOMEPAGE="http://www.ros.org/wiki/geometry2"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/indigo/${PN}/0.5.19-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/tf2
	ros-indigo/tf2_bullet
	ros-indigo/tf2_eigen
	ros-indigo/tf2_geometry_msgs
	ros-indigo/tf2_kdl
	ros-indigo/tf2_msgs
	ros-indigo/tf2_py
	ros-indigo/tf2_ros
	ros-indigo/tf2_sensor_msgs
	ros-indigo/tf2_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
