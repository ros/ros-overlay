# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack provides utilities commonly needed for a variety of computer vision t"
HOMEPAGE="http://wiki.ros.org/cob_perception_common"
SRC_URI="https://github.com/ipa320/cob_perception_common-release/archive/release/indigo/cob_perception_common/0.6.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_3d_mapping_msgs
	ros-indigo/cob_cam3d_throttle
	ros-indigo/cob_image_flip
	ros-indigo/cob_object_detection_msgs
	ros-indigo/cob_object_detection_visualizer
	ros-indigo/cob_perception_msgs
	ros-indigo/cob_vision_utils
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

