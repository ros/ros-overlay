# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pr2_calibration_controllers package contains the controllers\
	 used[...]"
HOMEPAGE="http://ros.org/wiki/pr2_calibration_controllers"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/lunar/${PN}/1.10.15-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/pluginlib
	ros-lunar/pr2_controller_interface
	ros-lunar/pr2_mechanism_controllers
	ros-lunar/pr2_mechanism_model
	ros-lunar/realtime_tools
	ros-lunar/robot_mechanism_controllers
	ros-lunar/roscpp
	ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
