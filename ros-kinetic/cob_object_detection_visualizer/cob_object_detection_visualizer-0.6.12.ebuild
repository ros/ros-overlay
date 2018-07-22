# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_object_detection_visualizer package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/${PN}/0.6.12-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_object_detection_msgs
	ros-kinetic/cv_bridge
	ros-kinetic/eigen_conversions
	ros-kinetic/image_transport
	ros-kinetic/message_filters
	ros-kinetic/pcl_ros
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/visualization_msgs
	dev-libs/boost
	media-libs/opencv
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
