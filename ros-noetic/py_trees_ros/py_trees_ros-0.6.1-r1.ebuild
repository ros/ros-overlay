# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Ros extensions and behaviours for py_trees."
HOMEPAGE="http://ros.org/wiki/py_trees"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/noetic/${PN}/0.6.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/move_base_msgs
	ros-noetic/nav_msgs
	ros-noetic/py_trees
	ros-noetic/py_trees_msgs
	ros-noetic/rosbag
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/unique_id
	ros-noetic/uuid_msgs
	test? ( ros-noetic/geometry_msgs )
	test? ( ros-noetic/py_trees )
	test? ( ros-noetic/python_qt_binding )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
	dev-python/rospkg
	dev-python/termcolor
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
