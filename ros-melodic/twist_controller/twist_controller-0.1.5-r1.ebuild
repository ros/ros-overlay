# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ros_control controller accepting Cartesian twist messages in order to mov[...]"
HOMEPAGE="http://wiki.ros.org/twist_controller"
SRC_URI="https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/melodic/${PN}/0.1.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cartesian_interface
	ros-melodic/controller_interface
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/hardware_interface
	ros-melodic/realtime_tools
	ros-melodic/roscpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
