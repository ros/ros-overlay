# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides templates and examples for integrating the WAM-V model into gazebo[...]"
HOMEPAGE="http://wiki.ros.org/wamv_gazebo"
SRC_URI="https://github.com/ros-gbp/vrx-release/archive/release/kinetic/${PN}/1.2.6-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/gazebo_plugins
	ros-kinetic/hector_gazebo_plugins
	ros-kinetic/robot_localization
	ros-kinetic/usv_gazebo_plugins
	ros-kinetic/velodyne_gazebo_plugins
	ros-kinetic/wamv_description
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
