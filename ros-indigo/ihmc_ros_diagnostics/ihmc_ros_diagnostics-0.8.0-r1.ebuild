# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The ihmc_ros_diagnostics package provides a collection of tools for analysing th'"
HOMEPAGE="https://github.com/ihmcrobotics/ihmc_ros_diagnostics"
SRC_URI="https://github.com/ihmcrobotics/ihmc_ros_diagnostics-release/archive/release/indigo/ihmc_ros_diagnostics/0.8.0-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/ihmc_msgs
	ros-indigo/ihmc_ros_common
	ros-indigo/rospy
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

