# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="jsk_topic_tools"
HOMEPAGE="http://ros.org/wiki/jsk_topic_tools"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/noetic/${PN}/2.2.11-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/diagnostic_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/dynamic_reconfigure
	ros-noetic/dynamic_tf_publisher
	ros-noetic/eigen_conversions
	ros-noetic/geometry_msgs
	ros-noetic/image_transport
	ros-noetic/message_runtime
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/roslaunch
	ros-noetic/rosnode
	ros-noetic/rostime
	ros-noetic/rostopic
	ros-noetic/sensor_msgs
	ros-noetic/sound_play
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf
	ros-noetic/topic_tools
	test? ( ros-noetic/roscpp_tutorials )
	test? ( ros-noetic/roslint )
	dev-python/numpy
	media-libs/opencv[python]
	sci-libs/scipy
	dev-python/numpy
	media-libs/opencv[python]
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
