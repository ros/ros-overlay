# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The jsk_apc2016_common package"
HOMEPAGE="http://wiki.ros.org/jsk_apc2016_common"
SRC_URI="https://github.com/tork-a/jsk_apc-release/archive/release/indigo/jsk_apc2016_common/4.1.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/jsk_data
	ros-indigo/jsk_gui_msgs
	ros-indigo/jsk_recognition_msgs
	ros-indigo/message_filters
	ros-indigo/message_runtime
	ros-indigo/pcl_ros
	ros-indigo/qt_gui_py_common
	ros-indigo/resource_retriever
	ros-indigo/roscpp
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_py
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf2
	ros-indigo/tf2_eigen
	ros-indigo/tf2_ros
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
