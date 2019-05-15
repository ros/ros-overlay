# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides .launch files and other tools for\
  calibrating the [...]"
HOMEPAGE="http://ros.org/wiki/nextage_calibration"
SRC_URI="https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/${PN}/0.8.5-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/checkerboard_detector
	ros-kinetic/dynamic_tf_publisher
	ros-kinetic/freenect_stack
	ros-kinetic/gazebo_plugins
	ros-kinetic/gazebo_ros
	ros-kinetic/joint_state_publisher
	ros-kinetic/openni2_launch
	ros-kinetic/robot_state_publisher
	ros-kinetic/tf
	ros-kinetic/turtlebot_description
	ros-kinetic/urdf
	test? ( ros-kinetic/nextage_gazebo )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
