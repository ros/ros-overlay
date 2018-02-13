# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The Jackal simulation base that combines all components."
HOMEPAGE="http://ros.org/wiki/multi_jackal_base"
SRC_URI="https://github.com/NicksSimulationsROS/multi_jackal-release/archive/release/kinetic/${PN}/0.0.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/gazebo_ros
	ros-kinetic/interactive_marker_twist_server
	ros-kinetic/multi_jackal_control
	ros-kinetic/multi_jackal_description
	ros-kinetic/multi_jackal_nav
	ros-kinetic/robot_localization
	ros-kinetic/robot_state_publisher
	ros-kinetic/tf
	ros-kinetic/urdf
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
