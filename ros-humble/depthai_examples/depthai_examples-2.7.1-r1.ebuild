# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="The depthai_examples package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/luxonis/depthai-ros-release/archive/release/humble/${PN}/2.7.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/camera_info_manager
	ros-humble/cv_bridge
	ros-humble/depth_image_proc
	ros-humble/depthai
	ros-humble/depthai_bridge
	ros-humble/depthai_descriptions
	ros-humble/depthai_ros_msgs
	ros-humble/foxglove_msgs
	ros-humble/image_transport
	ros-humble/rclcpp
	ros-humble/robot_state_publisher
	ros-humble/ros_environment
	ros-humble/rviz_imu_plugin
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/stereo_msgs
	ros-humble/vision_msgs
	ros-humble/xacro
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
