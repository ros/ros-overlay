# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides a toolchain running through the robot calibration process. This\
 [...]"
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.10.14-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/calibration_estimation
	ros-melodic/calibration_launch
	ros-melodic/calibration_msgs
	ros-melodic/image_cb_detector
	ros-melodic/interval_intersection
	ros-melodic/joint_states_settler
	ros-melodic/laser_cb_detector
	ros-melodic/monocam_settler
	ros-melodic/settlerlib
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
