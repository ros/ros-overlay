# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="basic 3d reconstruction of an object from aligned Kinect data"
HOMEPAGE="http://wg-perception.github.io/reconstruction/"
SRC_URI="https://github.com/ros-gbp/object_recognition_reconstruction-release/archive/release/kinetic/object_recognition_reconstruction/0.3.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ecto
	ros-kinetic/ecto_image_pipeline
	ros-kinetic/ecto_pcl
	ros-kinetic/object_recognition_core
	ros-kinetic/opencv_candidate
	media-gfx/meshlab
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	ros-kinetic/sensor_msgs
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

