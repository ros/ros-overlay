# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This stack provides utilities commonly needed for a variety of computer vis[...]"
HOMEPAGE="http://wiki.ros.org/cob_perception_common"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/noetic/${PN}/0.6.17-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_3d_mapping_msgs
	ros-noetic/cob_cam3d_throttle
	ros-noetic/cob_image_flip
	ros-noetic/cob_object_detection_msgs
	ros-noetic/cob_object_detection_visualizer
	ros-noetic/cob_perception_msgs
	ros-noetic/cob_vision_utils
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
