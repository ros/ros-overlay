# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS dependent wrapper for\
	<a href=\"http://wiki.ros.org/towr\">towr<[...]"
HOMEPAGE="http://github.com/ethz-adrl/towr"
SRC_URI="https://github.com/ethz-adrl/towr-release/archive/release/kinetic/${PN}/1.4.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/message_generation
	ros-kinetic/message_runtime
	ros-kinetic/rosbag
	ros-kinetic/roscpp
	ros-kinetic/rqt_bag
	ros-kinetic/rviz
	ros-kinetic/std_msgs
	ros-kinetic/towr
	ros-kinetic/visualization_msgs
	ros-kinetic/xpp_hyq
	ros-kinetic/xpp_msgs
	ros-kinetic/xpp_states
	sys-libs/ncurses
	x11-terms/xterm
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
