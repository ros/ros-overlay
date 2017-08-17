# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Wrapper of the Allied Vision Technologies \(AVT\) VIMBA Ethernet and Firewi[...]"
HOMEPAGE="http://wiki.ros.org/avt_vimba_ros"
SRC_URI="https://github.com/srv/avt_vimba_camera-release/archive/release/lunar/avt_vimba_camera/0.0.10-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/camera_info_manager
	ros-lunar/diagnostic_updater
	ros-lunar/dynamic_reconfigure
	ros-lunar/image_geometry
	ros-lunar/image_transport
	ros-lunar/message_filters
	ros-lunar/polled_camera
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

