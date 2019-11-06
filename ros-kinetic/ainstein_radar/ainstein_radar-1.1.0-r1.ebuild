# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS support for Ainstein radar sensors."
HOMEPAGE="https://wiki.ros.org/ainstein_radar"
SRC_URI="https://github.com/AinsteinAI/${PN}-release/archive/release/kinetic/${PN}/1.1.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ainstein_radar_drivers
	ros-kinetic/ainstein_radar_filters
	ros-kinetic/ainstein_radar_gazebo_plugins
	ros-kinetic/ainstein_radar_msgs
	ros-kinetic/ainstein_radar_rviz_plugins
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
