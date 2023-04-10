# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Packages for interfacing ROS2 with OpenCV, a library of programming functio[...]"
HOMEPAGE="http://www.ros.org/wiki/vision_opencv"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/3.0.7-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/cv_bridge
	ros-foxy/image_geometry
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
