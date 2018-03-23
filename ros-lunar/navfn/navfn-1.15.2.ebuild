# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="navfn provides a fast interpolated navigation function that can be used to [...]"
HOMEPAGE="http://wiki.ros.org/navfn"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/lunar/${PN}/1.15.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/costmap_2d
	ros-lunar/geometry_msgs
	ros-lunar/message_runtime
	ros-lunar/nav_core
	ros-lunar/nav_msgs
	ros-lunar/pcl_conversions
	ros-lunar/pcl_ros
	ros-lunar/pluginlib
	ros-lunar/rosconsole
	ros-lunar/roscpp
	ros-lunar/tf
	ros-lunar/visualization_msgs
	test? ( ros-lunar/rosunit )
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/message_generation
	media-libs/netpbm
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
