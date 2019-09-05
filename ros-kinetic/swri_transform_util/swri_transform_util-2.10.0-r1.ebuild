# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The swri_transform_util package contains utility functions and classes for\[...]"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/${PN}/2.10.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/diagnostic_msgs
	ros-kinetic/geographic_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/gps_common
	ros-kinetic/nodelet
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/swri_math_util
	ros-kinetic/swri_nodelet
	ros-kinetic/swri_roscpp
	ros-kinetic/swri_yaml_util
	ros-kinetic/tf
	ros-kinetic/topic_tools
	test? ( ros-kinetic/rostest )
	dev-libs/boost[python]
	sci-libs/geos
	sci-libs/proj
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
