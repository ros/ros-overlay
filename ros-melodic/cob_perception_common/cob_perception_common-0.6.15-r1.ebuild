# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This stack provides utilities commonly needed for a variety of computer vis[...]"
HOMEPAGE="http://wiki.ros.org/cob_perception_common"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/melodic/${PN}/0.6.15-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_3d_mapping_msgs
	ros-melodic/cob_cam3d_throttle
	ros-melodic/cob_image_flip
	ros-melodic/cob_object_detection_msgs
	ros-melodic/cob_object_detection_visualizer
	ros-melodic/cob_perception_msgs
	ros-melodic/cob_vision_utils
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
