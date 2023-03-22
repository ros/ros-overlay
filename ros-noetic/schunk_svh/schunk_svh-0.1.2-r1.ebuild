# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS1 specific packages for the Schunk SVH five finger hand"
HOMEPAGE="https://github.com/fzi-forschungszentrum-informatik/schunk_svh_ros_driver"
SRC_URI="https://github.com/fzi-forschungszentrum-informatik/${PN}_ros_driver-release/archive/release/noetic/${PN}/0.1.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-3.0-or-later"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/schunk_svh_description
	ros-noetic/schunk_svh_driver
	ros-noetic/schunk_svh_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
