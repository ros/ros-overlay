# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Odometry slip compensation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/neonavigation-release/archive/release/noetic/${PN}/0.10.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/message_filters
	ros-noetic/nav_msgs
	ros-noetic/neonavigation_common
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf2
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	ros-noetic/trajectory_msgs
	test? ( ros-noetic/roslint )
	test? ( ros-noetic/rostest )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
