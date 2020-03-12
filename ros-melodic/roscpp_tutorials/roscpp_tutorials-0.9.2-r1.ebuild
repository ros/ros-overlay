# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package attempts to show the features of ROS step-by-step,\
	includ[...]"
HOMEPAGE="http://www.ros.org/wiki/roscpp_tutorials"
SRC_URI="https://github.com/ros-gbp/ros_tutorials-release/archive/release/melodic/${PN}/0.9.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/message_runtime
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/roscpp_serialization
	ros-melodic/rostime
	ros-melodic/std_msgs
	dev-libs/boost
	dev-libs/boost[threads]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
