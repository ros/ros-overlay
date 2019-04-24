# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>opencv_apps provides various nodes that run internally OpenCV\'s functio[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-perception/${PN}-release/archive/release/melodic/${PN}/2.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/dynamic_reconfigure
	ros-melodic/image_transport
	ros-melodic/message_runtime
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	test? ( ros-melodic/compressed_image_transport )
	test? ( ros-melodic/image_proc )
	test? ( ros-melodic/image_view )
	test? ( ros-melodic/rosbag )
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rosservice )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rostopic )
	test? ( ros-melodic/topic_tools )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
