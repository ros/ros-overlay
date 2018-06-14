# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The criutils package"
HOMEPAGE="http://wiki.ros.org/criutils"
SRC_URI="https://github.com/crigroup/${PN}-release/archive/release/indigo/${PN}/0.1.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/baldor
	ros-indigo/cv_bridge
	ros-indigo/geometry_msgs
	ros-indigo/image_geometry
	ros-indigo/resource_retriever
	ros-indigo/rostopic
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/visualization_msgs
	dev-python/numpy
	dev-python/termcolor
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
