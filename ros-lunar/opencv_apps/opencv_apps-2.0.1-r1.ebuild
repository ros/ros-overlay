# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>opencv_apps provides various nodes that run internally OpenCV\'s functio[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-perception/${PN}-release/archive/release/lunar/${PN}/2.0.1-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/dynamic_reconfigure
	ros-lunar/image_transport
	ros-lunar/message_runtime
	ros-lunar/nodelet
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	test? ( ros-lunar/compressed_image_transport )
	test? ( ros-lunar/image_proc )
	test? ( ros-lunar/image_view )
	test? ( ros-lunar/rosbag )
	test? ( ros-lunar/roslaunch )
	test? ( ros-lunar/rosservice )
	test? ( ros-lunar/rostest )
	test? ( ros-lunar/rostopic )
	test? ( ros-lunar/topic_tools )
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
