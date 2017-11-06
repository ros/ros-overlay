# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provides a toolchain running through the robot calibration process. This\
 [...]"
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/calibration-release/archive/release/indigo/calibration/0.10.14-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/calibration_estimation
	ros-indigo/calibration_launch
	ros-indigo/calibration_msgs
	ros-indigo/image_cb_detector
	ros-indigo/interval_intersection
	ros-indigo/joint_states_settler
	ros-indigo/laser_cb_detector
	ros-indigo/monocam_settler
	ros-indigo/settlerlib
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
