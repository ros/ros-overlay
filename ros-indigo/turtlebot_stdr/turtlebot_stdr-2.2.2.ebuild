# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Stdr version of turtlebot simulation Convenient to test 2Dnavigation related s"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_simulator-release/archive/release/indigo/turtlebot_stdr/2.2.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/navigation
	ros-indigo/stdr_gui
	ros-indigo/stdr_resources
	ros-indigo/stdr_robot
	ros-indigo/stdr_server
	ros-indigo/turtlebot_bringup
	ros-indigo/yocs_velocity_smoother
	ros-indigo/yocs_virtual_sensor
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

