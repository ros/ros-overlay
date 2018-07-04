# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Gazebo plugin to provide simulated data from Velodyne laser scanners."
HOMEPAGE="http://wiki.ros.org/velodyne_gazebo_plugins"
SRC_URI="https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/lunar/${PN}/1.0.7-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/gazebo_ros
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/tf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
