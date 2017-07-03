# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Runs an optimization to estimate the a robot's kinematic parameters. This packag"
HOMEPAGE="http://ros.org/wiki/calibration_estimation"
SRC_URI="https://github.com/ros-gbp/calibration-release/archive/release/lunar/calibration_estimation/0.10.14-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/calibration_msgs
	ros-lunar/python_orocos_kdl
	ros-lunar/rospy
	ros-lunar/rostest
	ros-lunar/sensor_msgs
	ros-lunar/urdfdom_py
	ros-lunar/visualization_msgs
	dev-python/matplotlib
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

