# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS packages for the Turtlebot3 \(meta package\)"
HOMEPAGE="http://wiki.ros.org/turtlebot3"
SRC_URI="https://github.com/ROBOTIS-GIT-release/${PN}-release/archive/release/noetic/${PN}/1.2.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/turtlebot3_bringup
	ros-noetic/turtlebot3_description
	ros-noetic/turtlebot3_example
	ros-noetic/turtlebot3_navigation
	ros-noetic/turtlebot3_slam
	ros-noetic/turtlebot3_teleop
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
