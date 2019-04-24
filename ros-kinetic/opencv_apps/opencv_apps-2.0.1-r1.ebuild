# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>opencv_apps provides various nodes that run internally OpenCV\'s functio[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-perception/${PN}-release/archive/release/kinetic/${PN}/2.0.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/image_transport
	ros-kinetic/message_runtime
	ros-kinetic/nodelet
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	test? ( ros-kinetic/compressed_image_transport )
	test? ( ros-kinetic/image_proc )
	test? ( ros-kinetic/image_view )
	test? ( ros-kinetic/rosbag )
	test? ( ros-kinetic/roslaunch )
	test? ( ros-kinetic/rosservice )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rostopic )
	test? ( ros-kinetic/topic_tools )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
