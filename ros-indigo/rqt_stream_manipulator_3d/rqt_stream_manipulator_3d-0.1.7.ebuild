# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The rqt_stream_manipulator_3d provides a GUI to the stream_manipulator_3d	  "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/3DVision-Stack/stream-manipulator-3D-release/archive/release/indigo/rqt_stream_manipulator_3d/0.1.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_cpp
	ros-indigo/stream_manipulator_3d
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

