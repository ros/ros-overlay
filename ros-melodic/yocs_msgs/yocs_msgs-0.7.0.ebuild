# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Yujin\'s Open Control System messages, services and actions"
HOMEPAGE="http://ros.org/wiki/yocs_msgs"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/melodic/${PN}/0.7.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib_msgs
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/std_msgs
	ros-melodic/std_srvs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
