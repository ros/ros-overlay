# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch files and configuration files needed to run the calibration pipeline[...]"
HOMEPAGE="http://www.ros.org/wiki/pr2_calibration_launch"
SRC_URI="https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/melodic/${PN}/1.0.11-3.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/calibration_estimation
	ros-melodic/calibration_launch
	ros-melodic/calibration_msgs
	ros-melodic/geometry_msgs
	ros-melodic/image_cb_detector
	ros-melodic/image_view
	ros-melodic/kdl_parser
	ros-melodic/laser_cb_detector
	ros-melodic/laser_joint_processor
	ros-melodic/laser_joint_projector
	ros-melodic/message_runtime
	ros-melodic/monocam_settler
	ros-melodic/pr2_dense_laser_snapshotter
	ros-melodic/pr2_teleop
	ros-melodic/python_orocos_kdl
	ros-melodic/robot_mechanism_controllers
	ros-melodic/rospy
	ros-melodic/rostest
	ros-melodic/sensor_msgs
	ros-melodic/stereo_image_proc
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
