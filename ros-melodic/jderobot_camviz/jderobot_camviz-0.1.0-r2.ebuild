# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="camViz package"
HOMEPAGE="http://wiki.ros.org/beginner_tutorials"
SRC_URI="https://github.com/JdeRobot/CamViz-release/archive/release/melodic/${PN}/0.1.0-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/image_transport
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	test? ( ros-melodic/diagnostic_msgs )
	dev-python/pyyaml
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
