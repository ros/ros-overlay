# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="RealSense Camera package allowing access to Intel 3D cameras and advanced m[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/intel-ros/realsense-release/archive/release/indigo/realsense_camera/1.8.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_info_manager
	ros-indigo/cv_bridge
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_transport
	ros-indigo/librealsense
	ros-indigo/message_generation
	ros-indigo/message_runtime
	ros-indigo/nodelet
	ros-indigo/pcl_ros
	ros-indigo/rgbd_launch
	ros-indigo/roscpp
	ros-indigo/rostest
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslint
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
