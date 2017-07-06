# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Capture is a set of tools to capture objects in 3D and perform odometry'"
HOMEPAGE="http://wg-perception.github.io/capture"
SRC_URI="https://github.com/ros-gbp/object_recognition_capture-release/archive/release/indigo/object_recognition_capture/0.3.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ecto
	ros-indigo/ecto_image_pipeline
	ros-indigo/ecto_opencv
	ros-indigo/ecto_openni
	ros-indigo/ecto_ros
	ros-indigo/object_recognition_core
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

