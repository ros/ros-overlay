# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ml_classifiers"
HOMEPAGE="http://wiki.ros.org/ml_classifiers"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/lunar/${PN}/0.4.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/message_runtime
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/roslib
	ros-lunar/std_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
	ros-lunar/roslint
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
