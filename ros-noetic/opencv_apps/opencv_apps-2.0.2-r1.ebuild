# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="<p>opencv_apps provides various nodes that run internally OpenCV\'s functio[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-perception/${PN}-release/archive/release/noetic/${PN}/2.0.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/dynamic_reconfigure
	ros-noetic/image_transport
	ros-noetic/image_view
	ros-noetic/message_runtime
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	test? ( ros-noetic/compressed_image_transport )
	test? ( ros-noetic/image_proc )
	test? ( ros-noetic/rosbag )
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rosservice )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rostopic )
	test? ( ros-noetic/topic_tools )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	sys-devel/gcc
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
