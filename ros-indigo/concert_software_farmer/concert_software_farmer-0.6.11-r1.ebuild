# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Concert Software farm is to manage software being utilised across services'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_concert-release/archive/release/indigo/concert_software_farmer/0.6.11-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/concert_msgs
	ros-indigo/genpy
	ros-indigo/rocon_python_comms
	ros-indigo/rocon_python_utils
	ros-indigo/rocon_std_msgs
	ros-indigo/rospy
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

