# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The swri_transform_util package contains utility functions and classes for\[...]"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/${PN}/2.8.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/diagnostic_msgs
	ros-lunar/geographic_msgs
	ros-lunar/geometry_msgs
	ros-lunar/gps_common
	ros-lunar/nodelet
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/sensor_msgs
	ros-lunar/swri_math_util
	ros-lunar/swri_nodelet
	ros-lunar/swri_roscpp
	ros-lunar/swri_yaml_util
	ros-lunar/tf
	ros-lunar/topic_tools
	test? ( ros-lunar/rostest )
	dev-libs/boost[python]
	sci-libs/geos
	sci-libs/proj
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
