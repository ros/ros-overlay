# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="The swri_transform_util package contains utility functions and classes for
	 "
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/swri_transform_util/0.3.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/diagnostic_msgs
	ros-lunar/dynamic_reconfigure
	ros-lunar/geographic_msgs
	ros-lunar/geometry_msgs
	ros-lunar/gps_common
	ros-lunar/nodelet
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/sensor_msgs
	ros-lunar/swri_math_util
	ros-lunar/swri_roscpp
	ros-lunar/swri_yaml_util
	ros-lunar/tf
	ros-lunar/topic_tools
	dev-libs/boost
	sci-libs/geos
	sci-libs/proj
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

