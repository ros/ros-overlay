# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A ROS node that simply forwards odometry information.'"
HOMEPAGE="http://wiki.ros.org/fake_localization"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/fake_localization/1.14.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/message_filters
	ros-kinetic/nav_msgs
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/angles
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

