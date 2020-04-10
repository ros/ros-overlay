# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="cob_map_accessibility_analysis receives the map from navigation as well as [...]"
HOMEPAGE="http://ros.org/wiki/cob_map_accessibility_analysis"
SRC_URI="https://github.com/ipa320/cob_navigation-release/archive/release/melodic/${PN}/0.6.10-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_3d_mapping_msgs
	ros-melodic/cv_bridge
	ros-melodic/geometry_msgs
	ros-melodic/image_transport
	ros-melodic/message_filters
	ros-melodic/message_runtime
	ros-melodic/nav_msgs
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/tf
	dev-libs/boost[python]
	media-libs/opencv
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
