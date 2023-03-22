# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Calibrate a Robot"
HOMEPAGE="http://ros.org/wiki/robot_calibration"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.7.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/camera_calibration_parsers
	ros-noetic/control_msgs
	ros-noetic/cv_bridge
	ros-noetic/geometric_shapes
	ros-noetic/geometry_msgs
	ros-noetic/kdl_parser
	ros-noetic/moveit_msgs
	ros-noetic/nav_msgs
	ros-noetic/pluginlib
	ros-noetic/robot_calibration_msgs
	ros-noetic/rosbag
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	ros-noetic/visualization_msgs
	test? ( ros-noetic/code_coverage )
	sci-libs/ceres-solver[sparse,lapack]
	dev-cpp/gflags
	sci-libs/orocos_kdl
	dev-libs/protobuf
	sci-libs/suitesparse
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
