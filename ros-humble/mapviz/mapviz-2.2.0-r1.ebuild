# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="mapviz"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.2.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/cv_bridge
	ros-humble/geometry_msgs
	ros-humble/image_transport
	ros-humble/launch_xml
	ros-humble/mapviz_interfaces
	ros-humble/marti_common_msgs
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rqt_gui
	ros-humble/rqt_gui_cpp
	ros-humble/std_srvs
	ros-humble/swri_math_util
	ros-humble/swri_transform_util
	ros-humble/tf2
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	media-libs/freeglut
	media-libs/glew
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
	x11-libs/libXi
	x11-libs/libXmu
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	dev-qt/qtopengl:5
	virtual/pkgconfig
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
