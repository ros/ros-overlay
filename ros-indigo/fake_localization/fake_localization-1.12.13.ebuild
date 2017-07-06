# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A ROS node that simply forwards odometry information.'"
HOMEPAGE="http://wiki.ros.org/fake_localization"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/indigo/fake_localization/1.12.13-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/message_filters
	ros-indigo/nav_msgs
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/angles
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

