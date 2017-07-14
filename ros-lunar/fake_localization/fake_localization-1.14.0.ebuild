# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A ROS node that simply forwards odometry information."
HOMEPAGE="http://wiki.ros.org/fake_localization"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/lunar/fake_localization/1.14.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/message_filters
	ros-lunar/nav_msgs
	ros-lunar/rosconsole
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/tf
"
DEPEND="${RDEPEND}
	ros-lunar/angles
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

