# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="rqt_common_plugins metapackage provides ROS backend graphical tools suite t[...]"
HOMEPAGE="http://ros.org/wiki/rqt_common_plugins"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/1.0.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/rqt_action
	ros-dashing/rqt_console
	ros-dashing/rqt_graph
	ros-dashing/rqt_image_view
	ros-dashing/rqt_msg
	ros-dashing/rqt_plot
	ros-dashing/rqt_publisher
	ros-dashing/rqt_py_common
	ros-dashing/rqt_py_console
	ros-dashing/rqt_reconfigure
	ros-dashing/rqt_service_caller
	ros-dashing/rqt_shell
	ros-dashing/rqt_srv
	ros-dashing/rqt_top
	ros-dashing/rqt_topic
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
