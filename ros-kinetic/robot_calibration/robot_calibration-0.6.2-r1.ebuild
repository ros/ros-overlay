# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Calibrate a Robot"
HOMEPAGE="http://ros.org/wiki/robot_calibration"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/0.6.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/camera_calibration_parsers
	ros-kinetic/control_msgs
	ros-kinetic/cv_bridge
	ros-kinetic/geometry_msgs
	ros-kinetic/kdl_parser
	ros-kinetic/moveit_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/orocos_kdl
	ros-kinetic/pluginlib
	ros-kinetic/robot_calibration_msgs
	ros-kinetic/rosbag
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/tf2_geometry_msgs
	ros-kinetic/tf2_ros
	ros-kinetic/visualization_msgs
	test? ( ros-kinetic/code_coverage )
	sci-libs/ceres-solver[sparse,lapack]
	dev-libs/protobuf
	sci-libs/suitesparse
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-cpp/gflags
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
