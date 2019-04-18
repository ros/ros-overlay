# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Create a Pandas data frame from a ros bag file."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/eurogroep/${PN}-release/archive/release/melodic/${PN}/0.5.3-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rosbag
	ros-melodic/roslib
	ros-melodic/rospy_message_converter
	dev-python/matplotlib
	dev-python/numpy
	dev-python/pandas
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
