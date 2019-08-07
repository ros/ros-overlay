# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Kinematics plugin for Fetch robot, generated through IKFast"
HOMEPAGE="http://docs.fetchrobotics.com/manipulation.html"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/${PN}/0.8.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/eigen_conversions
	ros-melodic/moveit_core
	ros-melodic/pluginlib
	ros-melodic/roscpp
	virtual/lapack
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/tf2_eigen
	ros-melodic/tf2_kdl
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
