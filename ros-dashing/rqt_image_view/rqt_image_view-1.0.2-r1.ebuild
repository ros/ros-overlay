# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="rqt_image_view provides a GUI plugin for displaying images using image_tran[...]"
HOMEPAGE="http://wiki.ros.org/rqt_image_view"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/1.0.2-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/cv_bridge
	ros-dashing/geometry_msgs
	ros-dashing/image_transport
	ros-dashing/qt_gui_cpp
	ros-dashing/rclcpp
	ros-dashing/rqt_gui
	ros-dashing/rqt_gui_cpp
	ros-dashing/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
