# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Stdr version of turtlebot simulation. Convenient to test 2D-navigation related s'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_simulator-release/archive/release/kinetic/turtlebot_stdr/2.2.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/navigation
	ros-kinetic/stdr_gui
	ros-kinetic/stdr_resources
	ros-kinetic/stdr_robot
	ros-kinetic/stdr_server
	ros-kinetic/turtlebot_bringup
	ros-kinetic/yocs_velocity_smoother
	ros-kinetic/yocs_virtual_sensor
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

