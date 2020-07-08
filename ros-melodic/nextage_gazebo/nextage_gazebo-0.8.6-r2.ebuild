# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Gazebo simulation for NEXTAGE Open"
HOMEPAGE="http://wiki.ros.org/nextage_gazebo"
SRC_URI="https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/${PN}/0.8.6-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/gazebo_plugins
	ros-melodic/gazebo_ros
	ros-melodic/gazebo_ros_control
	ros-melodic/nextage_description
	ros-melodic/nextage_moveit_config
	ros-melodic/ros_controllers
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
