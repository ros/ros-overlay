# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Clearpath Husky installation and integration package"
HOMEPAGE="http://ros.org/wiki/husky_bringup"
SRC_URI="https://github.com/clearpath-gbp/husky-release/archive/release/foxy/${PN}/1.0.7-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/husky_base
	ros-foxy/husky_control
	ros-foxy/husky_description
	ros-foxy/microstrain_inertial_driver
	ros-foxy/robot_upstart
	ros-foxy/urg_node
	ros-foxy/velodyne_driver
	ros-foxy/velodyne_pointcloud
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
