# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Launch files and configuration files needed to run the calibration pipeline[...]"
HOMEPAGE="http://www.ros.org/wiki/pr2_calibration_launch"
SRC_URI="https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/indigo/${PN}/1.0.9-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/calibration_estimation
	ros-indigo/calibration_launch
	ros-indigo/calibration_msgs
	ros-indigo/geometry_msgs
	ros-indigo/image_cb_detector
	ros-indigo/image_view
	ros-indigo/kdl_parser
	ros-indigo/laser_cb_detector
	ros-indigo/laser_joint_processor
	ros-indigo/laser_joint_projector
	ros-indigo/message_runtime
	ros-indigo/monocam_settler
	ros-indigo/pr2_dense_laser_snapshotter
	ros-indigo/pr2_teleop
	ros-indigo/python_orocos_kdl
	ros-indigo/robot_mechanism_controllers
	ros-indigo/rospy
	ros-indigo/rostest
	ros-indigo/sensor_msgs
	ros-indigo/stereo_image_proc
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
