# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS messages packages for the ROBOTIS RH-P12-RN \(meta package\)"
HOMEPAGE="http://wiki.ros.org/rh_p12_rn"
SRC_URI="https://github.com/ROBOTIS-GIT-release/RH-P12-RN-release/archive/release/kinetic/${PN}/0.1.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rh_p12_rn_base_module
	ros-kinetic/rh_p12_rn_base_module_msgs
	ros-kinetic/rh_p12_rn_description
	ros-kinetic/rh_p12_rn_gazebo
	ros-kinetic/rh_p12_rn_gui
	ros-kinetic/rh_p12_rn_manager
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
