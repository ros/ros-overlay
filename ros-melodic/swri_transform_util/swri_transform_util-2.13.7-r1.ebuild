# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The swri_transform_util package contains utility functions and classes for\[...]"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/${PN}/2.13.7-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/diagnostic_msgs
	ros-melodic/geographic_msgs
	ros-melodic/geometry_msgs
	ros-melodic/gps_common
	ros-melodic/marti_nav_msgs
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/swri_math_util
	ros-melodic/swri_nodelet
	ros-melodic/swri_roscpp
	ros-melodic/swri_yaml_util
	ros-melodic/tf
	ros-melodic/topic_tools
	test? ( ros-melodic/rostest )
	dev-libs/boost[python]
	sci-libs/geos
	sci-libs/proj
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	virtual/pkgconfig
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
