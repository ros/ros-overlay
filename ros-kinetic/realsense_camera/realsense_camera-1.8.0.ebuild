# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="RealSense Camera package allowing access to Intel 3D cameras and advanced module"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/intel-ros/realsense-release/archive/release/kinetic/realsense_camera/1.8.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/camera_info_manager
	ros-kinetic/cv_bridge
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/image_transport
	ros-kinetic/librealsense
	ros-kinetic/message_generation
	ros-kinetic/message_runtime
	ros-kinetic/nodelet
	ros-kinetic/pcl_ros
	ros-kinetic/rgbd_launch
	ros-kinetic/roscpp
	ros-kinetic/rostest
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

