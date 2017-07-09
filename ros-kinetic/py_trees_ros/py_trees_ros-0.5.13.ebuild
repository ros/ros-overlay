# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Ros extensions and behaviours for py_trees"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stonier/py_trees_ros-release/archive/release/kinetic/py_trees_ros/0.5.13-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
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

