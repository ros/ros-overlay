# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Kinesis Video Streams producer node"
HOMEPAGE="http://wiki.ros.org/kinesis_video_streamer"
SRC_URI="https://github.com/aws-gbp/${PN}-release/archive/release/kinetic/${PN}/2.0.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/aws_common
	ros-kinetic/aws_ros1_common
	ros-kinetic/image_transport
	ros-kinetic/kinesis_manager
	ros-kinetic/kinesis_video_msgs
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rostopic )
	test? ( dev-cpp/gtest )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
