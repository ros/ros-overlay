# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Uses opencv to find checkboards and compute their 6D poses with respect to [...]"
HOMEPAGE="https://jsk-docs.readthedocs.io/projects/jsk_recognition/en/latest/checkerboard_detector"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/${PN}/1.2.15-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/dynamic_reconfigure
	ros-noetic/dynamic_tf_publisher
	ros-noetic/eigen_conversions
	ros-noetic/image_geometry
	ros-noetic/image_publisher
	ros-noetic/jsk_recognition_msgs
	ros-noetic/message_filters
	ros-noetic/posedetection_msgs
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/tf
	ros-noetic/tf2
	test? ( ros-noetic/jsk_tools )
	test? ( ros-noetic/jsk_topic_tools )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
