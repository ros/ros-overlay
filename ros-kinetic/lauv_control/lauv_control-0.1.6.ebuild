# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Collection of configuration and launch files to start controllers for the LAUV."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/lauv_gazebo-release/archive/release/kinetic/${PN}/0.1.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/lauv_description
	ros-kinetic/uuv_auv_control_allocator
	ros-kinetic/uuv_control_utils
	ros-kinetic/uuv_teleop
	ros-kinetic/uuv_trajectory_control
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
