# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A Gazebo-based simulation environment for the Schunk SVH"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fzi-forschungszentrum-informatik/schunk_svh_ros_driver-release/archive/release/melodic/${PN}/0.1.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-3.0-or-later"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/schunk_svh_description
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
