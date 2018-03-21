# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rqt_bag provides a GUI plugin for displaying and replaying ROS bag files."
HOMEPAGE="http://wiki.ros.org/rqt_bag"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/0.4.12-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/python_qt_binding
	ros-lunar/rosbag
	ros-lunar/rosgraph_msgs
	ros-lunar/roslib
	ros-lunar/rosnode
	ros-lunar/rospy
	ros-lunar/rqt_gui
	ros-lunar/rqt_gui_py
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
