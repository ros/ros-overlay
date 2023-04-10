# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Visualization launchers and helpers for Dingo."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/dingo_desktop-release/archive/release/melodic/${PN}/0.1.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/dingo_description
	ros-melodic/joint_state_publisher_gui
	ros-melodic/rqt_console
	ros-melodic/rqt_gui
	ros-melodic/rqt_robot_monitor
	ros-melodic/rviz
	test? ( ros-melodic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
