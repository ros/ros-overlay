# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The volta_simulation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/botsync-gbp/${PN}-release/archive/release/melodic/${PN}/1.1.0-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/controller_manager
	ros-melodic/gazebo_plugins
	ros-melodic/gazebo_ros
	ros-melodic/gazebo_ros_control
	ros-melodic/hector_gazebo_plugins
	ros-melodic/rostopic
	ros-melodic/volta_control
	ros-melodic/volta_description
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
