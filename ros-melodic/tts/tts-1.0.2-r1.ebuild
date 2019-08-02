# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package enabling a robot to speak with a human voice by providing a Text-To[...]"
HOMEPAGE="http://wiki.ros.org/tts"
SRC_URI="https://github.com/aws-gbp/${PN}-release/archive/release/melodic/${PN}/1.0.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib_msgs
	ros-melodic/message_runtime
	ros-melodic/rospy
	ros-melodic/sound_play
	ros-melodic/std_msgs
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	dev-python/boto3
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/rostest
	ros-melodic/rosunit
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
