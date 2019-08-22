# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS packages for the Turtlebot3 \(meta package\)"
HOMEPAGE="http://wiki.ros.org/turtlebot3"
SRC_URI="https://github.com/ROBOTIS-GIT-release/${PN}-release/archive/release/kinetic/${PN}/1.2.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/turtlebot3_bringup
	ros-kinetic/turtlebot3_description
	ros-kinetic/turtlebot3_example
	ros-kinetic/turtlebot3_navigation
	ros-kinetic/turtlebot3_slam
	ros-kinetic/turtlebot3_teleop
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
