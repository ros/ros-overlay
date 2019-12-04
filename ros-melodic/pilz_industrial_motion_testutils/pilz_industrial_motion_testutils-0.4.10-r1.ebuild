# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Helper scripts and functionality to test industrial motion generation"
HOMEPAGE="https://wiki.ros.org/pilz_industrial_motion"
SRC_URI="https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/${PN}/0.4.10-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/moveit_commander
	ros-melodic/moveit_core
	ros-melodic/moveit_msgs
	ros-melodic/pilz_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/eigen_conversions
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
