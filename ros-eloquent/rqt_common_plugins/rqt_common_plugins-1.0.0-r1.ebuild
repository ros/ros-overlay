# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="rqt_common_plugins metapackage provides ROS backend graphical tools suite t[...]"
HOMEPAGE="http://ros.org/wiki/rqt_common_plugins"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/1.0.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/rqt_action
	ros-eloquent/rqt_console
	ros-eloquent/rqt_graph
	ros-eloquent/rqt_image_view
	ros-eloquent/rqt_msg
	ros-eloquent/rqt_plot
	ros-eloquent/rqt_publisher
	ros-eloquent/rqt_py_common
	ros-eloquent/rqt_py_console
	ros-eloquent/rqt_reconfigure
	ros-eloquent/rqt_service_caller
	ros-eloquent/rqt_shell
	ros-eloquent/rqt_srv
	ros-eloquent/rqt_top
	ros-eloquent/rqt_topic
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
