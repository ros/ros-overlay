# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="rqt_common_plugins metapackage provides ROS backend graphical tools suite t[...]"
HOMEPAGE="http://ros.org/wiki/rqt_common_plugins"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/1.2.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/rqt_action
	ros-humble/rqt_bag
	ros-humble/rqt_bag_plugins
	ros-humble/rqt_console
	ros-humble/rqt_graph
	ros-humble/rqt_image_view
	ros-humble/rqt_msg
	ros-humble/rqt_plot
	ros-humble/rqt_publisher
	ros-humble/rqt_py_common
	ros-humble/rqt_py_console
	ros-humble/rqt_reconfigure
	ros-humble/rqt_service_caller
	ros-humble/rqt_shell
	ros-humble/rqt_srv
	ros-humble/rqt_topic
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
