# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rqt_py_common provides common functionality for rqt plugins written in Pyth[...]"
HOMEPAGE="http://ros.org/wiki/rqt_py_common"
SRC_URI="https://github.com/ros-gbp/rqt-release/archive/release/melodic/${PN}/0.5.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/genpy
	ros-melodic/python_qt_binding
	ros-melodic/qt_gui
	ros-melodic/rosbag
	ros-melodic/roslib
	ros-melodic/rospy
	ros-melodic/rostopic
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/genmsg
	ros-melodic/std_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
