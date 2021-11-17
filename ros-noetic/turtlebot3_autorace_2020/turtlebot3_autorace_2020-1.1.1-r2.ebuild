# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="TurtleBot3 AutoRace 2020 ROS 1 packages \(meta package\)"
HOMEPAGE="http://wiki.ros.org/turtlebot3_autorace"
SRC_URI="https://github.com/ROBOTIS-GIT-release/${PN}_release/archive/release/noetic/${PN}/1.1.1-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/turtlebot3_autorace_camera
	ros-noetic/turtlebot3_autorace_core
	ros-noetic/turtlebot3_autorace_detect
	ros-noetic/turtlebot3_autorace_driving
	ros-noetic/turtlebot3_autorace_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
