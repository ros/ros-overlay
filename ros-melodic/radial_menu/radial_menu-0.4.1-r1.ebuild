# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The radial_menu package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yoshito-n-students/${PN}_ros-release/archive/release/melodic/${PN}/0.4.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/radial_menu_backend
	ros-melodic/radial_menu_model
	ros-melodic/radial_menu_msgs
	ros-melodic/radial_menu_rviz
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
