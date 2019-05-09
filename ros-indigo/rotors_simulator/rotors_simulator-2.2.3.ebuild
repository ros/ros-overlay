# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="RotorS is a MAV gazebo simulator."
HOMEPAGE="https://github.com/ethz-asl/rotors_simulator"
SRC_URI="https://github.com/ethz-asl/${PN}-release/archive/release/indigo/${PN}/2.2.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="ASL 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rotors_comm
	ros-indigo/rotors_control
	ros-indigo/rotors_description
	ros-indigo/rotors_evaluation
	ros-indigo/rotors_gazebo
	ros-indigo/rotors_gazebo_plugins
	ros-indigo/rotors_hil_interface
	ros-indigo/rotors_joy_interface
	ros-indigo/rqt_rotors
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
