# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Calibrate a Robot"
HOMEPAGE="http://ros.org/wiki/robot_calibration"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/0.8.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/camera_calibration_parsers
	ros-humble/control_msgs
	ros-humble/cv_bridge
	ros-humble/geometric_shapes
	ros-humble/geometry_msgs
	ros-humble/kdl_parser
	ros-humble/moveit_msgs
	ros-humble/nav_msgs
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rclcpp_action
	ros-humble/robot_calibration_msgs
	ros-humble/rosbag2_cpp
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	ros-humble/visualization_msgs
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/launch )
	test? ( ros-humble/launch_ros )
	test? ( ros-humble/launch_testing )
	sci-libs/ceres-solver[sparse,lapack]
	dev-cpp/gflags
	sci-libs/orocos_kdl
	dev-libs/protobuf
	sci-libs/suitesparse
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	dev-cpp/eigen
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
