//! [metric/bolts] Carriage bolts; ISO 8677; DIN 603.
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

    \amu_define group_name  (ISO 8677)
    \amu_define group_brief ([metric/bolts] Carriage bolts; ISO 8677; DIN 603.)

  \amu_include (include/amu/pgid_path_pstem_pg.amu)
  \amu_text parent (${parent}_Metric_Bolts)
*******************************************************************************/

//----------------------------------------------------------------------------//

/***************************************************************************//**
  \amu_include (include/amu/group_in_parent_start.amu)
  \amu_include (include/amu/includes_required.amu)

  \details

    \amu_define output_scad     (false)
    \amu_define output_console  (false)

    \amu_define title           (Carriage bolts)
    \amu_define notes_table     (l1_ref for [L<=125]; l2_ref for[L>125 & L<=200]; l3_ref for [L>200])

    \amu_include (include/amu/scope_table.amu)

    \note The measurements in the table above are shown with:
          \c length_unit_base="mm". These measurements will
          convert when the base units are changed. See \ref units_length
          for more information on setting the base units.

    | References:     |
    |:----------------|
    | ISO 8677        |
    | DIN 603         |
    | [fasteners.eu]  |

    [fasteners.eu]: https://www.fasteners.eu/standards/ISO/8677/
*******************************************************************************/

//! <map> ISO 8677 fastener data table columns map.
//! \hideinitializer
dtc_fastener_metric_bolts_iso_8677 =
[
  ["ns", "nominal size"],
  ["tp", "thread pitch"],
  ["o_max", "square width across flats"],
  ["o_min", "square width across flats"],
  ["c_min", "square width across corners"],
  ["p_max", "square depth"],
  ["p_min", "square depth"],
  ["a_max", "head diameter"],
  ["a_min", "head diameter"],
  ["h_max", "head height"],
  ["h_min", "head height"],
  ["l1_ref", "thread length"],
  ["l2_ref", "thread length"],
  ["l3_ref", "thread length"]
];

//! \<table> ISO 8677 fastener data table rows.
//! \hideinitializer
dtr_fastener_metric_bolts_iso_8677 =
[
  [ "M5",l_mm(0.80),l_mm( 5.48),l_mm( 4.52),l_mm( 5.9),l_mm( 4.1),l_mm( 2.9),l_mm( 13),l_mm(11.9),l_mm( 3.1),l_mm( 2.5),l_mm( 16),      undef,      undef],
  [ "M6",l_mm(1.00),l_mm( 6.48),l_mm( 5.52),l_mm( 7.2),l_mm( 4.6),l_mm( 3.4),l_mm( 16),l_mm(14.9),l_mm( 3.6),l_mm( 3.0),l_mm( 18),      undef,      undef],
  [ "M8",l_mm(1.25),l_mm( 8.58),l_mm( 7.42),l_mm( 9.6),l_mm( 5.6),l_mm( 4.4),l_mm( 20),l_mm(18.7),l_mm( 4.8),l_mm( 4.0),l_mm( 22),l_mm(   28),      undef],
  ["M10",l_mm(1.50),l_mm(10.58),l_mm( 9.42),l_mm(12.2),l_mm( 6.6),l_mm( 5.4),l_mm( 24),l_mm(22.7),l_mm( 5.8),l_mm( 5.0),l_mm( 26),l_mm(   32),      undef],
  ["M12",l_mm(1.75),l_mm(12.70),l_mm(11.30),l_mm(14.7),l_mm( 8.8),l_mm( 7.2),l_mm( 30),l_mm(28.7),l_mm( 6.8),l_mm( 6.0),l_mm( 30),l_mm(   36),      undef],
  ["M16",l_mm(2.00),l_mm(16.70),l_mm(15.30),l_mm(19.9),l_mm(12.9),l_mm(11.1),l_mm( 38),l_mm(36.4),l_mm( 8.9),l_mm( 8.0),l_mm( 38),l_mm(   44),l_mm(   57)],
  ["M20",l_mm(2.50),l_mm(20.84),l_mm(19.16),l_mm(24.9),l_mm(15.9),l_mm(14.1),l_mm( 46),l_mm(44.4),l_mm(10.9),l_mm(10.0),l_mm( 46),l_mm(   52),l_mm(   65)]
];

//! @}
//! @}

//----------------------------------------------------------------------------//
// openscad-amu auxiliary scripts
//----------------------------------------------------------------------------//

/*
BEGIN_SCOPE table;
  BEGIN_OPENSCAD;
    include <omdl-base.scad>;
    include <database/component/fastener/iso_8677.scad>;

    // temporary override for table presentation.
    // function l_mm(v) = round_s(length(v,"mm"), 4);

    length_unit_base = "mm";

    n  = true;                // number
    hi = true;                // include heading id
    ht = true;                // include heading description

    tr = dtr_fastener_metric_bolts_iso_8677;
    tc = dtc_fastener_metric_bolts_iso_8677;

    table_write( tr, tc, number=n, heading_id=hi, heading_text=ht );

    // end_include
  END_OPENSCAD;

  BEGIN_MFSCRIPT;
    include --path "${INCLUDE_PATH}" {var_init,var_gen_term}.mfs;
    include --path "${INCLUDE_PATH}" scr_make_mf.mfs;
  END_MFSCRIPT;
END_SCOPE;
*/

//----------------------------------------------------------------------------//
// end of file
//----------------------------------------------------------------------------//
