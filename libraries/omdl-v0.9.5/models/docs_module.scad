//! Module: Black-box models of commodity components.
/***************************************************************************//**
  \file
  \author Roy Allen Sutton
  \date   2024

  \copyright

    This file is part of [omdl] (https://github.com/royasutton/omdl),
    an OpenSCAD mechanical design library.

    The \em omdl is free software; you can redistribute it and/or modify
    it under the terms of the [GNU Lesser General Public License]
    (http://www.gnu.org/licenses/lgpl.html) as published by the Free
    Software Foundation; either version 2.1 of the License, or (at
    your option) any later version.

    The \em omdl is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with the \em omdl; if not, write to the Free Software
    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
    02110-1301, USA; or see <http://www.gnu.org/licenses/>.

  \details

    \amu_define group_name  (Models)
    \amu_define group_brief (Black-box models of commodity components.)

  \amu_include (include/amu/pgid_pparent_path_n.amu)
*******************************************************************************/

//----------------------------------------------------------------------------//
// group.
//----------------------------------------------------------------------------//

/***************************************************************************//**
  \amu_include (include/amu/group.amu)
*******************************************************************************/

//----------------------------------------------------------------------------//

/***************************************************************************//**
  \addtogroup \amu_eval(${group})

  \details

    This library considers a model to be any design element that is
    fabricated elsewhere, such as commodity screws, linear rails,
    motors, lights, circuit boards, etc. A model is typically either a
    component that is a not a mechanical part or is an exterior
    "black-box" descriptions of a mechanical part with internal detail
    insufficient for manufacturing.
*******************************************************************************/

//----------------------------------------------------------------------------//
// end of file
//----------------------------------------------------------------------------//
