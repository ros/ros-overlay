# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Wrapper of the Allied Vision Technologies \(AVT\) VIMBA Ethernet and Firewi[...]"
HOMEPAGE="http://wiki.ros.org/avt_vimba_ros"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/melodic/${PN}/0.0.12-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/camera_info_manager
	ros-melodic/diagnostic_updater
	ros-melodic/dynamic_reconfigure
	ros-melodic/image_geometry
	ros-melodic/image_proc
	ros-melodic/image_transport
	ros-melodic/message_filters
	ros-melodic/nodelet
	ros-melodic/polled_camera
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/stereo_image_proc
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
