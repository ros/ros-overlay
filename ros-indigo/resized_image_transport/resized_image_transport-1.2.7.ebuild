# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS nodes to publish resized images."
HOMEPAGE="http://jsk-docs.readthedocs.io/en/latest/jsk_recognition/doc/resized_image_transport"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/indigo/${PN}/1.2.7-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/image_transport
	ros-indigo/jsk_topic_tools
	ros-indigo/message_runtime
	ros-indigo/nodelet
	ros-indigo/sensor_msgs
	ros-indigo/std_srvs
	test? ( ros-indigo/jsk_recognition_utils )
	test? ( ros-indigo/jsk_tools )
	test? ( ros-indigo/rostest )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
