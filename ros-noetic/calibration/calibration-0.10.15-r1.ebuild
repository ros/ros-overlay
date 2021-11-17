# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Provides a toolchain running through the robot calibration process. This\
 [...]"
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.10.15-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/calibration_estimation
	ros-noetic/calibration_launch
	ros-noetic/calibration_msgs
	ros-noetic/image_cb_detector
	ros-noetic/interval_intersection
	ros-noetic/joint_states_settler
	ros-noetic/laser_cb_detector
	ros-noetic/monocam_settler
	ros-noetic/settlerlib
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
