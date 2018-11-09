# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="jsk_topic_tools"
HOMEPAGE="http://ros.org/wiki/jsk_topic_tools"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/melodic/${PN}/2.2.10-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/dynamic_reconfigure
	ros-melodic/dynamic_tf_publisher
	ros-melodic/eigen_conversions
	ros-melodic/geometry_msgs
	ros-melodic/image_transport
	ros-melodic/message_runtime
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/roslaunch
	ros-melodic/rosnode
	ros-melodic/rostime
	ros-melodic/rostopic
	ros-melodic/sensor_msgs
	ros-melodic/sound_play
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	ros-melodic/topic_tools
	test? ( ros-melodic/roscpp_tutorials )
	test? ( ros-melodic/roslint )
	dev-python/numpy
	media-libs/opencv[python]
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
