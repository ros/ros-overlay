# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A viewer for the SLAM component of roboception based on ROS and PCL"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/roboception-gbp/${PN}-release/archive/release/lunar/${PN}/1.0.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/nav_msgs
	ros-lunar/pcl_ros
	ros-lunar/roscpp
	ros-lunar/std_srvs
	ros-lunar/tf2
	ros-lunar/tf2_msgs
	ros-lunar/tf2_ros
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
