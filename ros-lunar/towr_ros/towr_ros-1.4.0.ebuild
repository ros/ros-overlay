# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS dependent wrapper for\
	<a href=\"http://wiki.ros.org/towr\">towr<[...]"
HOMEPAGE="http://github.com/ethz-adrl/towr"
SRC_URI="https://github.com/ethz-adrl/towr-release/archive/release/lunar/${PN}/1.4.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/message_generation
	ros-lunar/message_runtime
	ros-lunar/rosbag
	ros-lunar/roscpp
	ros-lunar/rqt_bag
	ros-lunar/rviz
	ros-lunar/std_msgs
	ros-lunar/towr
	ros-lunar/visualization_msgs
	ros-lunar/xpp_hyq
	ros-lunar/xpp_msgs
	ros-lunar/xpp_states
	sys-libs/ncurses
	x11-terms/xterm
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
