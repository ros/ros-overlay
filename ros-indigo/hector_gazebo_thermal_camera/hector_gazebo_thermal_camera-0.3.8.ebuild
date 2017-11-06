# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="hector_gazebo_thermal_camera provides a gazebo plugin that produces simulat[...]"
HOMEPAGE="http://ros.org/wiki/hector_gazebo_thermal_camera"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/indigo/hector_gazebo_thermal_camera/0.3.8-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/driver_base
	ros-indigo/dynamic_reconfigure
	ros-indigo/gazebo_plugins
	ros-indigo/gazebo_ros
	ros-indigo/image_transport
	ros-indigo/nodelet
	ros-indigo/roscpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	sci-electronics/gazebo
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
