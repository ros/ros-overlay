# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS packages for the Turtlebot3 \(meta package\)"
HOMEPAGE="http://wiki.ros.org/turtlebot3"
SRC_URI="https://github.com/ROBOTIS-GIT-release/${PN}-release/archive/release/melodic/${PN}/1.2.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/turtlebot3_bringup
	ros-melodic/turtlebot3_description
	ros-melodic/turtlebot3_example
	ros-melodic/turtlebot3_navigation
	ros-melodic/turtlebot3_slam
	ros-melodic/turtlebot3_teleop
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
