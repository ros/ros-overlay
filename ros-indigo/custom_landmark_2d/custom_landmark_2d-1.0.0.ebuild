# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Simple object recognition library for 2D images, with the additional functi[...]"
HOMEPAGE="http://wiki.ros.org/custom_landmark_2d"
SRC_URI="https://github.com/MatthewLiuRelease/${PN}-release/archive/release/indigo/${PN}/1.0.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/image_geometry
	ros-indigo/image_transport
	ros-indigo/pcl_ros
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
