# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Publish master information  name, description, icon"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_master_info/0.3.2-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rocon_bubble_icons
	ros-kinetic/rocon_console
	ros-kinetic/rocon_icons
	ros-kinetic/rocon_python_comms
	ros-kinetic/rocon_python_utils
	ros-kinetic/rocon_std_msgs
	ros-kinetic/rocon_uri
	ros-kinetic/rospy
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

