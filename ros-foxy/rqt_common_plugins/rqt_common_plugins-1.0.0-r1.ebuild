# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="rqt_common_plugins metapackage provides ROS backend graphical tools suite t[...]"
HOMEPAGE="http://ros.org/wiki/rqt_common_plugins"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/1.0.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/rqt_action
	ros-foxy/rqt_console
	ros-foxy/rqt_graph
	ros-foxy/rqt_image_view
	ros-foxy/rqt_msg
	ros-foxy/rqt_plot
	ros-foxy/rqt_publisher
	ros-foxy/rqt_py_common
	ros-foxy/rqt_py_console
	ros-foxy/rqt_reconfigure
	ros-foxy/rqt_service_caller
	ros-foxy/rqt_shell
	ros-foxy/rqt_srv
	ros-foxy/rqt_top
	ros-foxy/rqt_topic
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
