part of beyondAngular;

/**
 * (C) 2014 Stephan Rauh http://www.beyondjava.net
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */


class GridTransformer extends AbstractTransformer {
  List<String> attributes = new List<String>();

  GridTransformer():super("pui-grid", """
<!-- non bootstrap version -->
<div style="display:table">
  <div style="display:table-row; height:100%;">
    <eachcontent>
      <div style="display:table-cell" class="pui-label-cell">
        <label></label>
      </div>
      <div style="display:table-cell" class="pui-widget-cell">
      </div>
    </eachcontent>
  </div>
</div>
""")
  {}
}