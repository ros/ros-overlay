# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS driver for fadecandy LED controllers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/iron-ox/fadecandy_ros-release/archive/release/melodic/${PN}/0.1.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_updater
	ros-melodic/fadecandy_msgs
	ros-melodic/rospy
	dev-python/pyusb
	dev-python/pyusb
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
