# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="cv_camera uses OpenCV capture object to capture camera image.\
  This suppo[...]"
HOMEPAGE="http://wiki.ros.org/cv_camera"
SRC_URI="https://github.com/OTL/cv_camera-release/archive/release/indigo/cv_camera/0.1.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_info_manager
	ros-indigo/cv_bridge
	ros-indigo/image_transport
	ros-indigo/nodelet
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslint
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
