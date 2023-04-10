# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Metapackage of software for Leo Rover common to the robot and ROS desktop"
HOMEPAGE="http://wiki.ros.org/leo"
SRC_URI="https://github.com/ros2-gbp/${PN}_common-release/archive/release/humble/${PN}/1.1.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/leo_description
	ros-humble/leo_msgs
	ros-humble/leo_teleop
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
