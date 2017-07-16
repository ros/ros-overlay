# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A metapackage to bring in the default packages second generation Transform Libra"
HOMEPAGE="http://www.ros.org/wiki/geometry2"
SRC_URI="https://github.com/ros-gbp/geometry2-release/archive/release/lunar/geometry2/0.5.16-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/tf2
	ros-lunar/tf2_bullet
	ros-lunar/tf2_eigen
	ros-lunar/tf2_geometry_msgs
	ros-lunar/tf2_kdl
	ros-lunar/tf2_msgs
	ros-lunar/tf2_py
	ros-lunar/tf2_ros
	ros-lunar/tf2_sensor_msgs
	ros-lunar/tf2_tools
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

