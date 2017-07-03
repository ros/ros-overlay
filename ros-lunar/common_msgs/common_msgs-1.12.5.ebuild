# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="NONE"
HOMEPAGE="http://wiki.ros.org/common_msgs"
SRC_URI="https://github.com/ros-gbp/common_msgs-release/archive/release/lunar/common_msgs/1.12.5-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/actionlib_msgs
	ros-lunar/diagnostic_msgs
	ros-lunar/geometry_msgs
	ros-lunar/nav_msgs
	ros-lunar/sensor_msgs
	ros-lunar/shape_msgs
	ros-lunar/stereo_msgs
	ros-lunar/trajectory_msgs
	ros-lunar/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

