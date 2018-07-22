# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Motion limiter package for collision prevention"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/neonavigation-release/archive/release/lunar/${PN}/0.2.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/cmake_modules
	ros-lunar/geometry_msgs
	ros-lunar/neonavigation_common
	ros-lunar/pcl_ros
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/tf
	ros-lunar/tf_conversions
	ros-lunar/xmlrpcpp
	test? ( ros-lunar/roslint )
	test? ( ros-lunar/rostest )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
