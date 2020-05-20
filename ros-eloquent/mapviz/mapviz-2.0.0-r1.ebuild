# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="mapviz"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/eloquent/${PN}/2.0.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/cv_bridge
	ros-eloquent/geometry_msgs
	ros-eloquent/image_transport
	ros-eloquent/mapviz_interfaces
	ros-eloquent/marti_common_msgs
	ros-eloquent/pluginlib
	ros-eloquent/rclcpp
	ros-eloquent/rqt_gui
	ros-eloquent/rqt_gui_cpp
	ros-eloquent/std_srvs
	ros-eloquent/swri_math_util
	ros-eloquent/swri_transform_util
	ros-eloquent/tf2
	ros-eloquent/tf2_geometry_msgs
	ros-eloquent/tf2_ros
	media-libs/freeglut
	media-libs/glew
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
	x11-libs/libXi
	x11-libs/libXmu
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	dev-qt/qtopengl:5
	virtual/pkgconfig
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
