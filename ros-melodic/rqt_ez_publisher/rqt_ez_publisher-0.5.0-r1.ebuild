# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rqt_ez_publisher package"
HOMEPAGE="http://wiki.ros.org/rqt_ez_publisher"
SRC_URI="https://github.com/OTL/${PN}-release/archive/release/melodic/${PN}/0.5.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/rospy
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_py
	ros-melodic/rqt_py_common
	ros-melodic/tf
	ros-melodic/tf2_msgs
	test? ( ros-melodic/sensor_msgs )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
