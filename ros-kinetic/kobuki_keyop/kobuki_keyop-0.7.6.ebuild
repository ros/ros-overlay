# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Keyboard teleoperation for Kobuki: relays commands from a keyboard to Kobuki."
HOMEPAGE="http://ros.org/wiki/kobuki_keyop"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/${PN}/0.7.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ecl_exceptions
	ros-kinetic/ecl_threads
	ros-kinetic/ecl_time
	ros-kinetic/geometry_msgs
	ros-kinetic/kobuki_msgs
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/yocs_cmd_vel_mux
	ros-kinetic/yocs_velocity_smoother
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
