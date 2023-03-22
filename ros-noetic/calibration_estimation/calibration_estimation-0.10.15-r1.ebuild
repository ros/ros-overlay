# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Runs an optimization to estimate the a robot\'s kinematic parameters. This [...]"
HOMEPAGE="http://ros.org/wiki/calibration_estimation"
SRC_URI="https://github.com/ros-gbp/calibration-release/archive/release/noetic/${PN}/0.10.15-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/calibration_msgs
	ros-noetic/rospy
	ros-noetic/rostest
	ros-noetic/sensor_msgs
	ros-noetic/urdfdom_py
	ros-noetic/visualization_msgs
	dev-python/matplotlib
	dev-python/python_orocos_kdl
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
