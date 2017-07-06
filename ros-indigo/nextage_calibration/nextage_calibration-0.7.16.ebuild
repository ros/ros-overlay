# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This package provides .launch files and other tools for
  calibrating the head-m'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/rtmros_nextage-release/archive/release/indigo/nextage_calibration/0.7.16-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/checkerboard_detector
	ros-indigo/dynamic_tf_publisher
	ros-indigo/freenect_stack
	ros-indigo/gazebo_plugins
	ros-indigo/gazebo_ros
	ros-indigo/joint_state_publisher
	ros-indigo/openni2_launch
	ros-indigo/robot_state_publisher
	ros-indigo/tf
	ros-indigo/turtlebot_description
	ros-indigo/urdf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

