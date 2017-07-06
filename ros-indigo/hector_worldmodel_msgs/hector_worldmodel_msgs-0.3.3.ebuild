# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'hector_worldmodel_msgs is a message package to comes with the hector_worldmodel '"
HOMEPAGE="http://ros.org/wiki/hector_worldmodel_msgs"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_worldmodel-release/archive/release/indigo/hector_worldmodel_msgs/0.3.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

