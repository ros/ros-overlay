# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The tuw_msgs meta package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tuw-robotics/${PN}-release/archive/release/melodic/${PN}/0.0.13-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/tuw_airskin_msgs
	ros-melodic/tuw_gazebo_msgs
	ros-melodic/tuw_geometry_msgs
	ros-melodic/tuw_multi_robot_msgs
	ros-melodic/tuw_nav_msgs
	ros-melodic/tuw_object_msgs
	ros-melodic/tuw_vehicle_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
