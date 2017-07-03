# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="Provides nodes to assemble point clouds from either LaserScan or PointCloud mess"
HOMEPAGE="http://ros.org/wiki/laser_assembler"
SRC_URI="https://github.com/ros-gbp/laser_assembler-release/archive/release/lunar/laser_assembler/1.7.4-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/filters
	ros-lunar/laser_geometry
	ros-lunar/message_filters
	ros-lunar/message_runtime
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/tf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
	ros-lunar/rostest
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

