# Copyright 2018 Open Source Robotics Foundation, Inc.
# Distributed under the terms of the BSD License

inherit distutils-r1

# @ECLASS: ament-cmake.eclass
# @MAINTAINER:
# hunter@openrobotics.org
# @AUTHOR:
# Hunter L. Allen <hunter@openrobotics.org>
# @BLURB: Template eclass for ament based ROS2 packages.
# @DESCRIPTION:
# Provides function for building ROS2 cmake packages on Gentoo.

ament-python_src_unpack() {
	default
	mv *${P}* ${P}
}

ament-python_python_install() {
	distutils-r1_python_install --prefix="${EPREFIX%/}/${ROS_PREFIX%/}"
}

EXPORT_FUNCTIONS src_unpack python_install
