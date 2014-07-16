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


class PanelTransformer extends AbstractTransformer {
  List<String> attributes = new List<String>();

  PanelTransformer():super("pui-panel", """
      <div class="pui-panel ui-widget ui-widget-content ui-corner-all">
        <div class="pui-panel-titlebar ui-widget-header ui-helper-clearfix ui-corner-all"><span class="ui-panel-title #{headerclass}">#{header}</span></div>
        <div class="pui-panel-content ui-widget-content #{contentclass}""><content></content></div>
      </div>
""")
  {}
}