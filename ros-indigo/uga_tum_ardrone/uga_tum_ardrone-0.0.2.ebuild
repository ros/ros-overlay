# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The uga_tum_ardrone package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/thinclab/uga_tum_ardrone-release/archive/release/indigo/uga_tum_ardrone/0.0.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ardrone_autonomy
	ros-indigo/cv_bridge
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	sci-libs/atlas
	media-libs/freeglut
	virtual/blas
	virtual/lapack
	dev-qt/qtcore:4
	virtual/opengl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

