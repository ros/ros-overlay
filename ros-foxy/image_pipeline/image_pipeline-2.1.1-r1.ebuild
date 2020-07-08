# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="image_pipeline fills the gap between getting raw images from a camera drive[...]"
HOMEPAGE="http://www.ros.org/wiki/image_pipeline"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/2.1.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/camera_calibration
	ros-foxy/depth_image_proc
	ros-foxy/image_proc
	ros-foxy/image_publisher
	ros-foxy/image_rotate
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
