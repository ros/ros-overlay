# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_publisher-release/archive/release/lunar/rqt_publisher/0.4.8-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/python_qt_binding
	ros-lunar/qt_gui_py_common
	ros-lunar/roslib
	ros-lunar/rosmsg
	ros-lunar/rqt_gui
	ros-lunar/rqt_gui_py
	ros-lunar/rqt_py_common
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

