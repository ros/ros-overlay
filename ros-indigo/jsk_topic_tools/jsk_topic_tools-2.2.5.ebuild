# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="jsk_topic_tools"
HOMEPAGE="http://ros.org/wiki/jsk_topic_tools"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/indigo/jsk_topic_tools/2.2.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/dynamic_reconfigure
	ros-indigo/dynamic_tf_publisher
	ros-indigo/eigen_conversions
	ros-indigo/geometry_msgs
	ros-indigo/image_transport
	ros-indigo/message_runtime
	ros-indigo/nodelet
	ros-indigo/roscpp
	ros-indigo/roslaunch
	ros-indigo/rosnode
	ros-indigo/rostime
	ros-indigo/rostopic
	ros-indigo/sensor_msgs
	ros-indigo/sound_play
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
	ros-indigo/topic_tools
	dev-python/numpy
	media-libs/opencv
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

