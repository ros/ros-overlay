# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Path following control package for wheeled mobile robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/neonavigation-release/archive/release/kinetic/${PN}/0.9.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/interactive_markers
	ros-kinetic/nav_msgs
	ros-kinetic/neonavigation_common
	ros-kinetic/roscpp
	ros-kinetic/std_srvs
	ros-kinetic/tf2
	ros-kinetic/tf2_geometry_msgs
	ros-kinetic/tf2_ros
	ros-kinetic/trajectory_tracker_msgs
	test? ( ros-kinetic/roslint )
	test? ( ros-kinetic/rostest )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
