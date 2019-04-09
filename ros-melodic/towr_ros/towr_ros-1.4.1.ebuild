# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS dependent wrapper for\
	<a href=\"http://wiki.ros.org/towr\">towr<[...]"
HOMEPAGE="http://github.com/ethz-adrl/towr"
SRC_URI="https://github.com/ethz-adrl/towr-release/archive/release/melodic/${PN}/1.4.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/message_generation
	ros-melodic/message_runtime
	ros-melodic/rosbag
	ros-melodic/roscpp
	ros-melodic/rqt_bag
	ros-melodic/rviz
	ros-melodic/std_msgs
	ros-melodic/towr
	ros-melodic/visualization_msgs
	ros-melodic/xpp_hyq
	ros-melodic/xpp_msgs
	ros-melodic/xpp_states
	sys-libs/ncurses
	x11-terms/xterm
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
