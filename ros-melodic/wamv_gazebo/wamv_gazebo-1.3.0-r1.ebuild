# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides templates and examples for integrating the WAM-V model into gazebo[...]"
HOMEPAGE="http://wiki.ros.org/wamv_gazebo"
SRC_URI="https://github.com/ros-gbp/vrx-release/archive/release/melodic/${PN}/1.3.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/gazebo_plugins
	ros-melodic/hector_gazebo_plugins
	ros-melodic/robot_localization
	ros-melodic/usv_gazebo_plugins
	ros-melodic/velodyne_gazebo_plugins
	ros-melodic/wamv_description
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
