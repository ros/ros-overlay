# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Ros extensions and behaviours for py_trees."
HOMEPAGE="http://ros.org/wiki/py_trees"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/kinetic/${PN}/0.5.18-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/move_base_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/py_trees
	ros-kinetic/py_trees_msgs
	ros-kinetic/rosbag
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/unique_id
	ros-kinetic/uuid_msgs
	test? ( ros-kinetic/geometry_msgs )
	test? ( ros-kinetic/py_trees )
	test? ( ros-kinetic/python_qt_binding )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rosunit )
	dev-python/rospkg
	dev-python/termcolor
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
