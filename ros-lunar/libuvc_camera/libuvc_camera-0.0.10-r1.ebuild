# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="USB Video Class camera driver"
HOMEPAGE="http://ros.org/wiki/libuvc_camera"
SRC_URI="https://github.com/ros-drivers-gbp/libuvc_ros-release/archive/release/lunar/${PN}/0.0.10-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/camera_info_manager
	ros-lunar/dynamic_reconfigure
	ros-lunar/image_transport
	ros-lunar/libuvc
	ros-lunar/nodelet
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
