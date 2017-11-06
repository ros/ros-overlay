# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Controllers for Jackal"
HOMEPAGE="http://wiki.ros.org/jackal_control"
SRC_URI="https://github.com/clearpath-gbp/jackal-release/archive/release/indigo/jackal_control/0.5.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager
	ros-indigo/diff_drive_controller
	ros-indigo/interactive_marker_twist_server
	ros-indigo/joint_state_controller
	ros-indigo/joy
	ros-indigo/robot_localization
	ros-indigo/teleop_twist_joy
	ros-indigo/topic_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
