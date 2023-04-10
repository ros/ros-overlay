# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rtmros_nextage package is a ROS interface for <a href=\"http://nextage.[...]"
HOMEPAGE="http://ros.org/wiki/rtmros_nextage"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/melodic/${PN}/0.8.6-3.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/nextage_description
	ros-melodic/nextage_gazebo
	ros-melodic/nextage_ik_plugin
	ros-melodic/nextage_moveit_config
	ros-melodic/nextage_ros_bridge
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
