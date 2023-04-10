# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Launch files for RMF demos using the Gazebo simulator"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_demos-release/archive/release/foxy/${PN}/1.3.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/gazebo_plugins
	ros-foxy/joy
	ros-foxy/launch_xml
	ros-foxy/rmf_building_sim_gazebo_plugins
	ros-foxy/rmf_demos
	ros-foxy/rmf_robot_sim_gazebo_plugins
	ros-foxy/teleop_twist_joy
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
