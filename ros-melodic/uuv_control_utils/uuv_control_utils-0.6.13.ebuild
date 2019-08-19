# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The uuv_control_utils package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/${PN}/0.6.13-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/gazebo_msgs
	ros-melodic/geometry_msgs
	ros-melodic/nav_msgs
	ros-melodic/rospy
	ros-melodic/std_msgs
	ros-melodic/uuv_control_msgs
	ros-melodic/uuv_gazebo_ros_plugins_msgs
	ros-melodic/uuv_trajectory_control
	ros-melodic/uuv_world_ros_plugins_msgs
	ros-melodic/visualization_msgs
	dev-python/numpy
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
