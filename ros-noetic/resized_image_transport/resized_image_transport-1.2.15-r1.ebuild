# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS nodes to publish resized images."
HOMEPAGE="https://jsk-docs.readthedocs.io/projects/jsk_recognition/en/latest/resized_image_transport"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/${PN}/1.2.15-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/image_transport
	ros-noetic/jsk_topic_tools
	ros-noetic/message_runtime
	ros-noetic/nodelet
	ros-noetic/sensor_msgs
	ros-noetic/std_srvs
	test? ( ros-noetic/jsk_recognition_utils )
	test? ( ros-noetic/jsk_tools )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
