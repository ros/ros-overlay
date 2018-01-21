# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The cob_model_identifier package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/indigo/${PN}/0.6.16-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/geometry_msgs
	ros-indigo/kdl_parser
	ros-indigo/orocos_kdl
	ros-indigo/roscpp
	ros-indigo/roslint
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
