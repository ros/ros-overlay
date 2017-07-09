# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provides a toolchain running through the robot calibration process This	 in"
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/calibration-release/archive/release/kinetic/calibration/0.10.14-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/calibration_estimation
	ros-kinetic/calibration_launch
	ros-kinetic/calibration_msgs
	ros-kinetic/image_cb_detector
	ros-kinetic/interval_intersection
	ros-kinetic/joint_states_settler
	ros-kinetic/laser_cb_detector
	ros-kinetic/monocam_settler
	ros-kinetic/settlerlib
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

