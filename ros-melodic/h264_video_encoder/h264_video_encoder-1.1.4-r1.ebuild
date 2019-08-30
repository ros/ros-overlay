# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS1 H264 encoder node"
HOMEPAGE="http://wiki.ros.org/h264_video_encoder"
SRC_URI="https://github.com/aws-gbp/${PN}-release/archive/release/melodic/${PN}/1.1.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/aws_ros1_common
	ros-melodic/h264_encoder_core
	ros-melodic/image_transport
	ros-melodic/image_transport_plugins
	ros-melodic/kinesis_video_msgs
	ros-melodic/message_runtime
	ros-melodic/sensor_msgs
	test? ( ros-melodic/rostest )
	test? ( dev-cpp/gtest )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
