# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="The cob_object_detection_visualizer package visualizes the object detection[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_perception_common-release/archive/release/noetic/${PN}/0.6.17-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_object_detection_msgs
	ros-noetic/cv_bridge
	ros-noetic/eigen_conversions
	ros-noetic/image_transport
	ros-noetic/message_filters
	ros-noetic/pcl_ros
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
