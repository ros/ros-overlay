# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="The rqt_ez_publisher package"
HOMEPAGE="http://wiki.ros.org/rqt_ez_publisher"
SRC_URI="https://github.com/OTL/rqt_ez_publisher-release/archive/release/lunar/rqt_ez_publisher/0.4.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/rospy
	ros-lunar/rqt_gui
	ros-lunar/rqt_gui_py
	ros-lunar/rqt_py_common
	ros-lunar/tf
	ros-lunar/tf2_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/rostest
	dev-python/catkin_pkg
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

