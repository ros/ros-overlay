# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="cob_map_accessibility_analysis receives the map from navigation as well as [...]"
HOMEPAGE="http://ros.org/wiki/cob_map_accessibility_analysis"
SRC_URI="https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/${PN}/0.6.9-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_3d_mapping_msgs
	ros-kinetic/cv_bridge
	ros-kinetic/geometry_msgs
	ros-kinetic/image_transport
	ros-kinetic/message_filters
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/pcl_ros
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	dev-libs/boost[python]
	media-libs/opencv
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
