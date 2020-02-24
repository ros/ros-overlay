# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS drivers \(interfaces\) and nodes for Ainstein radars."
HOMEPAGE="https://wiki.ros.org/ainstein_radar_drivers"
SRC_URI="https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/${PN}/3.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ainstein_radar_msgs
	ros-melodic/can_msgs
	ros-melodic/nodelet
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/socketcan_bridge
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
