# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Calibrate a Robot"
HOMEPAGE="http://ros.org/wiki/robot_calibration"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.6.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/camera_calibration_parsers
	ros-melodic/control_msgs
	ros-melodic/cv_bridge
	ros-melodic/geometry_msgs
	ros-melodic/kdl_parser
	ros-melodic/moveit_msgs
	ros-melodic/nav_msgs
	ros-melodic/orocos_kdl
	ros-melodic/pluginlib
	ros-melodic/robot_calibration_msgs
	ros-melodic/rosbag
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_ros
	ros-melodic/visualization_msgs
	test? ( ros-melodic/code_coverage )
	sci-libs/ceres-solver[sparse,lapack]
	dev-libs/protobuf
	sci-libs/suitesparse
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-cpp/gflags
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
