# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Gazebo simulation for NEXTAGE Open"
HOMEPAGE="http://wiki.ros.org/nextage_gazebo"
SRC_URI="https://github.com/tork-a/rtmros_nextage-release/archive/release/indigo/${PN}/0.7.16-3.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_ros
	ros-indigo/gazebo_ros_control
	ros-indigo/nextage_description
	ros-indigo/nextage_moveit_config
	ros-indigo/ros_controllers
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
