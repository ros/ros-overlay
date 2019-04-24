# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Sample launch files to start a simulated LAUV in Gazebo."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/${PN}-release/archive/release/kinetic/${PN}/0.1.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/lauv_control
	ros-kinetic/lauv_description
	ros-kinetic/rosbag
	ros-kinetic/uuv_control_utils
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
