# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Meta package for FSRobo-R"
HOMEPAGE="http://wiki.ros.org/fsrobo_r"
SRC_URI="https://github.com/FUJISOFT-Robotics/${PN}-release/archive/release/kinetic/${PN}/0.7.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/fsrobo_r_bringup
	ros-kinetic/fsrobo_r_description
	ros-kinetic/fsrobo_r_driver
	ros-kinetic/fsrobo_r_moveit_config
	ros-kinetic/fsrobo_r_msgs
	ros-kinetic/fsrobo_r_trajectory_filters
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
