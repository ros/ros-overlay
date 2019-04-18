# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A multi-roslaunch \(for single and multi-master systems\)."
HOMEPAGE="http://ros.org/wiki/rocon_launch"
SRC_URI="https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/${PN}/0.3.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rocon_console
	ros-melodic/rocon_python_utils
	ros-melodic/rosbash
	ros-melodic/roslaunch
	ros-melodic/rospy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
