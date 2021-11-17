# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The swri_transform_util package contains utility functions and classes for\[...]"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/${PN}/2.14.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/diagnostic_msgs
	ros-noetic/genpy
	ros-noetic/geographic_msgs
	ros-noetic/geometry_msgs
	ros-noetic/gps_common
	ros-noetic/marti_nav_msgs
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/swri_math_util
	ros-noetic/swri_nodelet
	ros-noetic/swri_roscpp
	ros-noetic/swri_yaml_util
	ros-noetic/tf
	ros-noetic/topic_tools
	test? ( ros-noetic/rostest )
	dev-libs/boost[python]
	sci-libs/geos
	sci-libs/proj
	dev-python/numpy
	dev-python/numpy
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	virtual/pkgconfig
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
