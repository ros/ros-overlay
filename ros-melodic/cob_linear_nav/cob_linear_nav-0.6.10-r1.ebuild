# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="cob_linear_nav provides a simple navigation instrument driving on a linear [...]"
HOMEPAGE="http://ros.org/wiki/cob_linear_nav"
SRC_URI="https://github.com/ipa320/cob_navigation-release/archive/release/melodic/${PN}/0.6.10-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/angles
	ros-melodic/cob_srvs
	ros-melodic/geometry_msgs
	ros-melodic/move_base_msgs
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
