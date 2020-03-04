# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS support for Ainstein radar sensors."
HOMEPAGE="https://wiki.ros.org/ainstein_radar"
SRC_URI="https://github.com/AinsteinAI/${PN}-release/archive/release/melodic/${PN}/2.0.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ainstein_radar_drivers
	ros-melodic/ainstein_radar_filters
	ros-melodic/ainstein_radar_gazebo_plugins
	ros-melodic/ainstein_radar_msgs
	ros-melodic/ainstein_radar_rviz_plugins
	ros-melodic/ainstein_radar_tools
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
