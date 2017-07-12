# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Wrapper of the Allied Vision Technologies AVT VIMBA Ethernet and Firewire SDK"
HOMEPAGE="http://wiki.ros.org/avt_vimba_ros"
SRC_URI="https://github.com/srv/avt_vimba_camera-release/archive/release/indigo/avt_vimba_camera/0.0.9-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_info_manager
	ros-indigo/diagnostic_updater
	ros-indigo/driver_base
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_geometry
	ros-indigo/image_transport
	ros-indigo/polled_camera
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

