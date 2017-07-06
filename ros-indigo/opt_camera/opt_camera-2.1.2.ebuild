# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="opt_camera"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/indigo/opt_camera/2.1.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_calibration_parsers
	ros-indigo/compressed_image_transport
	ros-indigo/cv_bridge
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_proc
	ros-indigo/rospack
	ros-indigo/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslang
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

