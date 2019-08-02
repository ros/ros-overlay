# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package enabling a robot to speak with a human voice by providing a Text-To[...]"
HOMEPAGE="http://wiki.ros.org/tts"
SRC_URI="https://github.com/aws-gbp/${PN}-release/archive/release/kinetic/${PN}/1.0.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/actionlib_msgs
	ros-kinetic/message_runtime
	ros-kinetic/rospy
	ros-kinetic/sound_play
	ros-kinetic/std_msgs
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rosunit )
	dev-python/boto3
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/rostest
	ros-kinetic/rosunit
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
