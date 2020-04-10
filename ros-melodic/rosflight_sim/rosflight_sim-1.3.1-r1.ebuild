# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Software-in-the-loop \(SIL\) simulator for the ROSflight firmware"
HOMEPAGE="http://rosflight.org"
SRC_URI="https://github.com/rosflight/rosflight-release/archive/release/melodic/${PN}/1.3.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/gazebo_plugins
	ros-melodic/gazebo_ros
	ros-melodic/geometry_msgs
	ros-melodic/roscpp
	ros-melodic/rosflight_firmware
	ros-melodic/rosflight_msgs
	dev-cpp/eigen
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
