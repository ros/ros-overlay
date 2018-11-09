# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The find_object_2d package"
HOMEPAGE="http://find-object.googlecode.com"
SRC_URI="https://github.com/introlab/${PN}-release/archive/release/melodic/${PN}/0.6.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/image_transport
	ros-melodic/message_filters
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	dev-qt/qtcore:5
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/genmsg
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
