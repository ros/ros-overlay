# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Launch files and configuration files needed to run the calibration pipeline[...]"
HOMEPAGE="http://www.ros.org/wiki/pr2_calibration_launch"
SRC_URI="https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/kinetic/${PN}/1.0.11-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/calibration_estimation
	ros-kinetic/calibration_launch
	ros-kinetic/calibration_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/image_cb_detector
	ros-kinetic/image_view
	ros-kinetic/kdl_parser
	ros-kinetic/laser_cb_detector
	ros-kinetic/laser_joint_processor
	ros-kinetic/laser_joint_projector
	ros-kinetic/message_runtime
	ros-kinetic/monocam_settler
	ros-kinetic/pr2_dense_laser_snapshotter
	ros-kinetic/pr2_teleop
	ros-kinetic/python_orocos_kdl
	ros-kinetic/robot_mechanism_controllers
	ros-kinetic/rospy
	ros-kinetic/rostest
	ros-kinetic/sensor_msgs
	ros-kinetic/stereo_image_proc
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
