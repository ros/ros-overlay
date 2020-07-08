# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="carViz package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/JdeRobot/carViz-release/archive/release/melodic/${PN}/0.1.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/image_transport
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
