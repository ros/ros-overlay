# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A Gazebo-based simulation environment for the Schunk SVH"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SCHUNK-GmbH-Co-KG/schunk_svh_ros_driver-release/archive/release/noetic/${PN}/0.1.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/schunk_svh_description
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
