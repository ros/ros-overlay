# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Clearpath Grizzly controller configurations"
HOMEPAGE="https://github.com/g/grizzly/issues"
SRC_URI="https://github.com/clearpath-gbp/grizzly-release/archive/release/kinetic/${PN}/0.4.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/diff_drive_controller
	ros-kinetic/grizzly_description
	ros-kinetic/interactive_marker_twist_server
	ros-kinetic/joint_state_controller
	ros-kinetic/robot_localization
	ros-kinetic/robot_state_publisher
	ros-kinetic/rostopic
	ros-kinetic/twist_mux
	test? ( ros-kinetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
