# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The turtlebot3_navigation provides roslaunch scripts for starting the navig[...]"
HOMEPAGE="http://wiki.ros.org/turtlebot3_navigation"
SRC_URI="https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/noetic/${PN}/1.2.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/amcl
	ros-noetic/map_server
	ros-noetic/move_base
	ros-noetic/turtlebot3_bringup
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
