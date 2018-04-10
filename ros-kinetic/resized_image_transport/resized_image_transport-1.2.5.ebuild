# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS nodes to publish resized images."
HOMEPAGE="http://jsk-docs.readthedocs.io/en/latest/jsk_recognition/doc/resized_image_transport"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/${PN}/1.2.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/image_transport
	ros-kinetic/jsk_topic_tools
	ros-kinetic/message_runtime
	ros-kinetic/nodelet
	ros-kinetic/sensor_msgs
	ros-kinetic/std_srvs
	test? ( ros-kinetic/jsk_recognition_utils )
	test? ( ros-kinetic/jsk_tools )
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
