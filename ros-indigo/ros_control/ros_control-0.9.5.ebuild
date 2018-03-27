# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A set of packages that include controller interfaces, controller managers, [...]"
HOMEPAGE="http://ros.org/wiki/ros_control"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/indigo/${PN}/0.9.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/control_toolbox
	ros-indigo/controller_interface
	ros-indigo/controller_manager
	ros-indigo/controller_manager_msgs
	ros-indigo/controller_manager_tests
	ros-indigo/hardware_interface
	ros-indigo/joint_limits_interface
	ros-indigo/realtime_tools
	ros-indigo/transmission_interface
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
