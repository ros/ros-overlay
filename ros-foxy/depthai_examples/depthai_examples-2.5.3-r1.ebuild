# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The depthai_examples package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/luxonis/depthai-ros-release/archive/release/foxy/${PN}/2.5.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/camera_info_manager
	ros-foxy/cv_bridge
	ros-foxy/depth_image_proc
	ros-foxy/depthai
	ros-foxy/depthai_bridge
	ros-foxy/depthai_ros_msgs
	ros-foxy/foxglove_msgs
	ros-foxy/image_transport
	ros-foxy/rclcpp
	ros-foxy/robot_state_publisher
	ros-foxy/ros_environment
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/stereo_msgs
	ros-foxy/vision_msgs
	ros-foxy/xacro
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
