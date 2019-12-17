# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The criutils package"
HOMEPAGE="http://wiki.ros.org/criutils"
SRC_URI="https://github.com/crigroup/${PN}-release/archive/release/melodic/${PN}/0.1.3-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/baldor
	ros-melodic/cv_bridge
	ros-melodic/geometry_msgs
	ros-melodic/image_geometry
	ros-melodic/resource_retriever
	ros-melodic/rostopic
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/visualization_msgs
	dev-python/numpy
	dev-python/termcolor
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
