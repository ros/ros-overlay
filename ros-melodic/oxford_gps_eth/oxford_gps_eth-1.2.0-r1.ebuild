# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Ethernet interface to OxTS GPS receivers \(NCOM packet structure\)"
HOMEPAGE="http://wiki.ros.org/oxford_gps_eth"
SRC_URI="https://github.com/DataspeedInc-release/${PN}-release/archive/release/melodic/${PN}/1.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/gps_common
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/roslaunch
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
