# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Ros extensions and behaviours for py_trees."
HOMEPAGE="http://ros.org/wiki/py_trees"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/melodic/${PN}/0.5.21-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/move_base_msgs
	ros-melodic/nav_msgs
	ros-melodic/py_trees
	ros-melodic/py_trees_msgs
	ros-melodic/rosbag
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/unique_id
	ros-melodic/uuid_msgs
	test? ( ros-melodic/geometry_msgs )
	test? ( ros-melodic/py_trees )
	test? ( ros-melodic/python_qt_binding )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	dev-python/rospkg
	dev-python/termcolor
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
