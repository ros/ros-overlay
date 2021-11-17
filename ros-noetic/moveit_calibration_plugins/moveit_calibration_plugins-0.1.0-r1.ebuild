# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Plugins of MoveIt calibration"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/JStech/moveit_calibration-release/archive/release/noetic/${PN}/0.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/baldor
	ros-noetic/criutils
	ros-noetic/handeye
	ros-noetic/pluginlib
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/tf2
	ros-noetic/tf2_eigen
	ros-noetic/tf2_geometry_msgs
	test? ( ros-noetic/rosunit )
	dev-libs/jsoncpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
