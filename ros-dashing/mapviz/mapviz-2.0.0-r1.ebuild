# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="mapviz"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/dashing/${PN}/2.0.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/cv_bridge
	ros-dashing/geometry_msgs
	ros-dashing/image_transport
	ros-dashing/mapviz_interfaces
	ros-dashing/marti_common_msgs
	ros-dashing/pluginlib
	ros-dashing/rclcpp
	ros-dashing/rqt_gui
	ros-dashing/rqt_gui_cpp
	ros-dashing/std_srvs
	ros-dashing/swri_math_util
	ros-dashing/swri_transform_util
	ros-dashing/tf2
	ros-dashing/tf2_geometry_msgs
	ros-dashing/tf2_ros
	media-libs/freeglut
	media-libs/glew
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
	x11-libs/libXi
	x11-libs/libXmu
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	dev-qt/qtopengl:5
	virtual/pkgconfig
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
