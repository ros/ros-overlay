# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS nodes to publish resized images."
HOMEPAGE="http://jsk-docs.readthedocs.io/en/latest/jsk_recognition/doc/resized_image_transport"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/${PN}/1.2.10-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/image_transport
	ros-melodic/jsk_topic_tools
	ros-melodic/message_runtime
	ros-melodic/nodelet
	ros-melodic/sensor_msgs
	ros-melodic/std_srvs
	test? ( ros-melodic/jsk_recognition_utils )
	test? ( ros-melodic/jsk_tools )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
