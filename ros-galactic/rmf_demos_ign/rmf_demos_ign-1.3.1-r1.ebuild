# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Launch files for RMF demos using the Ignition simulator"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_demos-release/archive/release/galactic/${PN}/1.3.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/launch_xml
	ros-galactic/rmf_building_sim_ignition_plugins
	ros-galactic/rmf_demos
	ros-galactic/rmf_robot_sim_ignition_plugins
	ros-galactic/ros_ign_bridge
	ros-galactic/teleop_twist_keyboard
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
