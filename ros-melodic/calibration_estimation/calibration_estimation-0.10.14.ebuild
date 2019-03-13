# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Runs an optimization to estimate the a robot\'s kinematic parameters. This [...]"
HOMEPAGE="http://ros.org/wiki/calibration_estimation"
SRC_URI="https://github.com/ros-gbp/calibration-release/archive/release/melodic/${PN}/0.10.14-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/calibration_msgs
	ros-melodic/python_orocos_kdl
	ros-melodic/rospy
	ros-melodic/rostest
	ros-melodic/sensor_msgs
	ros-melodic/urdfdom_py
	ros-melodic/visualization_msgs
	dev-python/matplotlib
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
